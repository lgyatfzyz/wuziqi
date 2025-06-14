# 🎮 井字棋游戏运行指南

## 📋 前置要求
- Android Studio （最新版本）
- Android SDK （API 24或更高）
- Java/JDK（Android Studio自带）

## 🚀 详细运行步骤

### 1. 打开Android Studio
- 启动Android Studio应用程序
- 如果是首次使用，按照设置向导完成初始配置

### 2. 导入项目
```
File → Open → 选择项目文件夹
C:\Users\lgy\Desktop\AI\AI coding\test 3 wuziqi
```

### 3. 等待Gradle同步
- 项目打开后，Android Studio会自动开始同步
- 底部状态栏显示同步进度
- 等待完成（可能需要3-5分钟）

### 4. 创建或选择设备

#### 选项A：使用虚拟设备（推荐新手）
1. 点击工具栏 "AVD Manager" 📱
2. 点击 "Create Virtual Device"
3. 选择 "Phone" → "Pixel 4" 或类似设备
4. 选择系统镜像：
   - API 30 (Android 11) 或更高
   - 下载镜像（如果尚未下载）
5. 点击 "Finish"
6. 在AVD列表中点击 ▶️ 启动虚拟设备

#### 选项B：使用真实设备
1. 在手机设置中启用"开发者选项"
2. 开启"USB调试"
3. 用USB线连接手机到电脑
4. 允许USB调试权限

### 5. 运行应用
1. 确保设备已选择（在工具栏设备下拉菜单中）
2. 点击绿色 ▶️ "Run app" 按钮
3. 或按快捷键 Shift + F10
4. 等待编译和安装完成

## 🎯 游戏界面说明

### 主菜单
- **单人模式**：与AI对战
- **双人模式**：与朋友对战

### 游戏设置
- **棋盘大小**：3x3, 7x7, 11x11
- **胜利条件**：3连, 4连, 5连
- **AI难度**：简单到非常困难

### 游戏界面
- 点击空格下棋
- 底部显示当前回合
- 悔棋和返回按钮

## ❗ 常见问题解决

### 问题1：Gradle同步失败
```
解决方案：
1. File → Invalidate Caches and Restart
2. 等待重新同步
```

### 问题2：设备未识别
```
真实设备：
1. 检查USB调试是否开启
2. 重新连接USB线
3. 允许调试权限

虚拟设备：
1. 重启AVD Manager
2. 重新创建虚拟设备
```

### 问题3：编译错误
```
解决方案：
1. Build → Clean Project
2. Build → Rebuild Project
3. 检查网络连接（下载依赖）
```

## 🆘 获取帮助

如果以上步骤仍有问题，请提供：
1. 错误消息截图
2. Android Studio版本
3. 操作系统版本
4. 具体卡在哪一步

---
**祝您游戏愉快！** 🎮✨ 