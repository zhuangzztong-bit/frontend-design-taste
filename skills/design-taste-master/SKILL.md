---
name: design-taste-master
description: 构建高审美、无“AI味”前端界面的核心工作流。基于 10 个顶级设计网站（Mobbin、Refero、Siteinspire、Lapa Ninja、Curated、Design Spells、Fonts In Use、Typewolf、Happy Hues、Realtime Colors）的真实案例库与可直接复用的 CSS/Tailwind 配色排版 Token，适用于设计或编写 SaaS 控制台、Web 应用、品牌官网、落地页、作品集与交互组件。
---

# Design Taste Master（反“AI味”前端设计工作流）

当你接到任何前端页面、组件、仪表盘或官网的设计与编码任务时，**禁止凭直觉直接写通用渐变卡片**。严格按以下 6 步工作流执行，并按场景查阅本技能附带的真实案例参考库与 Token 预设。

---

## Step 1：判定产品类型与核心参考维度
先明确当前任务属于哪类场景，并按需读取对应参考文档（不要跳过）：
- **SaaS 产品 / 控制台 / 表格 / 引导流** → 必读 [01-product-ui-mobbin-refero.md](references/01-product-ui-mobbin-refero.md)
- **品牌官网 / 营销落地页 / 个人作品集** → 必读 [02-landing-pages-siteinspire-lapa.md](references/02-landing-pages-siteinspire-lapa.md)
- **需要微交互 / 动效 / 空状态 / 过渡细节** → 必读 [03-interactions-curated-designspells.md](references/03-interactions-curated-designspells.md)
- **所有项目必读（定字与定色）**：
  - [04-typography-fiu-typewolf.md](references/04-typography-fiu-typewolf.md)
  - [05-color-systems-happyhues-realtime.md](references/05-color-systems-happyhues-realtime.md)

## Step 2：确立“媒介隐喻”与构图骨架（打破模板化的第一步）
写代码前先用 2 句话写下你的视觉锚点：
1. **物理/媒介隐喻是什么？**（例：Stripe Press 精装书脊、Operate 活页打孔纸、Arrova 1px 等距建筑线框、Haikoo 高密度索引目录、Mercury 精密财务账簿）
2. **首屏展示什么真实 Artifact？**（例：直接展示可交互的筛选工作台、真实交易流卡片、终端命令 `ssh ...` 或实景视觉，禁用抽象发光球体与空洞插画）

## Step 3：套用真实色板与字体 Token（拒绝凭空拍 HEX）
直接从内置 Token 预设中选择最契合业务气质的组合并引入项目：
- 配色预设：`references/tokens/palettes.css`（8 套源自 Happy Hues 的完整区块交替色板）
- 排版预设：`references/tokens/typography.css`（5 套源自 Typewolf / Fonts In Use 的免费 Google Fonts 三字族系统，含中文回退）
- Tailwind 映射：`references/tokens/tailwind-theme.css`

**强制核对**：
- 全站核心色 <= 6 色（Realtime Colors 法则）。
- 相邻区块必须有明暗或表面色交替（Happy Hues 区块交替）。
- 亮色按钮（如 `#ffd803`、`#00ebc7`、`#f9bc60`、`#ffc0ad`）必须配深色文字，满足 WCAG AA（4.5:1）。

## Step 4：填充真实业务密度与专业细节
- **数据真实度**：SaaS / 金融 / 后台界面使用贴合领域的真实高精度数据（如 `$5,216,471.18`、`69.94% Allocated`、`Compare to: 28 Apr 2025`），并开启 `font-variant-numeric: tabular-nums`。
- **双轨 CTA**：落地页首屏设置「低门槛主转化 + 探索/极客直达次入口」（如 `Start free` + `See plans →` / `Watch demo` / CLI 命令）。
- **微视觉锚点**：适当在主标题中嵌入 1~2 个小图标，或在导航/区块角标使用等宽方括号索引（`[ 01 / OVERVIEW ]`），避免堆砌装饰卡片。

## Step 5：注入有分寸的微交互（Design Spells & Curated 标准）
- 优先使用**空间连续过渡**（原地展开、共享元素 Morph、标签滑动切换），缓动曲线统一采用 `cubic-bezier(0.22, 1, 0.36, 1)`。
- 禁用所有卡片的 `hover:scale-105 + shadow-2xl + neon glow`；改用 `1px` 描边提亮、箭头 `translate-x-0.5` 或背景微差。
- 引导提示放在角落轻量 Popover 或顶栏进度胶囊，不粗暴弹窗阻断主界面。
- 必须包含 `@media (prefers-reduced-motion: reduce)` 兼容。

## Step 6：交付前 10 秒快速自检
完成编码后，对照以下 6 条红线快速核验，有任一条未过立刻修正：
1. 是否已彻底清除无意义的深蓝/紫蓝霓虹发光渐变？
2. 是否使用了至少 2 种性格互补的字族（展示/衬线 + 正文无衬线 + 等宽元数据）？
3. 所有按钮与正文是否达到清晰可读的对比度（无白字糊在亮按钮上）？
4. 首屏是否展示了真实产品界面/真实媒介，而非抽象占位图？
5. 数据与文案是否真实可信、无 `Lorem ipsum` 或假大空 `99.9%`？
6. 悬停与过渡是否克制顺滑、无廉价缩放发光？
