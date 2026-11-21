# Frontend Design Taste

<p align="center">
  <img src="./assets/logo.svg" width="96" height="96" alt="Frontend Design Taste Logo" />
</p>

一个专为 **Antigravity** 打造的**场景驱动**前端设计审美提升插件（**v2.0**）。它不仅消除 AI 生成界面的同质化“AI 味”，更会在动手前**先分析你的项目用途、用户使用场景与目标情绪**，自动路由到最契合的设计流派（如多智能体互动派对、B2B 数据控制台、AI 节点画布、开发者工具、品牌官网、消费级效率工具），杜绝“一刀切”套模板。

## v2.0 核心升级：先懂项目场景，再定视觉流派

- **六大产品场景风格路由矩阵（`00-scene-style-router.md`）**：根据项目用途与用户心态，动态决定视觉隐喻、构图骨架、色彩温度、字族组合、微交互策略以及该场景专属的“反面禁区”。
- **强制前置《场景与风格决策卡》**：无论是新建页面还是重构已有项目，先输出场景诊断与流派定位，再动手写代码。
- **双重审查机制（`anti-ai-audit v2.0`）**：先查“风格错配”（20 分），再查“10 项 AI 味病灶”（80 分），保留产品原本正确的灵魂。
- **扩展至 10 套主题 Token**：新增面向社交/多智能体派对/互动社区的 `party-stage` 与 `arcade-pop` 主题（含多角色身份色）。

本插件基于对 **10 个全球顶级设计参考网站** 的真实公开优秀案例的深度拆解与提炼，沉淀为常驻审美规则（Rules）、两大核心工作流技能（Skills）、5 大维度案例知识库以及开箱即用的 CSS / Tailwind Token 预设。

---

## 真实学习的 10 大设计网站（5 大维度）

| 维度 | 参考网站 | 实测代表案例 | 核心反“AI味”设计规律 |
| :--- | :--- | :--- | :--- |
| **1. 产品 UI** | [Mobbin](https://mobbin.com)、[Refero](https://refero.design) | Mercury、Shopify Analytics、Cake Equity、Endless、SavvyCal、Brex、Toss、1Password | 高精度真实数字（`tabular-nums`）、默认带时间对比基线、右下角/顶栏非阻断轻量引导、节点画布打破套壳对话布局 |
| **2. 整站首页** | [Siteinspire](https://www.siteinspire.com)、[Lapa Ninja](https://www.lapa.ninja) | Stripe Press、Sydopia、Arrova、Haikoo Studio、MOXIE Theatre、exe.dev、DataVendor、Mobbin、Serve Robotics、Operate | 物理/媒介隐喻优先（书脊、活页装订、1px 等距线框、无 Hero 索引目录）、双轨 CTA 分层、标题内嵌微图标、首屏直出真实 UI/实景 |
| **3. 设计交互** | [Curated](https://www.curated.design)、[Design Spells](https://designspells.com) | Dia、Google、Instagram、One Year、Notion Calendar、Santal、Subframe、Aren、VS Goods | 共享元素原地 Morph 连续过渡、长按时长表达情感强度、不打断主路径的轻量彩蛋、克制 `1px` 描边与微位移反馈 |
| **4. 字体排版** | [Fonts In Use](https://fontsinuse.com)、[Typewolf](https://www.typewolf.com) | Speakeasy、Andrei Scarlatescu、Dirty Vine、Daylight、Elena Scott、Every、Aol | 三级字族系统（情绪衬线/展示体 + 高屏显无衬线正文 + 等宽元数据标签），映射为 100% 免费商用 Google Fonts + 中文回退栈 |
| **5. 网页配色** | [Happy Hues](https://www.happyhues.co)、[Realtime Colors](https://www.realtimecolors.com) | Happy Hues 10 套完整色板（Palette 1/2/4/7/10/12/13/14/16/17）与 4 步配色法则 | 相邻区块明暗交替（Section Alternation）、3~6 色克制上限、带色相的深墨色替代纯黑、亮色按钮强制深色字（WCAG AA） |

---

## 插件目录结构

```text
frontend-design-taste/
├── plugin.json                     # Antigravity 插件清单
├── assets/logo.svg                 # 插件图标
├── rules/
│   └── AGENTS.md                   # 常驻反“AI味”审美铁律（启用即全局生效）
├── skills/
│   ├── design-taste-master/        # 核心设计构建技能（6 步工作流）
│   │   ├── SKILL.md
│   │   └── references/
│   │       ├── 01-product-ui-mobbin-refero.md
│   │       ├── 02-landing-pages-siteinspire-lapa.md
│   │       ├── 03-interactions-curated-designspells.md
│   │       ├── 04-typography-fiu-typewolf.md
│   │       ├── 05-color-systems-happyhues-realtime.md
│   │       └── tokens/
│   │           ├── palettes.css        # 8 套区块交替配色 CSS 变量预设
│   │           ├── typography.css      # 5 套三字族开源字体预设（含中文回退）
│   │           └── tailwind-theme.css  # Tailwind CSS v4 @theme 映射
│   └── anti-ai-audit/              # 现有页面 10 项“AI味”病灶审查与改稿技能
│       └── SKILL.md
├── install.ps1                     # Windows 一键安装脚本
├── install.sh                      # macOS / Linux 一键安装脚本
└── LICENSE                         # MIT License
```

---

## 快速安装

### 方式一：直接克隆到 Antigravity 插件目录（推荐）

**Windows (PowerShell 7)**：
```powershell
git clone https://github.com/zhuangzztong-bit/frontend-design-taste.git "$env:USERPROFILE\.gemini\config\plugins\frontend-design-taste"
```

**macOS / Linux**：
```bash
git clone https://github.com/zhuangzztong-bit/frontend-design-taste.git ~/.gemini/config/plugins/frontend-design-taste
```

### 方式二：克隆后运行一键安装脚本

```powershell
# Windows (PowerShell 7)
pwsh -NoProfile -File .\install.ps1

# macOS / Linux
bash ./install.sh
```

安装完成后，在 Antigravity 左侧边栏的 **自定义项（Customizations）** 中即可看到并管理 **Frontend Design Taste**，插件会自动加载生效。

---

## 内置 CSS / Tailwind Token 使用示例

```html
<!-- 在 html 或容器上切换主题与字族预设 -->
<html data-theme="forest-blueprint" data-type="editorial-saas">
```

可用 `[data-theme]` 主题：
- `nordic-mint`（清爽现代 SaaS）
- `warm-paper`（暖纸编辑风 / 作品集）
- `forest-blueprint`（深森林绿 B2B / 工程感）
- `midnight-amber`（高反差暗黑开发工具）
- `warm-espresso`（暖棕工作室 / 生活方式）
- `electric-yellow`（活力创业工具 / 教育）
- `indigo-rose`（创意科技 / 社区）
- `slate-dark`（克制暗黑仪表盘，无霓虹光晕）

可用 `[data-type]` 字族预设：
- `editorial-saas` / `precision-studio` / `editorial-bold` / `warm-humanist` / `fintech-dense`

---

## License

[MIT](./LICENSE)
