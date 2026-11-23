# 06 · 场景化动效编排体系与现代 Web 动效工程规范（v2.1 核心模块）

> 依据来源：**Design Spells 15 个真实案例帧级拆解**、**Curated 实测站点**、**Material Design 3 Motion Tokens**、**Apple Human Interface Guidelines (HIG) Motion**、**Motion (`motion.dev`) Spring & FLIP 架构** 以及 **MDN / web.dev Baseline 现代原生动效规范**。

---

## 一、为什么 AI 写的前端动效总有一股“廉价模板味”？

AI 生成代码在动效上最常见的 **7 大病灶**：
1. **全场无脑 `transition: all 0.3s ease`**：把布局属性（`width`/`height`/`top`/`left`）和颜色一起过渡，导致主线程重排掉帧且节奏拖泥带水。
2. **所有卡片 `hover:scale-105 + shadow-2xl + neon glow`**：不论是严肃财务表格还是导航按钮，悬停就整卡放大发紫光，毫无克制。
3. **动效风格与产品场景错配**：在高频 B2B 控制台里搞慢速弹跳动画阻断用户输入，或者在多智能体派对/互动社区里用死板无趣的瞬时切换。
4. **进出场对称（Enter = Exit）**：弹窗出现用 `300ms ease`，关闭也用 `300ms ease`。真实物理与 M3 规范要求**“来时从容减速、去时利落加速（退出时长 ≈ 进入时长的 60%~70%）”**。
5. **用生硬弹窗代替空间连续性（缺乏 Morph）**：本可在原按钮/原卡片位置平滑变形（如 Things take time 的原地删除确认、One Year 的胶囊变搜索栏），却粗暴弹出全屏遮罩打断心流。
6. **位移幅度过大（`translateY(40px~80px)`）**：元素入场像从屏幕底下飞上来一样夸张；高级 UI 的微位移极其克制（通常 `2px ~ 12px`，整块揭示不超过 `24px`）。
7. **无视 `prefers-reduced-motion` 与触屏 `@media (hover: none)`**：对前庭敏感用户造成眩晕，或在移动端点击后留下卡住的 `:hover` 伪类。

---

## 二、六大产品场景 → 动效人格路由（`[data-motion]`）

与 `00-scene-style-router.md` 的六大场景流派严格一一对应，在 `<html>` 上通过 `data-motion` 切换全站动效物理参数（详见 `tokens/motion.css`）：

| 场景流派 | `data-motion` 属性值 | 布局/Morph 曲线与时长 | 交互反馈曲线与时长 | 允许的过冲（Overshoot） | 典型动效配方与标杆案例 |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **流派 A：社交 / 多智能体派对 / 游戏化社区**（如 AgentParty） | `data-motion="playful"` | `--ease-spring-soft` (`450ms`) | `--ease-spring-bouncy` (`501ms`) | **10% ~ 13%**（鲜活Q弹） | 反应按钮弹性粒子（Instagram Super Like）、Agent 思考态呼吸点（`.m-breathe`）、房间/席位共享元素切换 |
| **流派 B：B2B SaaS / 金融 / 数据控制台**（如 Mercury / Linear） | `data-motion="precise"` | `--ease-spring-snappy` (`315ms`) | `--ease-out-quick` (`90ms`) | **0%**（临界阻尼，零回弹） | 1px 描边提亮+箭头微移 `2px`（`.m-hover-line`）、5×5 点阵离线重连律动（Linear）、非阻断角落浮层（`.m-pop`）、数字滚动对齐（`.m-ticker`） |
| **流派 C：AI 空间画布 / 节点工作流**（如 Endless / Subframe） | `data-motion="spatial"` | `--ease-spring-soft` (`450ms`) | `--ease-spring-snappy` (`315ms`) | **< 1%**（物理惯性，准确定位） | 节点拖拽跟手、共享容器原地展开（`.card-expand` + View Transition）、拖拽投放区边界唤醒（Dropbox） |
| **流派 D：开发者工具 / 硬核基础设施**（如 exe.dev / Vercel） | `data-motion="technical"` | `--ease-standard` (`180ms`) | `linear` (`90ms`) | **0%**（终端级利落） | 极快状态切换、侧栏图标与容器同构伸缩（Granola）、Logo 边界内受控彩蛋（Vercel） |
| **流派 E：品牌官网 / 文化出版 / 作品集**（如 Stripe Press / Santal） | `data-motion="editorial"` | `--ease-enter` (`700ms`) | `--ease-out-quick` (`160ms`) | **0%**（长减速从容叙事） | 滚动驱动渐进揭示（`.m-reveal` + `animation-timeline: view()`）、跨页视图过渡（`@view-transition`）、光标跟随柔光（Luma） |
| **流派 F：消费级效率 / 生活方式应用**（如 One Year / Things take time） | `data-motion="gentle"` | `--ease-spring-soft` (`450ms`) | `--ease-spring-soft` (`240ms`) | **0.8%**（温润轻柔） | 胶囊原地 Morph 搜索栏（One Year）、删除按钮原地拉伸二次确认（Things take time）、底部导航背后滚出返回键（Shop） |

