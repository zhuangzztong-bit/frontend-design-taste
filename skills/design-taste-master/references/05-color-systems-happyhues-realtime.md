# 05 · 网页配色参考库（Happy Hues & Realtime Colors 真实色板与法则）

> 来源实测：`https://www.happyhues.co`（10 套完整区块交替色板与精确 HEX）与 `https://www.realtimecolors.com`（4 步配色体系与 WCAG 对比度红线）。  
> 适用场景：全站主题配色、明暗区块交替、按钮与正文对比度校验、快速输出 CSS / Tailwind 色彩 Token。

---

## 一、Realtime Colors 4 步配色法则（克制控色底线）

1. **先定 2 个中性色**：`Background`（画布底色）与 `Text`（正文墨色）——占比约 60%~70%，决定全站呼吸感。
2. **再定 Primary（主色）**：仅用于主 CTA 按钮、核心强调区块与品牌标识——占比约 10%~20%。
3. **可选 Secondary（次色）**：用于次级按钮、信息卡片背景、标签底色——占比约 10%~20%。
4. **可选 Accent（点缀色）**：用于超链接、高亮徽章、插图或图表焦点的极小面积点缀——占比 < 5%。
5. **硬上限与对比度红线**：
   - 常规项目 **3 色（底 + 字 + 1 强调色）** 已完全足够；整站核心色严禁超过 **6 色**。
   - **三档对比度检查**：正文与按钮文字必须至少达到 **WCAG AA（4.5:1）**，核心阅读区争取 **AAA（7:1）**；绝不把白字放在明黄、薄荷青、浅粉等高明度按钮上！

---

## 二、Happy Hues 真实区块交替色板精选（8 套实战主题）

Happy Hues 最核心的反“AI味”精髓是 **Color in Context（语境配色）** 与 **Section Alternation（区块交替）**：相邻区块在主背景与次背景间切换，且严格区分 `Headline` 与 `Paragraph` 的明度层级。

| 主题代号（原站编号） | 适用场景 | 主区块底 / 次区块底 | 标题色 / 正文色 | 主按钮 / 按钮字色 | 次色 / 点缀色 |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Warm Paper**<br>（Palette 17） | 品牌官网、内容/设计作品集、人文产品 | `#fef6e4` / `#f3d2c1` | `#001858` / `#172c66` | `#f582ae` / `#001858` | `#8bd3dd` / `#001858`（描边） |
| **Nordic Mint SaaS**<br>（Palette 2） | 清爽现代 SaaS、金融/效率工具、文档站 | `#fffffe` / `#f2f4f6` | `#00214d` / `#1b2d45` | `#00ebc7` / `#00214d` | `#ff5470` / `#fde24f` |
| **Forest Blueprint**<br>（Palette 10） | 高端 B2B、工程/AI 协同、金融科技 | `#004643` / `#abd1c6` | `#fffffe` / `#abd1c6`（深区）<br>`#001e1d` / `#0f3433`（浅区） | `#f9bc60` / `#001e1d` | `#e8e4e6` / `#e16162` |
| **Midnight Amber**<br>（Palette 13） | 开发者工具、硬核基础设施、高反差官网 | `#0f0e17` / `#fffffe` | `#fffffe` / `#a7a9be`（深区）<br>`#0f0e17` / `#2e2f3e`（浅区） | `#ff8906` / `#fffffe` | `#f25f4c` / `#e53170` |
| **Warm Espresso**<br>（Palette 16） | 生活方式、工作室、精品消费、咖啡/设计 | `#55423d` / `#271c19` | `#fffffe` / `#fff3ec` | `#ffc0ad` / `#271c19` | `#e78fb3` / `#9656a1` |
| **Electric Yellow Clean**<br>（Palette 14） | 创业公司落地页、高活力工具、教育产品 | `#fffffe` / `#e3f6f5` | `#272343` / `#2d334a` | `#ffd803` / `#272343` | `#bae8e8` / `#272343`（反转卡） |
| **Indigo Rose**<br>（Palette 12） | 创意科技、个人作品集、社区产品 | `#232946` / `#d4d8f0` | `#fffffe` / `#b8c1ec`（深区）<br>`#232946` / `#232946`（浅区） | `#eebbc3` / `#232946` | `#121629`（描边） / `#fffffe` |
| **Slate Dark SaaS**<br>（Palette 4） | 暗黑模式控制台、代码编辑器、IDE/AI 面板 | `#16161a` / `#242629` | `#fffffe` / `#94a1b2` | `#7f5af0` / `#fffffe` | `#72757e` / `#2cb67d` |

> **关键细节**：即便是唯一的暗黑带紫色板（Palette 4），也绝不使用纯黑 `#000000` 和模糊霓虹光晕，而是采用 `#16161a` 主画布 + `#242629` 抬升卡片 + `#010101` 锐利描边 + `#2cb67d` 功能绿形成克制层次。

---

## 三、开箱即用代码文件
本技能内置了完整可直接引入项目的配色与排版 Token 预设：
- CSS 变量色板库：`references/tokens/palettes.css`
- 字体排版变量库：`references/tokens/typography.css`
- Tailwind 主题配置：`references/tokens/tailwind-theme.css`
