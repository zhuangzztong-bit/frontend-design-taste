# 04 · 字体排版参考库（Fonts In Use & Typewolf 真实案例拆解）

> 来源实测：`https://fontsinuse.com`（真实网页与出版字体应用案例）与 `https://www.typewolf.com`（2026 Top 10 榜单、Site of the Day 真实搭配及 40 Best Free Google Fonts）。  
> 适用场景：品牌调性塑造、标题与正文层级、数据与代码排版、开源字体选型。

---

## 一、顶级真实网站都在用什么字体组合？（Typewolf & Fonts In Use 实录）

### 核心规律：三级字族系统（Display / Serif + Neutral Sans + Technical Mono）
AI 生成的页面之所以单调，是因为全站只用 `Inter` 或 `Roboto` 一种无衬线体。真实高审美网站普遍采用 **2~3 种性格互补的字族**：

| 真实案例（来源） | 原始真实字体组合 | 性格与视觉效果 | 100% 开源免费替代方案（Google Fonts） |
| :--- | :--- | :--- | :--- |
| **Speakeasy**<br>（Typewolf SOTD） | `Tobias`（衬线）+ `Diatype`（无衬线）+ `Diatype Mono`（等宽） | 现代出版感 + 工程严谨感，最适合开发者/AI/SaaS 官网 | `Newsreader` 或 `Instrument Serif` + `Plus Jakarta Sans` / `Inter` + `JetBrains Mono` |
| **Andrei Scarlatescu**<br>（Fonts In Use） | `Founders Grotesk` + `ABC Diatype` + `ABC Monument Grotesk Mono` | 锐利现代无衬线标题 + 理性正文 + 极简等宽元数据 | `Space Grotesk` 或 `Bricolage Grotesque` + `Inter` / `DM Sans` + `IBM Plex Mono` |
| **Dirty Vine**<br>（Typewolf SOTD） | `Swear`（高反差张力衬线）+ `DM Mono`（等宽） | 强烈戏剧感与复古潮流反差，适合创意品牌/作品集 | `Fraunces` 或 `Cormorant Garamond` + `DM Mono` |
| **Daylight**<br>（Typewolf SOTD） | `Grenette`（温润衬线）+ `Styrene`（几何无衬线） | 温暖、健康、人文科技感，彻底告别冰冷赛博感 | `Source Serif 4` 或 `Lora` + `DM Sans` / `Work Sans` |
| **Elena Scott**<br>（Typewolf SOTD） | `Editorial Old` + `Neue Montreal` | 杂志社论风，适合内容平台、品牌故事、咨询机构 | `Instrument Serif` 或 `Libre Baskerville` + `Inter` / `DM Sans` |
| **Every (2025)**<br>（Typewolf SOTD） | `Signifier` + `Switzer` | 深度专栏、AI 媒体与知识产品标杆 | `Newsreader` + `Inter` + `Space Mono` |
| **Aol Website & App**<br>（Fonts In Use） | `Adelle Sans`（全端统一） | 人文无衬线，在极小字号与跨端屏幕依然清晰亲切 | `Fira Sans` 或 `Source Sans 3` |

---

## 二、Typewolf 2026 权威选字硬指标

从 Typewolf `Top 10 Serif Fonts` 与 `The 40 Best Free Google Fonts` 实测页面提炼的选字原则：
1. **拒绝单字重展示体用于 UI**：优秀的字体家族必须具备多字重（Regular / Medium / SemiBold / Bold）及匹配的斜体（Italic）。
2. **正文友好四要素**（Typewolf 原文标准）：
   - 低至中等笔画对比度（low-to-moderate stroke contrast）
   - 宽阔的字怀（large counters）
   - 开放的开口（open apertures）
   - 较大的 x 字高（large x-height）
3. **Typewolf 精选开源主力字体白名单（均可免费商用）**：
   - **无衬线主力**：`DM Sans`（9 字重+斜体）、`Inter`（9 字重+斜体）、`Work Sans`（9 字重+斜体）、`Libre Franklin`（9 字重+斜体）、`Fira Sans`（9 字重+斜体）、`Source Sans 3`（8 字重+斜体）
   - **个性展示无衬线**：`Space Grotesk`（5 字重）、`Syne`（5 字重，先锋感极强）、`Archivo Narrow`（窄体海报风）
   - **编辑/人文衬线**：`Fraunces`（9 字重+斜体，可变光学尺寸）、`Source Serif 4`（8 字重+斜体）、`Cormorant`（高反差大标题专用）、`Alegreya`、`Libre Baskerville`
   - **技术等宽**：`Space Mono`、`DM Mono`、`JetBrains Mono`、`IBM Plex Mono`

---

## 三、中文与中英混排落地规范
当项目包含中文内容时，必须为英文字体配置气质匹配的中文回退栈，并微调排版参数：
- **现代 SaaS / 工具界面**：`'Inter', 'DM Sans', 'PingFang SC', 'Noto Sans SC', sans-serif`
- **编辑风 / 品牌官网标题**：`'Fraunces', 'Instrument Serif', 'Noto Serif SC', 'Songti SC', serif`
- **等宽数据 / 代码 / 索引标签**：`'JetBrains Mono', 'DM Mono', 'Noto Sans Mono', monospace`
- **字距与行高微调**：
  - 英文大标题（`>= 40px`）：`letter-spacing: -0.03em; line-height: 1.05 ~ 1.12;`
  - 中文大标题（`>= 36px`）：`letter-spacing: -0.015em; line-height: 1.18 ~ 1.25;`
  - 中文正文（`15px ~ 16px`）：`line-height: 1.65 ~ 1.75; max-width: 65ch;`（避免超宽行难以阅读）
  - 眉标 / 索引标签（`11px ~ 12px` 等宽全大写）：`letter-spacing: 0.08em; text-transform: uppercase;`
  - 财务/仪表盘数值：`font-variant-numeric: tabular-nums;`
