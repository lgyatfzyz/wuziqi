# 井字棋应用构建指南

## 🔧 问题解决

### 当前遇到的构建错误解决方案

#### 1. 插件错误解决
已修复的问题：
- ✅ 修复了 `kotlin-kapt` 插件声明错误
- ✅ 更新为正确的插件ID：`org.jetbrains.kotlin.kapt`
- ✅ 修复了Hilt插件声明：`com.google.dagger.hilt.android`

#### 2. 环境要求
在构建此项目之前，请确保您的开发环境满足以下要求：

**必需软件：**
- ✅ Android Studio (推荐最新版本)
- ✅ JDK 8 或更高版本
- ✅ Android SDK (API Level 24+)

**推荐方式：使用Android Studio**
1. 下载并安装 [Android Studio](https://developer.android.com/studio)
2. 打开Android Studio
3. 选择 "Open an existing project"
4. 导航到项目文件夹并打开
5. Android Studio会自动处理Gradle配置和依赖下载

## 🚀 快速开始

### 方法1：使用Android Studio（推荐）
1. 启动Android Studio
2. 点击 "Open" 按钮
3. 选择项目根目录
4. 等待Gradle同步完成
5. 点击运行按钮或按 `Shift + F10`

### 方法2：命令行构建
如果您已正确配置Java环境：
```bash
# Windows
.\gradlew.bat assembleDebug

# macOS/Linux
./gradlew assembleDebug
```

## 📋 项目结构检查
确保您的项目包含以下文件：
- ✅ `build.gradle.kts` (根目录)
- ✅ `settings.gradle.kts`
- ✅ `app/build.gradle.kts`
- ✅ `gradle/wrapper/gradle-wrapper.properties`
- ✅ `gradlew.bat` (Windows)
- ✅ `gradlew` (Unix/Linux)

## 🐛 常见问题解决

### 问题1：找不到Java
**错误信息：** `java: command not found` 或 `JAVA_HOME is not set`

**解决方案：**
1. 安装Java JDK 8+
2. 或者直接使用Android Studio（内置Java运行时）

### 问题2：Gradle同步失败
**解决方案：**
1. 删除 `.gradle` 文件夹（如果存在）
2. 在Android Studio中选择 "File > Sync Project with Gradle Files"
3. 等待同步完成

### 问题3：依赖下载失败
**解决方案：**
1. 检查网络连接
2. 在Android Studio中选择 "File > Settings > Build > Gradle"
3. 选择 "Use Gradle from: 'gradle-wrapper.properties file'"

## 📱 运行应用

### 在模拟器中运行
1. 在Android Studio中创建AVD（Android Virtual Device）
2. 启动模拟器
3. 点击运行按钮

### 在真实设备上运行
1. 启用开发者选项和USB调试
2. 连接设备到电脑
3. 在Android Studio中选择您的设备
4. 点击运行按钮

## 🎯 构建目标
- **调试版本：** 用于开发和测试
- **发布版本：** 用于分发（需要签名）

## 📞 获得帮助
如果遇到问题：
1. 检查Android Studio的Build Output窗口
2. 查看Gradle Console的错误信息
3. 确保所有依赖项都正确下载

---

**注意：** 建议使用Android Studio进行开发，它会自动处理大部分构建配置问题。 