---

## 三、权威时间、曲线与物理弹簧定量表

### 1. 五档时长阶梯（Duration Scale）
- `--dur-instant: 90ms` — 按压下沉（`:active`）、复选框勾选、开关着色
- `--dur-fast: 160ms` — 悬停描边/背景提亮、Tooltip、焦点环
- `--dur-base: 240ms` — 下拉菜单、Popover 浮层、Tab 指示条、数字翻牌
- `--dur-moderate: 320ms` — 抽屉侧栏、卡片原地展开、列表增删重排
- `--dur-slow: 450ms`（工具上限）/ `700ms`（品牌叙事页上限） — 整块视图切换
- **进出非对称铁律**：`Exit Duration = Enter Duration × 0.7`（离开永远比进入快 30%）。

### 2. Material 3 三元组贝塞尔曲线（Cubic-Bezier Trio）
- **在屏变形 / 布局移动（Emphasized）**：`cubic-bezier(0.2, 0, 0, 1)` — 起步快、长尾极其顺滑
- **入场减速（Emphasized Decelerate）**：`cubic-bezier(0.05, 0.7, 0.1, 1)` — 迅速切入视野、轻柔落定
- **退场加速（Emphasized Accelerate）**：`cubic-bezier(0.3, 0, 0.8, 0.15)` — 干脆利落收起，绝不拖沓
- **通用高频 UI 快出慢收**：`cubic-bezier(0.22, 1, 0.36, 1)`

### 3. 物理阻尼弹簧生成的原生 CSS `linear()` 曲线
传统 `cubic-bezier` 无法表达真实胡克定律弹簧的能量衰减与多点振荡。`tokens/motion.css` 内置了由二阶阻尼弹簧微分方程（$\omega_0 = \sqrt{k/m}, \zeta = c / (2\sqrt{km})$）精确采样生成的 3 条原生 `linear()` 曲线（Chrome 113+ / Firefox 112+ / Safari 17.2+ Baseline 全支持），且**将其 CSS 时长严格锁定为物理收敛时间（Settle Time）**：
1. **`--ease-spring-snappy`**（$k=520, c=45, \zeta=0.99$，过冲 `0%`，收敛时长 `--dur-spring-snappy: 315ms`）：适合 B 端控制台、高频 Tab 滑块与布局对齐。
2. **`--ease-spring-soft`**（$k=240, c=26, \zeta=0.84$，微过冲 `0.8%`，收敛时长 `--dur-spring-soft: 450ms`）：适合卡片展开、共享元素 Morph、温柔工具转场。
3. **`--ease-spring-bouncy`**（$k=340, c=20, \zeta=0.54$，弹性过冲 `13.1%`，收敛时长 `--dur-spring-bouncy: 501ms`）：专为流派 A（派对互动、点赞反应、角色入场）打造。

> 若项目使用 React **Motion (`motion.dev`)**，可直接采用等价物理参数：
> - Snappy: `transition={{ type: "spring", visualDuration: 0.28, bounce: 0 }}`
> - Soft: `transition={{ type: "spring", visualDuration: 0.38, bounce: 0.1, mass: "auto" }}`
> - Bouncy (Playful): `transition={{ type: "spring", visualDuration: 0.42, bounce: 0.32 }}`

