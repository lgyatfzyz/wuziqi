# Android Studio 设置指南 / Android Studio Setup Guide

## 🚀 适用于JDK 24的现代化配置 / Modern Configuration for JDK 24

本项目已升级以完全兼容JDK 24和最新的Android开发工具链。

This project has been upgraded for full compatibility with JDK 24 and the latest Android development toolchain.

## 📋 系统要求 / System Requirements

### 最低要求 / Minimum Requirements
- **操作系统 / OS**: Windows 10/11, macOS 10.15+, Ubuntu 18.04+
- **内存 / RAM**: 8GB (推荐16GB / Recommended 16GB)
- **存储空间 / Storage**: 4GB可用空间 / 4GB available space
- **JDK**: JDK 17+ (推荐JDK 24 / Recommended JDK 24)

### 推荐配置 / Recommended Configuration
- **JDK**: JDK 24 (Oracle或OpenJDK / Oracle or OpenJDK)
- **Android Studio**: 最新稳定版 / Latest stable version
- **内存 / RAM**: 16GB+
- **SSD存储 / SSD Storage**: 推荐 / Recommended

## 🔧 详细安装步骤 / Detailed Installation Steps

### 第一步：下载Android Studio / Step 1: Download Android Studio
1. 访问官网 / Visit: https://developer.android.com/studio
2. 下载最新版本的Android Studio
3. 选择适合你操作系统的版本 / Choose your OS version

### 第二步：安装Android Studio / Step 2: Install Android Studio

#### Windows系统 / Windows
1. 双击下载的`.exe`文件
2. 按照安装向导提示操作
3. 选择"Standard"安装类型
4. 等待下载Android SDK组件

#### macOS系统 / macOS
1. 打开下载的`.dmg`文件
2. 将Android Studio拖拽到Applications文件夹
3. 首次启动时选择"Standard"设置
4. 允许下载必要组件

#### Linux系统 / Linux
```bash
# 解压下载的tar.gz文件
tar -xzf android-studio-*.tar.gz

# 进入android-studio/bin目录
cd android-studio/bin

# 启动Android Studio
./studio.sh
```

### 第三步：配置JDK / Step 3: Configure JDK

#### 检查当前JDK版本 / Check Current JDK Version
Android Studio会自动检测并使用内置的JDK。如果你想使用JDK 24：

1. 打开Android Studio
2. 进入 `File` → `Settings` (Windows/Linux) 或 `Android Studio` → `Preferences` (macOS)
3. 导航到 `Build, Execution, Deployment` → `Build Tools` → `Gradle`
4. 在"Gradle JDK"下拉菜单中选择JDK 24

#### 如果需要安装JDK 24 / If You Need to Install JDK 24
```bash
# 下载OpenJDK 24
# 访问: https://openjdk.org/projects/jdk/24/

# 或使用包管理器安装 / Or install via package manager:
# Windows (使用Chocolatey):
choco install openjdk24

# macOS (使用Homebrew):
brew install openjdk@24

# Ubuntu/Debian:
sudo apt update
sudo apt install openjdk-24-jdk
```

### 第四步：配置Android SDK / Step 4: Configure Android SDK
1. 在Android Studio中，打开SDK Manager (`Tools` → `SDK Manager`)
2. 确保安装以下组件：
   - ✅ Android 15 (API 35) - **最新版本**
   - ✅ Android 14 (API 34)
   - ✅ Android SDK Build-Tools 35.0.0
   - ✅ Android Emulator
   - ✅ Intel x86 Emulator Accelerator (HAXM installer)

### 第五步：导入项目 / Step 5: Import Project
1. 启动Android Studio
2. 选择 `Open an Existing Project`
3. 浏览到你的项目文件夹并选择
4. 等待Gradle同步完成

## 🎯 项目特定配置 / Project-Specific Configuration

### Gradle配置验证 / Gradle Configuration Verification
项目现在使用以下现代化版本：
- **Gradle**: 8.11.1
- **Android Gradle Plugin**: 8.7.2
- **Kotlin**: 2.0.21
- **Compose Compiler**: 1.5.15
- **Compile SDK**: 35 (Android 15)
- **Target SDK**: 35
- **Min SDK**: 24 (Android 7.0)

### 依赖项版本 / Dependencies Versions
```kotlin
// 最新稳定版本 / Latest stable versions
androidx.core:core-ktx:1.15.0
androidx.lifecycle:lifecycle-runtime-ktx:2.8.7
androidx.activity:activity-compose:1.9.3
androidx.compose:compose-bom:2024.12.01
androidx.navigation:navigation-compose:2.8.4
com.google.dagger:hilt-android:2.51.1
```

## 🔍 验证安装 / Verify Installation

### 检查JDK版本 / Check JDK Version
```bash
# 在Android Studio Terminal中运行 / Run in Android Studio Terminal
java -version
# 应该显示JDK 24.x.x / Should show JDK 24.x.x

javac -version
# 应该显示javac 24.x.x / Should show javac 24.x.x
```

### 检查Gradle版本 / Check Gradle Version
```bash
./gradlew --version
# 应该显示Gradle 8.11.1 / Should show Gradle 8.11.1
```

### 测试构建 / Test Build
```bash
# 清理项目 / Clean project
./gradlew clean

# 构建项目 / Build project
./gradlew build

# 如果一切正常，应该看到 "BUILD SUCCESSFUL"
# If everything is OK, you should see "BUILD SUCCESSFUL"
```

## 🚨 常见问题解决 / Troubleshooting

### 问题1：JDK版本不匹配 / Issue 1: JDK Version Mismatch
**症状 / Symptoms**: 编译错误或Gradle同步失败
**解决方案 / Solution**: 
1. 确保Android Studio使用JDK 17+
2. 在项目的`gradle.properties`中添加：
```properties
org.gradle.java.home=/path/to/jdk24
```

### 问题2：Gradle同步缓慢 / Issue 2: Slow Gradle Sync
**解决方案 / Solution**:
1. 在`gradle.properties`中添加：
```properties
org.gradle.parallel=true
org.gradle.caching=true
org.gradle.configureondemand=true
org.gradle.jvmargs=-Xmx4g -XX:+HeapDumpOnOutOfMemoryError
```

### 问题3：模拟器性能问题 / Issue 3: Emulator Performance
**解决方案 / Solution**:
1. 启用硬件加速 / Enable Hardware Acceleration
2. 在BIOS中启用VT-x (Intel) 或 AMD-V (AMD)
3. 使用x86_64映像而不是ARM映像

## 🎉 完成！ / Done!

现在你的Android Studio已经完全配置好，可以使用JDK 24和最新的Android开发工具了！

Your Android Studio is now fully configured to work with JDK 24 and the latest Android development tools!

## 📞 需要帮助？ / Need Help?

如果遇到任何问题，请：
1. 检查Android Studio的Event Log面板
2. 运行 `./gradlew --scan` 获取详细构建信息
3. 查看项目的其他文档文件

If you encounter any issues:
1. Check Android Studio's Event Log panel
2. Run `./gradlew --scan` for detailed build information
3. Check other documentation files in the project 