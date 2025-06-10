@echo off
echo ===============================================
echo    井字棋项目 - Android Studio JDK 配置助手
echo    Tic Tac Toe - Android Studio JDK Setup Helper
echo ===============================================
echo.

echo 检测Android Studio JDK路径...
echo Detecting Android Studio JDK paths...
echo.

REM 常见的Android Studio JDK路径
set "AS_JDK_PATHS[0]=C:\Program Files\Android\Android Studio\jbr"
set "AS_JDK_PATHS[1]=C:\Program Files\Android\Android Studio\jre"
set "AS_JDK_PATHS[2]=C:\Users\%USERNAME%\AppData\Local\Android\Sdk\jdks"
set "AS_JDK_PATHS[3]=C:\Program Files\Java\jdk-17"
set "AS_JDK_PATHS[4]=C:\Program Files\Java\jdk-21"
set "AS_JDK_PATHS[5]=C:\Program Files\Java\jdk-24"

echo 正在搜索JDK安装位置...
echo Searching for JDK installations...
echo.

for /L %%i in (0,1,5) do (
    call set "current_path=%%AS_JDK_PATHS[%%i]%%"
    call :check_jdk_path "!current_path!"
)

echo.
echo ===============================================
echo 解决方案选择 / Solution Options:
echo ===============================================
echo.
echo 1. 使用Android Studio (推荐) / Use Android Studio (Recommended)
echo    - 打开Android Studio
echo    - File → Open → 选择项目文件夹
echo    - Android Studio会自动配置JDK
echo.
echo 2. 配置系统JAVA_HOME
echo    - 手动设置JAVA_HOME环境变量
echo    - 指向Android Studio的JDK路径
echo.
echo 3. 下载并安装JDK 17/21/24
echo    - 访问: https://openjdk.org/
echo    - 下载OpenJDK并安装
echo.

echo 选择一个解决方案 (1-3):
set /p choice="Enter your choice (1-3): "

if "%choice%"=="1" goto android_studio_solution
if "%choice%"=="2" goto java_home_solution  
if "%choice%"=="3" goto download_jdk_solution

:android_studio_solution
echo.
echo ===============================================
echo 推荐解决方案: 使用Android Studio
echo ===============================================
echo.
echo 步骤:
echo 1. 启动Android Studio
echo 2. 选择 "Open an existing Android Studio project"
echo 3. 浏览到项目文件夹: %CD%
echo 4. 点击 "OK" 打开项目
echo 5. Android Studio会自动处理Gradle同步
echo.
echo Android Studio包含内置JDK，无需额外配置！
echo.
pause
goto end

:java_home_solution
echo.
echo ===============================================
echo 解决方案2: 配置JAVA_HOME
echo ===============================================
echo.
echo 创建set_java_home.bat脚本...

(
echo @echo off
echo REM 临时设置JAVA_HOME为Android Studio JDK
echo set "JAVA_HOME=C:\Program Files\Android\Android Studio\jbr"
echo set "PATH=%%JAVA_HOME%%\bin;%%PATH%%"
echo echo JAVA_HOME已设置为: %%JAVA_HOME%%
echo echo 现在可以运行Gradle命令
echo cmd /k
) > set_java_home.bat

echo.
echo 已创建 set_java_home.bat 脚本
echo 运行此脚本来临时设置JAVA_HOME
echo.
echo 或者手动设置系统环境变量:
echo 1. 右键"此电脑" → 属性 → 高级系统设置
echo 2. 环境变量 → 新建系统变量
echo 3. 变量名: JAVA_HOME
echo 4. 变量值: C:\Program Files\Android\Android Studio\jbr
echo.
pause
goto end

:download_jdk_solution
echo.
echo ===============================================
echo 解决方案3: 下载JDK
echo ===============================================
echo.
echo JDK下载链接:
echo.
echo OpenJDK 17: https://openjdk.org/projects/jdk/17/
echo OpenJDK 21: https://openjdk.org/projects/jdk/21/
echo OpenJDK 24: https://openjdk.org/projects/jdk/24/
echo.
echo Oracle JDK: https://www.oracle.com/java/technologies/downloads/
echo.
echo 推荐下载OpenJDK 17或21，这些版本非常稳定。
echo.
echo 安装后记得设置JAVA_HOME环境变量！
echo.
pause
goto end

:check_jdk_path
set "jdk_path=%~1"
if exist "%jdk_path%\bin\java.exe" (
    echo ✓ 找到JDK: %jdk_path%
    "%jdk_path%\bin\java.exe" -version 2>nul
    echo.
) else (
    echo ✗ 未找到: %jdk_path%
)
goto :eof

:end
echo.
echo ===============================================
echo 配置完成！
echo ===============================================
echo.
echo 如果仍有问题，请:
echo 1. 重启Android Studio
echo 2. File → Invalidate Caches and Restart
echo 3. 检查项目的Gradle设置
echo.
echo 技术支持: 查看项目中的SETUP_ANDROID_STUDIO.md文件
echo.
pause 