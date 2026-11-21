---
name: anti-ai-audit
description: 对现有前端页面、组件代码或设计截图进行“AI味”病灶诊断，并对照 10 个顶级设计网站（Mobbin、Refero、Siteinspire、Lapa Ninja、Curated、Design Spells、Fonts In Use、Typewolf、Happy Hues、Realtime Colors）的真实案例，输出可落地的逐项重构清单与代码改造方案。
---

# Anti-AI Audit（前端界面“去 AI 味”审美审查技能）

当用户要求审查、优化、吐槽或重构一个现有前端界面（觉得它“太像 AI 生成的”、“不够高级”、“平庸没质感”）时，按以下流程执行系统诊断与手术级改稿。

---

## 一、10 项“AI 味”病灶扫描清单

逐项检查目标页面的代码或视觉表现，标记命中的病灶（`[FAIL]` / `[WARN]` / `[PASS]`）：

| # | 病灶名称 | 典型“AI 味”症状 | 真实标杆对照解法（10 大网站） |
| :--- | :--- | :--- | :--- |
| 1 | **紫蓝发光综合征** | 深色底 + 紫色/靛蓝模糊光晕 + 玻璃拟态发光边框 | 改用 Happy Hues 真实色板（如 Warm Paper `#fef6e4`、Forest Blueprint `#004643`、Midnight Amber `#0f0e17`）或 Siteinspire 单色平面 |
| 2 | **纯黑纯白生硬对比** | 直接用 `#000000` 配 `#ffffff`，缺乏温度与层次 | 改用带色相的深墨色（`#001858`、`#272343`、`#16161a`）+ 微暖白/浅灰交替区块（`#fffffe` / `#f2f4f6`） |
| 3 | **单调无衬线一统天下** | 全站只有 `Inter` 或默认无衬线，标题与正文毫无性格差 | 引入 Typewolf / Fonts In Use 三字族系统（衬线/性格展示体 + 无衬线正文 + 等宽元数据标签） |
| 4 | **无媒介隐喻的三列圆角卡** | 整页堆满居中图标 + 标题 + 两行字的 3 列圆角卡片 | 引入物理/媒介隐喻（Operate 活页装订、Stripe Press 书脊、Haikoo 索引目录、Arrova 1px 线框） |
| 5 | **假数据与空洞数字** | `99.9% Uptime`、`10k+ Users`、`Feature 1`、`Lorem ipsum` | 参照 Mercury / Shopify / Cake Equity 改写为高精度业务数据 + 时间对比基线 + `tabular-nums` |
| 6 | **抽象概念配图** | Hero 区放 3D 发光球体、抽象线条网或无关 Unsplash 图 | 参照 Mobbin / Operate / exe.dev 直接展示真实 UI 工作台、实时筛选器或真实命令行 |
| 7 | **单薄/混乱 CTA** | 只有一个空洞 `Get Started` 或并排 4 个同权重大按钮 | 参照 Lapa Ninja 改为明确的双轨 CTA（低门槛主入口 + 探索/极客直达次入口） |
| 8 | **廉价卡片悬停特效** | 鼠标放上去就 `scale-105` + 发光大阴影 | 参照 Curated / Design Spells 改为 `1px` 描边提亮、箭头微移、原地 Morph 展开 |
| 9 | **对比度翻车** | 浅灰字配白底、白字糊在亮黄/薄荷绿按钮上 | 按 Realtime Colors 规范修正至 WCAG AA（>= 4.5:1），高明度按钮强制配深色文字 |
| 10 | **阻断式弹窗与冰冷空状态** | 进页面就弹全屏新手遮罩，空状态只有一行灰字 | 参照 Mercury 右下角行业引导浮层、SavvyCal 内联任务清单、Notion Calendar 线条小动画 |

---

## 二、输出格式要求

完成诊断后，按以下结构向用户输出报告（如用户要求直接改代码，则先简述 3~5 条核心病灶，随即执行重构）：

1. **总体诊断评分**（满分 100，按色彩 / 排版 / 构图 / 数据真实度 / 微交互 5 维各 20 分打分）。
2. **命中病灶 TOP 3~5**（必须指出具体文件/行号或具体区域，并引用对应的真实标杆案例）。
3. **手术级重构方案**：
   - 推荐直接套用的主题与字体预设（引用 `design-taste-master/references/tokens/` 中的具体 `[data-theme]` 与 `[data-type]`）。
   - 给出具体的布局、组件、文案与动效修改动作。
4. **改后复测**：修改完成后再次核对上述 10 项病灶，确认无残留“AI味”与对比度回归。
