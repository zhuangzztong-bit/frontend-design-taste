# 00 · 项目用途与用户场景 → 风格流派路由矩阵（v2.0 核心引擎）

> **核心原则**：高级审美不是“把所有网站都做成浅色衬线杂志风”，而是**让视觉语言、构图骨架、色彩情绪和微交互严丝合缝地服务于产品用途与用户当下的心理状态**。

动手设计或重构任何项目前，必须先通过阅读项目代码 / README / 业务描述完成 **4 问诊断**，再按下方路由矩阵匹配风格流派：

1. **产品用途是什么？**（帮用户干活/决策、社交/娱乐/互动、展示品牌/作品、还是开发/调试？）
2. **用户打开它时的核心场景与心态？**（高压高频盯盘、轻松探索互动、快速评估付费、还是沉浸式创作？）
3. **页面里最核心的“主角”是什么？**（实时数据表格、多个活跃角色/Agent 对话与状态、产品交互沙盒、还是图文叙事？）
4. **最应该传递的 2~3 个情绪词？**（如：精密可信 / 热闹鲜活 / 极客硬核 / 沉静优雅 / 温暖治愈）

---

## 六大产品场景风格路由矩阵

### 流派 A：社交 / 多智能体派对 / 游戏化互动社区（如 AgentParty、Poolsuite FM、Instagram、Discord/Gather）
- **典型用途**：多 Agent 协作/互动房间、社交派对、趣味社区、轻游戏化体验、创作互动广场。
- **用户心态**：来“看热闹、参与互动、感受角色生命力与即时反馈”，追求鲜活、有情绪张力、有参与感。
- **推荐视觉与构图**：
  - **空间/房间隐喻**：用“舞台、房间、大厅、角色席位、气泡流、实时事件流”替代死板的三列介绍卡片。
  - **色彩方向**：允许高辨识度活力色或沉浸式舞台暗底（见 `party-stage`、`arcade-pop`、`electric-yellow`），用清晰角色标识色区分不同 Agent/参与者，**严禁做成冷冰冰的灰白财务报表或沉闷的报纸杂志风**。
  - **字族组合**：强性格展示无衬线（`Space Grotesk` / `Syne` / `Bricolage Grotesque`）+ 清晰 UI 正文（`DM Sans` / `Inter`）+ 等宽状态/回合/时间戳（`JetBrains Mono`）。
  - **动效人格（`data-motion="playful"`）**（参考 Design Spells）：物理弹簧允许 `10%~13%` 弹性过冲（`--ease-spring-bouncy`, `501ms`）、长按情感粒子反馈（Instagram Super Like）、角色思考呼吸点（`.m-breathe`）、原地 Morph 切换房间/视角。
- **本流派禁区**：❌ 过度严肃的学术衬线堆砌、❌ 像企业 ERP 一样密密麻麻的冰冷表单、❌ 无趣的静态图文列表。

### 流派 B：严谨 B2B SaaS / 金融科技 / 数据控制台（如 Mercury、Shopify、Cake Equity、Linear）
- **典型用途**：资金管理、数据分析、股权/账务、企业后台、运营监控看板。
- **用户心态**：高频工作、核对精度、做商业决策，追求零干扰、高信噪比、一眼看清变化与异常。
- **推荐视觉与构图**：
  - **工作台骨架**：固定左侧窄导航（带数字角标）+ 全局搜索 `⌘K` 顶栏 + 12 栅格清晰卡片（1px 细描边 + 表面微色差）。
  - **色彩方向**：高纯净浅底（`nordic-mint`、`electric-yellow`）或克制无光晕暗底（`slate-dark`）；仅用语义色表达涨跌、风险与主动作。
  - **字族组合**：`fintech-dense`（`Plus Jakarta Sans` + `Inter` + `JetBrains Mono`），所有金额/指标强制 `tabular-nums` + 时间对比基线（`Compare to...`）。
  - **动效人格（`data-motion="precise"`）**：临界阻尼零过冲（`--ease-spring-snappy`, `315ms`）、按压 `90ms` 即时响应、5×5 点阵轻量离线重连律动（Linear `Spell 245`）、右下角非阻断行业引导浮层（Mercury + `@starting-style`）、数字翻牌对齐（`.m-ticker`）。
- **本流派禁区**：❌ 炫技的大面积弹跳动画阻断输入、❌ 娱乐化插画干扰数据扫读、❌ 假整数占位数据（`99.9%`）。

### 流派 C：AI 空间画布 / 节点工作流 / 沉浸式创作工具（如 Endless、Figma、Subframe、Dropbox）
- **典型用途**：AI 工作流编排、多模态白板、可视化设计/搭建工具、思维导图。
- **用户心态**：沉浸式思考与组装，希望工具退居幕后、让内容和连接关系成为绝对主角。
- **推荐视觉与构图**：
  - **无边界画布骨架**：极简边缘工具条 + 顶部日期/状态胶囊 + 底部悬浮磨砂 Dock + 节点连线卡片，打破“左对话框、右输出区”的 AI 套壳定式。
  - **色彩方向**：低干扰中性/柔和深灰紫画布衬托高对比纯白内容节点（`slate-dark`、`indigo-rose`、`nordic-mint`）。
  - **动效人格（`data-motion="spatial"`）**：微过冲柔顺弹簧（`--ease-spring-soft`, `450ms`）、节点拖拽磁吸、共享容器原地属性展开（Subframe / View Transition）、拖拽投放区虚线边界与胶囊提示唤醒（Dropbox `Spell 318`）。
