# Tic Tac Toe 井字棋游戏

## 项目目标
开发一款支持多种玩法和自定义选项的井字棋（Tic Tac Toe）Android应用，适合初中生用户，界面美观，操作简单，体验流畅。

## 主要功能
- 单人模式（玩家 vs AI）
- 双人模式（玩家 vs 玩家）
- 棋盘尺寸选择：3x3、7x7、11x11
- 连子数选择：3、4、5
- 先手选择：玩家或AI/对手
- AI难度选择：简单、中等、困难（困难模式使用最高级AI算法）
- 游戏底部广告栏，最大限度减少对游戏体验的影响

## 界面结构
### 1. 启动页/主菜单
- 游戏LOGO
- "单人模式"按钮
- "双人模式"按钮
- "设置"按钮（可选）

### 2. 游戏设置页
- 棋盘尺寸选择（3x3、7x7、11x11）
- 连子数选择（3、4、5）
- 先手选择（玩家/AI/对手）
- AI难度选择（单人模式下：简单、中等、困难）
- "开始游戏"按钮

### 3. 游戏对局页
- 顶部：返回按钮、当前模式/难度显示
- 中部：棋盘（自适应大小，手指易于点击）
- 棋盘下方：当前回合提示
- 底部：广告栏（固定在底部，不遮挡棋盘和操作按钮）
- 底部操作按钮：悔棋、提示（可选）

## 交互流程
1. 用户打开App，进入主菜单。
2. 选择"单人模式"或"双人模式"。
3. 进入设置页，选择棋盘大小、连子数、先手、（AI难度）。
4. 点击"开始游戏"，进入对局页。
5. 游戏过程中，底部显示广告，棋盘和操作区不被遮挡。
6. 游戏结束后，弹窗显示胜负结果，可选择"再来一局"或"返回主菜单"。

## 技术选型
- 语言：Kotlin 2.0.21
- UI框架：Jetpack Compose（Material Design 3）
- 架构：MVVM
- 数据存储：Room数据库
- 响应式编程：Kotlin Flow + Coroutines
- 依赖注入：Hilt 2.51.1
- 广告集成：Google AdMob
- JDK支持：JDK 17-24（推荐JDK 24）
- Android版本：API 24-35（Android 7.0-15）

## 开发状态
- ✅ 完成README.md和界面原型设计
- ✅ 实现主菜单和设置页界面
- ✅ 实现棋盘和对局逻辑（支持不同尺寸和胜利条件）
- ✅ 集成AI算法及难度选择
- ✅ 集成广告栏，优化用户体验
- ✅ 适配不同设备和屏幕尺寸
- ✅ 代码优化与注释，完善错误处理
- 🚧 多语言支持（已完成英文、中文）
- ✅ 项目总结与优化建议
- ✅ 每次大更改是在一个log文件里简要记录更改时间和内容

## 项目架构
```
app/src/main/java/com/tictactoe/game/
├── data/model/          # 数据模型层
│   └── GameModels.kt    # 游戏数据模型
├── domain/              # 业务逻辑层
│   ├── GameEngine.kt    # 游戏逻辑引擎
│   └── AIPlayer.kt      # AI算法实现
├── presentation/        # 表现层
│   ├── viewmodel/       # ViewModel
│   ├── screen/          # 界面组件
│   ├── component/       # UI组件
│   └── navigation/      # 导航管理
├── ui/theme/            # 主题配置
└── MainActivity.kt      # 主Activity
```

## 已实现功能
1. **完整的游戏流程** - 从主菜单到游戏设置再到对局
2. **多种棋盘规格** - 3x3、7x7、11x11三种大小
3. **灵活的胜利条件** - 3连子、4连子、5连子
4. **智能AI对手** - 三种难度等级的AI算法（困难模式使用专业级算法）
5. **用户友好界面** - Material Design 3设计规范
6. **广告集成** - AdMob横幅广告
7. **多语言支持** - 中英文界面
8. **响应式设计** - 适配不同屏幕尺寸

---

如有新需求或建议，请随时补充！ 

## 语言支持
- 默认语言为系统语言，支持以下语言：
  - 英文（English）
  - 中文（Chinese）
  - 西班牙语（Español）
  - 印地语（Hindi）
  - 葡萄牙语（Português）
  - 俄语（Русский）
  - 日语（日本語）
  - 越南语（Tiếng Việt）
如果语言不支持系统语言，则显示英文（English）