---

## 四、现代 Web 原生动效四大黄金范式（零框架负担）

### 范式 1：共享元素原地 Morph（View Transitions API）
无需引入庞大动画库，即可复刻 One Year（胶囊→搜索栏）、Things take time（原地二次确认）与丝滑分段滑块：
```css
/* 给切换前后共享身份的元素赋同名 view-transition-name */
.seg button[aria-pressed="true"] {
  view-transition-name: seg-indicator;
}
::view-transition-group(seg-indicator) {
  animation-duration: var(--motion-dur-layout);
  animation-timing-function: var(--motion-ease-layout);
}
```
```js
const morph = (mutateDom) =>
  document.startViewTransition && !matchMedia('(prefers-reduced-motion: reduce)').matches
    ? document.startViewTransition(mutateDom)
    : mutateDom();
```

### 范式 2：原生浮层/弹窗进出场（`@starting-style` + `allow-discrete`）
彻底告别为了给 `display: none` 加过渡而写 `setTimeout` 状态机（Baseline 全主流浏览器支持）：
```css
.m-pop {
  opacity: 1;
  transform: translateY(0) scale(1);
  transition: opacity var(--dur-base) var(--ease-enter),
              transform var(--dur-base) var(--ease-enter),
              overlay var(--dur-base) allow-discrete,
              display var(--dur-base) allow-discrete;
}
@starting-style {
  .m-pop:popover-open, .m-pop[open] {
    opacity: 0;
    transform: translateY(6px) scale(0.98);
  }
}
.m-pop:not(:popover-open):not([open]) {
  opacity: 0;
  transform: translateY(-3px) scale(0.98);
  transition-duration: calc(var(--dur-base) * 0.7);
  transition-timing-function: var(--ease-exit);
}
```

### 范式 3：光标跟随局部聚光（复刻 Luma `Spell 260`）
不缩放卡片、不触发重排，仅通过 CSS 变量更新径向光斑圆心：
```css
.m-spotlight {
  position: relative;
  background:
    radial-gradient(180px circle at var(--mx, 50%) var(--my, 50%),
      color-mix(in oklab, var(--accent) 18%, transparent),
      transparent 70%),
    var(--bg-surface);
}
```
```js
el.addEventListener('pointermove', (e) => {
  const r = el.getBoundingClientRect();
  el.style.setProperty('--mx', `${e.clientX - r.left}px`);
  el.style.setProperty('--my', `${e.clientY - r.top}px`);
});
```

### 范式 4：渐进增强的滚动揭示（Scroll-Driven Animations）
不使用阻塞滚动线程的 JS `scroll` 监听，注意必须声明非零 `1ms` 时长以兼容 Firefox：
```css
@supports (animation-timeline: view()) {
  .m-reveal {
    animation: m-rise 1ms linear both;
    animation-timeline: view();
    animation-range: entry 0% entry 60%;
  }
}
```

---

## 五、性能与无障碍硬性红线（Apple HIG & Web Vitals）

1. **只合成、不重排**：高频过渡只允许动画化 `transform`、`opacity`、`filter`、`clip-path` 或颜色/阴影；**严禁直接 `transition: all` 或对 `width`/`height`/`margin`/`top`/`left` 做连续 CSS 过渡**（尺寸变化一律走 View Transition 或 FLIP `transform`）。
2. **Stagger 封顶定理**：列表交错入场步进 `--stagger-step: 40ms`，最多对前 **6 项** 递增延迟（总附加延迟 $\le 240\text{ms}$），第 7 项起同拍出现，严禁让用户干等列表排着队慢吞吞刷出来。
3. **无障碍降级（Keep Meaning, Drop Travel）**：在 `@media (prefers-reduced-motion: reduce)` 下，**不是把所有视觉反馈粗暴砍成无反应的死界面**，而是取消位移（`transform: none`）、缩放、视差与无限呼吸动画，保留 `120ms` 的柔和透明度交叉淡入淡出（cross-fade）以传达状态改变。
