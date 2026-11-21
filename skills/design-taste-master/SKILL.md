---
name: design-taste-master
description: 场景驱动的高审美前端设计与优化工作流（v2.0）。先分析项目用途、用户使用场景与目标情绪，再自动路由到最匹配的设计流派与 10 大顶级设计网站（Mobbin、Refero、Siteinspire、Lapa Ninja、Curated、Design Spells、Fonts In Use、Typewolf、Happy Hues、Realtime Colors）真实标杆案例，结合可直接复用的 CSS/Tailwind Token 预设输出无“AI味”的前端界面。
---

# Design Taste Master v2.0（场景驱动 · 反“AI味”前端设计工作流）

**核心理念**：没有放之四海而皆准的“唯一高级风格”。把社交/多智能体派对做成冷冰冰的财务后台，和把财务后台做成花哨游戏厅一样糟糕。必须**先读懂项目用途与用户使用场景，再决定风格流派与优化策略**。

---

## Step 1：项目用途与用户场景诊断（强制前置，不可跳过！）
在写任何代码或给任何视觉建议前，先读取项目 README / 现有页面 / 需求说明，并必读 [00-scene-style-router.md](references/00-scene-style-router.md)，输出一份简短的 **《场景与风格决策卡》**：

```markdown
- **产品用途**：<一句话说清产品解决什么问题>
- **核心用户与使用场景**：<谁在什么状态下打开它？高频核心动作是什么？>
- **目标情绪关键词**：<2~3 个精准形容词，如“鲜活热闹 / 空间临场感”或“精密克制 / 值得托付”>
- **选定风格流派**：<从流派 A~F 中选定主风格（必要时标明主副分区）>
- **为何不选其他风格**：<一句话避免套错模板，如“非财务工具，禁用沉闷灰白报表风”>
- **对标真实案例**：<从 10 大网站中选 2~3 个最契合的标杆>
```

> 若用户需求非常模糊（看不出产品用途或目标人群），先提出 1~2 个聚焦场景的问题，不要盲目套风格。

## Step 2：按选定流派查阅对应参考库
根据 Step 1 选定的流派，按需读取对应深度案例库（不要全读无关文档）：
- **流派 A（社交 / 多智能体派对 / 游戏化社区）** → 重点读 [03-interactions-curated-designspells.md](references/03-interactions-curated-designspells.md) + [05-color-systems-happyhues-realtime.md](references/05-color-systems-happyhues-realtime.md)
- **流派 B（B2B SaaS / 金融 / 控制台）** → 重点读 [01-product-ui-mobbin-refero.md](references/01-product-ui-mobbin-refero.md)
- **流派 C（AI 画布 / 节点工作流）** → 重点读 [01-product-ui-mobbin-refero.md](references/01-product-ui-mobbin-refero.md)（Endless）+ [03-interactions-curated-designspells.md](references/03-interactions-curated-designspells.md)（Subframe）
- **流派 D/E（开发工具 / 品牌官网 / 作品集）** → 重点读 [02-landing-pages-siteinspire-lapa.md](references/02-landing-pages-siteinspire-lapa.md)
- **流派 F（消费级效率 / 生活方式）** → 重点读 [01-product-ui-mobbin-refero.md](references/01-product-ui-mobbin-refero.md)（SavvyCal）+ [03-interactions-curated-designspells.md](references/03-interactions-curated-designspells.md)（One Year / Notion Calendar）
- **所有流派必读定字定色**：[04-typography-fiu-typewolf.md](references/04-typography-fiu-typewolf.md) + [05-color-systems-happyhues-realtime.md](references/05-color-systems-happyhues-realtime.md)

## Step 3：确立与场景匹配的“媒介隐喻”与布局骨架
- 互动/派对类（如 AgentParty）→ 舞台/房间/席位/实时气泡流，让角色状态与互动成为绝对主角；
- 数据/后台类 → 固定窄侧栏 + 全局 `⌘K` 顶栏 + 高信噪比卡片与表格；
- 官网/作品集 → 物理媒介隐喻（书脊、活页纸、等距线框、索引目录）+ 首屏直出真实 Artifact + 双轨 CTA。

## Step 4：按场景挑选配色与字体 Token
从内置预设中选择匹配当前流派的主题（也可基于 Realtime Colors 4 步法则做品牌色微调）：
- 配色预设：[palettes.css](references/tokens/palettes.css)（含 10 套主题，覆盖活力派对 `party-stage` / `arcade-pop`、清爽 SaaS `nordic-mint`、森林工程 `forest-blueprint`、暖纸编辑 `warm-paper`、高反差暗黑 `midnight-amber` / `slate-dark` 等）
- 排版预设：[typography.css](references/tokens/typography.css)（5 套 100% 免费 Google Fonts 三字族系统，含中文回退栈）
- Tailwind 映射：[tailwind-theme.css](references/tokens/tailwind-theme.css)

**强制底线**：核心色 <= 6 色（多角色互动可加受控角色标识色）；亮按钮必配深色字（WCAG AA >= 4.5:1）；禁用无理由紫蓝霓虹光晕。

## Step 5：填充场景真实度与定制化微交互
- 数据/内容贴合真实业务，杜绝 `Lorem ipsum` 与空洞假数字；数值开启 `tabular-nums`。
- 微交互匹配情绪：工具类追求利落克制（`cubic-bezier(0.22, 1, 0.36, 1)`、`1px` 描边提亮、原地 Morph）；互动/社区类增加有温度的物理弹性（`cubic-bezier(0.34, 1.56, 0.64, 1)`、长按递进反馈、角色状态呼吸感与无干扰小彩蛋）。
- 必须兼容 `@media (prefers-reduced-motion: reduce)`。

## Step 6：交付前场景契合度与反“AI味”双轨自检
1. **场景契合度**：如果遮住 Logo，用户能不能在 3 秒内看出这是什么用途的产品、产生对应的情绪？
2. **反“AI味”底线**：是否清除了廉价紫蓝发光渐变、纯黑纯白硬对比、单一无衬线、假数据、抽象占位图和廉价 `hover:scale-105` 发光？
3. **对比度与可读性**：所有正文、按钮、标签在对应背景上是否清晰可读？
