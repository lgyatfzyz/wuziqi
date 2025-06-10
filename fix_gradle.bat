@echo off
echo ========================================
echo        井字棋项目 Gradle 修复工具
echo ========================================
echo.

echo 第1步：清理旧的Gradle缓存...
if exist "%USERPROFILE%\.gradle" (
    echo 删除用户Gradle目录...
    rmdir /s /q "%USERPROFILE%\.gradle" 2>nul
)

if exist ".gradle" (
    echo 删除项目Gradle目录...
    rmdir /s /q ".gradle" 2>nul
)

echo.
echo 第2步：创建项目本地Gradle目录...
mkdir "gradle\wrapper\dists" 2>nul

echo.
echo 第3步：检查项目文件...
if not exist "gradle\wrapper\gradle-wrapper.properties" (
    echo 错误：gradle-wrapper.properties 文件不存在！
    pause
    exit /b 1
)

echo.
echo 第4步：检查Java环境...
java -version >nul 2>&1
if errorlevel 1 (
    echo.
    echo ⚠️  警告：未找到Java环境
    echo 建议使用Android Studio，它包含Java运行时
    echo.
    echo 请选择：
    echo 1. 下载Android Studio（推荐）
    echo 2. 继续尝试
    choice /c 12 /m "请选择"
    if errorlevel 2 goto continue
    if errorlevel 1 goto android_studio
)

:continue
echo.
echo 第5步：尝试运行Gradle...
call gradlew.bat --version
if errorlevel 1 (
    echo.
    echo ❌ Gradle运行失败
    echo 强烈建议使用Android Studio
    goto android_studio
) else (
    echo.
    echo ✅ Gradle运行成功！
    echo 可以尝试构建项目：
    echo gradlew.bat assembleDebug
)
goto end

:android_studio
echo.
echo 📱 推荐使用Android Studio：
echo 1. 访问：https://developer.android.com/studio
echo 2. 下载并安装Android Studio
echo 3. 打开此项目文件夹
echo 4. 等待自动配置完成
echo.

:end
echo.
echo 修复脚本执行完成！
pause 