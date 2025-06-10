# Gradle 同步问题解决指南 / Gradle Sync Troubleshooting Guide

## 🚨 常见错误：JAVA_HOME未设置 / Common Error: JAVA_HOME Not Set

**错误信息 / Error Message:**
```
ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
```

## 🎯 最佳解决方案：使用Android Studio / Best Solution: Use Android Studio

### ✅ 推荐方法 / Recommended Method

**Android Studio会自动处理所有JDK配置！**
**Android Studio automatically handles all JDK configuration!**

#### 步骤 / Steps:
1. **启动Android Studio**
2. **选择 "Open"**
3. **浏览到项目文件夹并选择**
4. **等待自动Gradle同步**

这是最简单可靠的方法！
This is the simplest and most reliable method!

---

## 🔧 其他解决方案 / Alternative Solutions

### 方案1：临时设置JAVA_HOME / Solution 1: Temporary JAVA_HOME

运行项目提供的脚本：
```bash
# 双击运行
setup_android_studio_jdk.bat
```

或手动执行：
```bash
# 设置Android Studio JDK路径
set "JAVA_HOME=C:\Program Files\Android\Android Studio\jbr"
set "PATH=%JAVA_HOME%\bin;%PATH%"

# 验证设置
java -version
./gradlew --version
```

### 方案2：系统环境变量 / Solution 2: System Environment Variables

#### Windows步骤 / Windows Steps:
1. 右键 "此电脑" → "属性"
2. "高级系统设置" → "环境变量"
3. 系统变量 → "新建"
4. 变量名：`JAVA_HOME`
5. 变量值：`C:\Program Files\Android\Android Studio\jbr`
6. 编辑PATH变量，添加：`%JAVA_HOME%\bin`

### 方案3：下载独立JDK / Solution 3: Download Standalone JDK

#### JDK下载地址 / JDK Download Links:
- **OpenJDK 17**: https://openjdk.org/projects/jdk/17/
- **OpenJDK 21**: https://openjdk.org/projects/jdk/21/
- **Oracle JDK**: https://www.oracle.com/java/technologies/downloads/

推荐版本：JDK 17或21（稳定且兼容性好）
Recommended: JDK 17 or 21 (stable and compatible)

---

## 🔍 具体错误诊断 / Specific Error Diagnosis

### 错误1：Gradle版本不兼容 / Error 1: Gradle Version Incompatibility

**症状 / Symptoms:**
```
Gradle version X.X is not compatible with Android Gradle Plugin Y.Y
```

**解决方案 / Solution:**
```bash
# 检查兼容性
./gradlew wrapper --gradle-version=8.5
```

**版本对应表 / Version Compatibility:**
- Gradle 8.5 ↔ Android Gradle Plugin 8.5.x
- JDK 17-24 ↔ 所有现代版本

### 错误2：依赖解析失败 / Error 2: Dependency Resolution Failed

**症状 / Symptoms:**
```
Could not resolve dependencies
Network timeout
```

**解决方案 / Solution:**
1. **检查网络连接**
2. **配置代理（如需要）**
```properties
# gradle.properties
systemProp.http.proxyHost=your-proxy-host
systemProp.http.proxyPort=your-proxy-port
```

### 错误3：内存不足 / Error 3: Out of Memory

**症状 / Symptoms:**
```
OutOfMemoryError
GC overhead limit exceeded
```

**解决方案 / Solution:**
已在 `gradle.properties` 中优化：
```properties
org.gradle.jvmargs=-Xmx3g -Dfile.encoding=UTF-8
```

---

## 🚀 快速修复脚本 / Quick Fix Script

创建了自动化脚本来帮助诊断和修复问题：

### 运行诊断脚本 / Run Diagnostic Script
```bash
# 双击运行
setup_android_studio_jdk.bat
```

### 手动检查清单 / Manual Checklist
```bash
# 1. 检查Java安装
java -version

# 2. 检查Gradle
./gradlew --version

# 3. 清理项目
./gradlew clean

# 4. 重新构建
./gradlew build
```

---

## 📱 Android Studio内部解决方案 / Android Studio Internal Solutions

### 如果在Android Studio中仍然遇到问题 / If Still Having Issues in Android Studio

#### 清理缓存 / Clear Caches
1. `File` → `Invalidate Caches and Restart`
2. 选择 "Invalidate and Restart"

#### 检查Gradle设置 / Check Gradle Settings
1. `File` → `Settings` (或 `Preferences` on Mac)
2. `Build, Execution, Deployment` → `Build Tools` → `Gradle`
3. 确保 "Use Gradle from: 'gradle-wrapper.properties file'" 已选中
4. 确保 "Gradle JDK" 指向有效的JDK（通常是Android Studio JDK）

#### 重新同步 / Re-sync
1. 点击 "Sync Project with Gradle Files" 按钮
2. 或 `Tools` → `Android` → `Sync Project with Gradle Files`

---

## 🎯 项目特定配置 / Project-Specific Configuration

本项目已优化为使用稳定版本：

### 当前配置 / Current Configuration
- **Gradle**: 8.5
- **Android Gradle Plugin**: 8.5.2
- **Kotlin**: 1.9.24
- **JDK Target**: 17
- **Compile SDK**: 35
- **Min SDK**: 24

### 测试构建 / Test Build
```bash
# 在Android Studio Terminal中运行
./gradlew clean
./gradlew assembleDebug
```

---

## 📞 获取帮助 / Get Help

### 如果问题仍然存在 / If Problems Persist

1. **检查Android Studio Event Log**
   - `View` → `Tool Windows` → `Event Log`

2. **查看详细错误信息**
   - `View` → `Tool Windows` → `Build`

3. **运行Gradle扫描**
   ```bash
   ./gradlew build --scan
   ```

4. **查看项目文档**
   - `SETUP_ANDROID_STUDIO.md`
   - `JDK24_COMPATIBILITY_GUIDE.md`

### 联系支持 / Contact Support
- 查看项目README.md
- 检查CHANGELOG.md中的已知问题
- 参考BUILD_GUIDE.md

---

## ✅ 成功标志 / Success Indicators

当Gradle同步成功时，您应该看到：
- ✅ Android Studio底部显示 "Gradle sync successful"
- ✅ 项目结构正常显示在左侧面板
- ✅ 没有红色错误标记
- ✅ 可以看到绿色的运行按钮

**记住：Android Studio是最简单的解决方案！它包含了所有必要的工具和JDK！**

**Remember: Android Studio is the simplest solution! It includes all necessary tools and JDK!** 