# 01 · 产品 UI 参考库（Mobbin & Refero 真实案例拆解）

> 来源实测：`https://mobbin.com`（iOS & Web 公开产品库与首页范式）与 `https://refero.design`（Web / SaaS 真实产品页面拆解）。  
> 适用场景：SaaS 控制台、Web 应用、仪表盘、金融/协作工具、引导流（Onboarding）、表格与复杂工作流。

---

## 一、Refero 5 个标杆产品 UI 深度拆解

### 1. Mercury（在线商业银行 / Fintech — Dashboard + 行业引导浮层）
- **布局结构**：左侧固定窄导航栏（Home、带数字角标 `8` 的 Tasks、Transactions 及 Workflows 分组）+ 顶栏全局搜索与 `Move money` 主动作按钮 + 主区双列卡片网格（胶囊快捷资金按钮、面积折线余额卡、Accounts、带 `1/9` 翻页的 Disputes 卡、Credit 卡）+ 右下角行业场景切换浮层（Startup / Ecommerce / Agency / More）。
- **字体与色板**：`Arcadia Text / Arcadia Display`；纯白/极浅灰画布 + 1px 细描边 + 克莱因蓝（RoyalBlue）单点强调 + Gunmetal 深墨字。
- **反“AI味”精髓**：
  1. **高精度真实数字**：金额精确到小数点后两位（`$5,216,471.18`），配合 `tabular-nums` 对齐，拒绝整数占位符。
  2. **非阻断式引导（Non-blocking Popover）**：右下角浮层按行业切换真实待办（如 `Issue SAFE to investors`），绝不用全屏遮罩打断主工作台。

### 2. Shopify（全球电商 SaaS — Analytics Dashboard）
- **布局结构**：高对比深黑顶栏（`⌘K` 全局搜索 + 通知 + 门店切换）+ 左侧多级业务树（Analytics > Reports / Live View）+ 浅灰底 12 栅格白色卡片（顶部时间基线胶囊 `Today` + `Compare to: 28 Apr 2025` + `Auto-refresh` 开关；主体 3 等分主图 + 4 等分迷你 KPI 卡 + 双栏明细）。
- **字体与色板**：`Inter`；深炭黑顶栏压住重心，主体仅用蓝紫色系区分曲线与漏斗，无多余装饰色。
- **反“AI味”精髓**：
  1. **默认带对比基线**：所有核心指标都提供同比/环比参照日期与绝对值+百分比双维度（如 Conversion rate breakdown）。
  2. **层级靠间距与极微阴影建立**：摒弃发光边框与炫彩渐变 KPI 卡片。

### 3. Cake Equity（股权激励管理 SaaS — 复杂业务详情页）
- **布局结构**：功能型顶栏（企业切换、带 `50%` 进度条的引导胶囊、`Company / Portal` 角色切换开关）+ 左侧业务树 + 纵向详情流（面包屑 + Plan Summary 汇总条 + `69.94% Allocated` 细进度条 + Offers 表格与行内状态胶囊/动作按钮）。
- **字体与色板**：`Google Sans / San Francisco / Inter`；白底配紫蓝主按钮与柔和浅底语义状态标签。
- **反“AI味”精髓**：
  1. **拥抱业务高精度**：敢于展示 5 位小数股权比例（`9.99771%`），建立合规与工程信任感。
  2. **行内操作闭环**：将 `Issue grant`、`Send offer`、复制、删除直接整合在表格行与顶部状态条内，减少跳转层级。

### 4. Endless（AI 协作白板 — 节点式工作流画布）
- **布局结构**：极简无顶栏沉浸式画布 + 极窄左边缘工具条 + 顶部居中日期胶囊（`21 December`）+ 底部悬浮磨砂 Dock + 右下角缩放控件；画布中央用贝塞尔曲线连接「音频波形卡（`02:32`）→ `Generate Text` 节点 → 长文卡片」。
- **字体与色板**：`Intercom / Inter`；柔和深紫灰画布衬托高对比纯白内容卡片。
- **反“AI味”精髓**：打破“左对话框、右输出区”的 AI 套壳定式，把 AI 能力抽象为空间画布上可连接、可组合的物理节点。

### 5. SavvyCal（日程预约 SaaS — Guided Setup 初始化页）
- **布局结构**：左侧扁平导航栏（明黄 `+ New` 主按钮 + 9 项入口 + 底部 `Upgrade ->` 升级提示卡）+ 右侧大留白居中 3 步水平分隔线任务清单。
- **字体与色板**：`Inter`；大面积纯净留白（Cotton）+ 少量藏红花黄与海洋蓝焦点。
- **反“AI味”精髓**：任务清单状态反馈极扎实（已完成项呈绿色勾号+删除线），末步自然衔接 `30-day money back guarantee` 商业转化说明，克制不喧宾夺主。

---

## 二、Mobbin 真实产品库观察与高频设计模式

在 Mobbin 公开的 iOS 与 Web 实时更新产品库（如 **Brex、Shopify、Toss、Betterment、TradingView、1Password、Arc Search、Lemonade Insurance、Reeder 5、Poolsuite FM、Natural AI**）及 Mobbin 自身产品界面的共同规律中，总结出 5 条可直接复用的 SaaS / App 模式：

1. **首屏即产品筛选工作台（Mobbin 自身范式）**：
   - 将 `Apps / Sites` 切换器、三栏多维筛选条与真实高保真卡片网格直接置于首页核心区，零多余装饰插画，信噪比极高。
2. **金融与数据产品（Brex / Toss / Betterment / TradingView）**：
   - 统一采用**单色中性底 + 1px 细线分隔 + 语义色仅用于涨跌/风险/主按钮**；复杂图表必须支持悬停十字准星、区间切换与清晰坐标单位。
3. **工具与效率产品（1Password / Arc Search / Reeder 5）**：
   - 强调**键盘优先（`⌘K` 命令面板）**、渐进式信息披露（默认收起次要属性，悬停或展开显示），保持主列表呼吸感。
4. **消费级与性格化工具（Lemonade / Poolsuite FM / Not Boring 系列）**：
   - 允许在保持清晰信息架构的前提下，通过独特材质（复古 OS 窗口、物理旋钮、品牌插画）建立极强辨识度，绝不做千篇一律的扁平白卡片。

---

## 三、SaaS / 控制台直接落地检查表
- [ ] 是否明确区分了「顶栏全局上下文（搜索 `⌘K` / 组织切换 / 角色切换）」与「左侧固定导航（带业务分组与未读数字角标）」？
- [ ] 所有金额、百分比、统计数字是否使用了真实业务精度与 `font-variant-numeric: tabular-nums`？
- [ ] 数据看板是否带有时间范围与对比基线（如 `Compare to previous period`）？
- [ ] 新手引导或版本更新是否采用角落浮层、顶栏进度胶囊或内联清单，避免粗暴全屏弹窗？
- [ ] 卡片层级是否依靠 `1px` 低对比描边 + 表面色差 + 清晰留白建立，而非霓虹发光边框？
