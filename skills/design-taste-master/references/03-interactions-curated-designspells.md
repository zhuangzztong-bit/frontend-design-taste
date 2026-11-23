# 03 · 设计交互与微动效参考库（Curated & Design Spells 15 个真实案例拆解）

> 来源实测：`https://www.curated.design`（高质量实时交互网站库）与 `https://designspells.com`（15 个经浏览器帧级实测的产品微交互与动效案例）。  
> 适用场景：动效设计、悬停/按压反馈、页面与组件过渡、加载与状态指示、内联二次确认、空状态与品牌彩蛋。

---

## 一、Design Spells 15 个真实微交互与动效深度拆解

### A. 空间连续性与原地 Morph（消除弹窗与生硬跳转）

| 编号与产品 | 原始标题与标签 | 帧级实测动效机制 | 解决的核心体验问题与前端实现映射 |
| :--- | :--- | :--- | :--- |
| **Spell 329 · Things take time** | **Delete confirmation animation in Things take time**<br>(`Mobile / Interaction / Button`) | 底部操作区默认并排展示红色小垃圾桶按钮 `[🗑]` 与白色长按钮 `[UPDATE]`；点击垃圾桶时，无需弹出模态框，垃圾桶与主按钮在原水平轨道内直接**共享容器拉伸变形（Morph）**为通栏亮红色 `[🗑 DELETE ENTRY]` 确认按钮。 | **消灭阻断式 `confirm()` 弹窗**。用户手指无需离开底部操作热区即可完成“触发 → 二次确认”，用原地宽度插值（FLIP / `layoutId` / View Transition）实现极高防误触与心流连续性。 |
| **Spell 350 · One Year** | **Day highlight morphs into the search bar in One Year**<br>(`Mobile / Interaction / Motion / Transition`) | 顶部淡紫玻璃质感的当前日期高亮胶囊在触发搜索时，通过共享元素形变（Shared Element Morph）直接横向拉伸展开为顶部半透明搜索栏（左侧淡入放大镜、右侧淡入清除 `×`）。 | 保持视觉锚点与空间位置连续，避免整页路由切换打断浏览记忆；对应 CSS `view-transition-name` 或 Motion `layoutId`。 |
| **Spell 265 · Shop** | **Back button rolls in and out from behind the tab bar in Shop**<br>(`Mobile / Interaction / Animation / Button`) | 底部悬浮胶囊导航栏（Home / Search / Orders）在进入子层级时，一枚独立圆形 `<` 返回按钮从胶囊左侧背后**边平移边旋转滚出（`translateX` + `rotate`）**；返回顶层时反向滚回胶囊背后隐藏。 | 赋予 UI 组件真实物理遮挡与层叠关系（从主导航背后“滚出来”而非凭空闪现），同时把返回键带回大拇指舒适热区。 |
| **Spell 354 · Dia** | **Swipe and hold to view tab history and navigate back on Dia**<br>(`Desktop / Interaction / Motion / Unique`) | 网页浏览执行“滑动并长按”手势时，不生硬立即跳回上一页，而是平滑展开当前标签页的历史记录卡片栈（含站点图标与标题），悬停高亮选中目标，松手一步直达。 | 将高频但机械的“反复点后退”升级为可预览、可连续选点的手势菜单，减少盲操挫败感。 |

---

### B. 状态指示、加载与桌面端精细交互（克制、高信噪比）

| 编号与产品 | 原始标题与标签 | 帧级实测动效机制 | 解决的核心体验问题与前端实现映射 |
| :--- | :--- | :--- | :--- |
| **Spell 245 · Linear** | **Reconnecting animation when offline in Linear**<br>(`Desktop / Animation / Button`) | 顶栏左侧胶囊按钮内嵌一枚 **5×5 点阵网格（dot-matrix）** 图标 + 状态文案（`Reconnecting` / `Offline`）；断网重连时，25 个小圆点按波浪相位依次明暗律动，不弹窗、不遮挡主列表。 | **工程级克制状态指示**。用极小面积的矩阵律动代替刺眼的整条红色警告横幅或旋转大菊花，完美契合流派 B/D（`data-motion="precise"` / `"technical"`）。 |
| **Spell 260 · Luma** | **Buttons with hover effects that follow the cursor in Luma**<br>(`Desktop / Interaction / Button`) | 鼠标移入 `Invite Guests` 等操作卡片时，卡片内部产生一团柔和的浅蓝色径向光斑（radial-gradient）与边框高亮，光斑圆心**实时跟随鼠标在按钮内的 `(x, y)` 坐标平滑移动**。 | 替代廉价的 `hover:scale-105` 整卡放大。卡片几何尺寸完全不动（零布局抖动），仅用受控的局部光照反馈传达精致触感。 |
| **Spell 328 · Granola** | **Sidebar icon animation in Granola**<br>(`Desktop / Animation / Button`) | 点击左上角圆形侧栏开关时，侧栏水平收起/展开；与此同时，按钮内部的“侧栏图标框”同步微缩/拉伸其左半边宽度，右上角绿色状态小圆点平滑缩放显隐。 | **图标与受控容器同构运动**。按钮图标本身就是侧栏物理状态的微缩映射，让开关动作具备极强的机械咬合感。 |
| **Spell 318 · Dropbox** | **File upload animation in Dropbox**<br>(`Desktop / Interaction / Animation`) | 拖拽文件进入页面时，工作区四周立即浮现蓝色虚线描边，底部弹出深色胶囊提示 `Drop your files to upload to the folder 'Design Spells'`，光标旁同步附着绿色 `+` 号徽章。 | 明确“有效投放边界 + 目标文件夹上下文”，消除拖拽上传时“松手会传到哪”的不确定感。 |

