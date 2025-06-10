# 📱 创建Android虚拟设备详细步骤

## 🎯 推荐配置（稳定可靠）

### 第一步：打开AVD Manager
1. 在Android Studio中点击工具栏的 📱 **AVD Manager**
2. 或者通过菜单：`Tools → AVD Manager`

### 第二步：创建新设备
1. 点击 **"+ Create Virtual Device"**
2. 选择设备类型：**Phone**
3. 推荐设备型号：
   - **Pixel 4** (5.7", 1080x2280, API 30+)
   - **Pixel 3a** (5.6", 1080x2220, API 30+) - 较低配置
   - **Nexus 5X** (5.2", 1080x1920, API 30+) - 最低配置

### 第三步：选择系统镜像
1. 点击 **"Next"**
2. 选择系统镜像：
   ```
   推荐选择：
   - API 30 (Android 11.0) - Google APIs
   - API 31 (Android 12.0) - Google APIs
   - API 33 (Android 13.0) - Google APIs
   ```
3. 如果没有下载，点击 **"Download"** 等待下载完成
4. 点击 **"Next"**

### 第四步：配置设备
1. 设备名称：保持默认或改为 `TicTacToe_Test`
2. **重要配置项：**
   ```
   Graphics: Hardware - GLES 2.0
   RAM: 2048 MB (推荐)
   VM Heap: 256 MB
   Internal Storage: 6 GB
   ```
3. 高级设置（Advanced Settings）：
   ```
   Camera: Webcam0 (如果需要)
   Network: Full
   Host GPU: 勾选 ✅
   ```

### 第五步：完成创建
1. 点击 **"Finish"**
2. 等待设备创建完成

## 🚀 启动和测试

### 启动虚拟设备
1. 在AVD列表中找到您的设备
2. 点击 ▶️ **Actions → Play**
3. 等待启动（首次启动较慢，约2-5分钟）
4. 看到Android桌面即表示成功

### 运行井字棋游戏
1. 确保虚拟设备已完全启动
2. 回到Android Studio
3. 在设备选择器中选择您的虚拟设备
4. 点击 ▶️ **Run 'app'**
5. 等待应用安装和启动

## ❗ 故障排除

### 虚拟设备启动很慢
```
解决方案：
1. 关闭其他占用资源的程序
2. 增加电脑RAM分配给Android Studio
3. 选择较低配置的设备型号
```

### 设备黑屏或无响应
```
解决方案：
1. 在AVD Manager中停止设备
2. 重新启动设备
3. 如果问题持续，删除并重新创建设备
```

### Graphics错误
```
解决方案：
1. 在Advanced Settings中改为:
   Graphics: Software - GLES 2.0
2. 取消勾选 Host GPU
```

## 🔍 验证设备工作正常

启动成功的标志：
- ✅ 看到Android桌面
- ✅ 可以点击应用抽屉
- ✅ 设备选择器显示设备名称
- ✅ Run按钮可以正常使用

---
**设备创建成功后，您就可以愉快地测试井字棋游戏了！** 🎮 