- **本流派禁区**：❌ 沉重的顶部多层导航挤压画布空间、❌ 把核心交互藏在二级弹窗里。

### 流派 D：开发者工具 / AI 基础设施 / 硬核技术官网（如 exe.dev、DataVendor、Linear、Vercel、Granola）
- **典型用途**：CLI、SDK、API 平台、云基础设施、Agent 运行环境。
- **用户心态**：挑剔、务实、反感营销废话，想在 10 秒内看懂架构、拿到命令直接试跑。
- **推荐视觉与构图**：
  - **工程与终端隐喻**：非对称侧栏卡片（exe.dev）、半调点阵/工程图纸质感（DataVendor）、实时代码/终端预览块。
  - **双轨 CTA**：低门槛在线试用 + 极客直达命令（如 `ssh ...` / `npx ...`）。
  - **色彩方向**：`midnight-amber`、`forest-blueprint`、`slate-dark`。
  - **字族组合**：`editorial-saas`（出版衬线+无衬线+等宽）或 `precision-studio`（锐利无衬线+等宽命令标签）。
  - **动效人格（`data-motion="technical"`）**：`180ms` 终端级利落切换、侧栏开关图标与抽屉容器同构伸缩（Granola `Spell 328`）、算力/思考强度滑块色彩与文案联动（ChatGPT `Spell 333`）、Logo 边界内零布局侵入彩蛋（Vercel `Spell 347`）。
- **本流派禁区**：❌ 空洞的营销口号、❌ 无意义的 3D 发光大脑/连线球体。

### 流派 E：品牌官网 / 出版文化 / 创意工作室 / 个人作品集（如 Stripe Press、Sydopia、Arrova、Haikoo Studio、MOXIE Theatre、Luma）
- **典型用途**：建立强烈品牌记忆、展示作品集、文化/设计机构官网、旗舰产品发布页。
- **用户心态**：浏览、欣赏、感受审美高度与专业信任感。
- **推荐视觉与构图**：
  - **强媒介隐喻**：实体书脊（Stripe Press）、极端 70% 留白+底边裁切作品带（Sydopia）、1px 等距线框（Arrova）、无 Hero 高密度索引目录（Haikoo Studio）、海报级超大字重（MOXIE Theatre）。
  - **色彩方向**：`warm-paper`、`warm-espresso`、`indigo-rose` 或高纯度单色平面。
  - **字族组合**：`editorial-bold`（`Fraunces` + `Work Sans` + `DM Mono`）或 `warm-humanist`。
  - **动效人格（`data-motion="editorial"`）**：`600ms~700ms` 长减速从容揭示（`--ease-enter`）、渐进滚动时间轴（`animation-timeline: view()`）、光标坐标跟随局部柔光（Luma `Spell 260`）、跨文档视图过渡（`@view-transition`）。
- **本流派禁区**：❌ 套用通用 SaaS 三列功能卡片模板、❌ 首屏信息过载。

### 流派 F：消费级效率工具 / 生活方式 / 个人助手（如 One Year、Notion Calendar、SavvyCal、Daylight、Things take time、Shop）
- **典型用途**：日程预约、个人日记/笔记、健康应用、轻量 C 端工具。
- **用户心态**：日常高频轻使用，希望界面温柔、顺手、没有压迫感，偶有小惊喜。
- **推荐视觉与构图**：
  - **低密度聚焦**：大留白居中任务流（SavvyCal）、纸张/卡片触感（One Year）、清晰分步清单。
  - **色彩方向**：`warm-paper`、`warm-humanist`、`electric-yellow`、`nordic-mint`。
  - **动效人格（`data-motion="gentle"`）**：温润弹簧（`--ease-spring-soft`）、共享元素原地 Morph 形变（One Year 日期胶囊→搜索栏 `Spell 350`）、内联拉伸二次确认（Things take time 删除确认 `Spell 329`）、底部导航栏背后物理滚出返回键（Shop `Spell 265`）、极简线条微动画（Notion Calendar `Spell 349`）。
- **本流派禁区**：❌ 冰冷的高压暗黑极客风、❌ 密不透风的 B 端表格密度。

---

## 混合场景处理原则
当一个项目横跨两种场景时（例如 **AgentParty 既有“多智能体派对互动舞台”（流派 A），又有“房间配置/Agent 编排面板”（流派 C）**），采用 **主副分区策略**：
- **主视觉 / 互动区**采用流派 A（鲜活角色感、空间舞台、即时动态微交互）；
- **配置 / 抽屉 / 工具区**局部收敛为流派 B/C 的克制工程感（清晰控件、1px 细线、`tabular-nums`），避免全屏过度花哨导致操作失焦。