---

### C. 连续输入反馈、情绪递进与有分寸的品牌彩蛋

| 编号与产品 | 原始标题与标签 | 帧级实测动效机制 | 解决的核心体验问题与前端实现映射 |
| :--- | :--- | :--- | :--- |
| **Spell 333 · ChatGPT** | **Effort selection animations in ChatGPT**<br>(`Desktop / Interaction / Animation`) | 拖动思考强度滑块（Effort slider）时，轨道颜色从冷静蓝平滑过渡到高能紫，滑向高档位时轨道内浮现细微白色星尘粒子，上方提示文案同步平滑切换为 `Consumes usage limits faster`。 | **把抽象算力/成本可视化**。用色彩温度 + 粒子密度 + 即时文案联动，让用户直观感知档位变化带来的能力与消耗差异。 |
| **Spell 341 · ElevenLabs** | **Orb picker in ElevenLabs**<br>(`Desktop / Interaction / Unique`) | 声音模型选择器将不同音色具象化为环绕排列的流体彩色球体（Orbs）；点击切换时，目标球体平滑居中放大，右侧浮现播放/暂停按钮，左上角弹出 `Natural` 音色特征气泡。 | 为无形的音频/AI 模型赋予可触摸的视觉材质与空间焦点旋转，比干瘪的下拉菜单更具探索欲。 |
| **Spell 351 · Instagram** | **Super Like animation when holding down the like button**<br>(`Mobile / Animation / Button / Confetti`) | 长按爱心按钮时，按钮弹性放大并沿弧线连续向上发射渐变爱心粒子，同步跳出实时累加数字（`1 ❤️`）与底部氛围柔光。 | **交互时长 = 情感强度**。短按轻反馈、长按递进粒子反馈，非常适合流派 A（社交/多智能体派对 `data-motion="playful"`）。 |
| **Spell 323 · Strava** | **Transition animation when completing an activity on Strava**<br>(`Mobile / Animation / Unique / Button / Transition`) | 完成运动记录时，界面切入高反差深黑画布，中央浮现简洁有力的 `Nice work!`，四周散落单色白线勾勒的跑鞋与点赞图标并沿斜向缓慢漂移。 | **克制的高光庆祝时刻**。不用俗套的五彩纸屑轰炸全屏，而是用高度贴合业务领域的单色线条符号制造仪式感。 |
| **Spell 349 · Notion Calendar** | **What's new flow in Notion Calendar**<br>(`Mobile / Animation / Occasion / Transition`) | 在 `Something new is here` 更新引导页的 `Next` 按钮上方，嵌入极简黑白线条小兔子探头 + 蓝色魔法棒轻点微动画。 | 冲淡效率工具的冰冷感，用极小面积的品牌插画微动效提升新功能引导完读率。 |
| **Spell 347 · Vercel** | **Halloween easter egg when hovering on Vercel's logo**<br>(`Desktop / Easter Egg / Animation / Occasion / 3D`) | 鼠标悬停在左上角极简三角 Logo 上时，平面三角平滑翻转/拉伸出 3D 立体切面与节日光影，顶栏其余导航纹丝不动。 | **零布局侵入的惊喜**。彩蛋严格限制在 Logo 自身边界内，绝不破坏导航可用性。 |
| **Spell 353 · Google** | **"Shaken, not stirred" easter egg when searching for "Robert Pattinson"**<br>(`Desktop / Easter Egg / Animation / Occasion`) | 搜索特定电影文化关键词时触发专属彩蛋动效，常规工作搜索零触发。 | 遵循“彩蛋零干扰原则”——只在精确意图或节日边缘触发，以零日常成本换取高传播度。 |

---

## 二、Curated 真实高水准交互站点观察

1. **Santal**（建筑与室内设计工作室）：克制的滚动节奏与高精度图片 `clip-path` 揭示，用长时长减速曲线（`600ms~700ms`，`--ease-enter`）营造沉静呼吸感。
2. **Subframe**（连接可视化设计与代码的 AI 设计工具）：交互演示直接让用户在首屏实时拖拽/切换组件属性，**把产品核心交互前置为可玩沙盒**。
3. **Aren**（AI 医疗护理软件）：用清晰的微动效展示数据流与状态切换，配色温暖专业，彻底摆脱“暗黑赛博 AI”刻板印象。
4. **Aonnoy Sengupta Portfolio / Vendredi Society / VS Goods**：精细光标态（仅在作品卡片悬停时切换为 `View` / `Drag` 胶囊）与物理弹簧（`linear()` spring）缓动。

---

## 三、深度动效编排与代码级 Token 入口

关于**六大场景动效人格（`[data-motion]`）**、**阻尼弹簧物理公式生成的 `linear()` 曲线**、**进出场非对称时长定理**、**View Transitions / `@starting-style` / Scroll-driven 原生配方**，请直接查阅：
- 动效编排体系与规范：[06-motion-choreography-system.md](06-motion-choreography-system.md)
- 开箱即用动效 CSS Token 与 9 大配方：[tokens/motion.css](tokens/motion.css)
