# GitHub 令牌使用指南

## 🎯 令牌用途

您提供的是 GitHub 个人访问令牌（Personal Access Token），可以用于：
- 推送代码到 GitHub 仓库
- 触发 GitHub Actions 工作流
- 访问 GitHub API

## 🔧 如何使用令牌

### 方法 1：修改 Git 远程地址（推荐）

**操作步骤：**

1. **打开命令行**：
   - 按 `Win + R` → 输入 `cmd` → 回车
   - 进入项目目录：
     ```bash
     cd d:\临时文件\it\年会抽奖系统\log-lottery-main
     ```

2. **更新远程地址**：
   ```bash
   git remote set-url origin https://<TOKEN>@github.com/Hongli62014/lottery-system.git
   ```
   - 替换 `<TOKEN>` 为您的令牌：`3fedb69d02c0a89c19fb1017624d0d55390f9014b3b7514f376a2d0d36e6101q`
   - 完整命令：
     ```bash
     git remote set-url origin https://3fedb69d02c0a89c19fb1017624d0d55390f9014b3b7514f376a2d0d36e6101q@github.com/Hongli62014/lottery-system.git
     ```

3. **测试推送**：
   ```bash
   git push
   ```
   - 预期结果：成功推送，无需输入密码

### 方法 2：使用 Git 凭证管理器

1. **安装 Git 凭证管理器**：
   - 下载地址：https://github.com/git-ecosystem/git-credential-manager/releases
   - 选择适合您系统的版本下载安装

2. **首次使用时输入令牌**：
   - 执行 `git push` 命令
   - 当提示输入密码时，输入您的 GitHub 令牌
   - 凭证管理器会自动保存令牌

## 🚀 令牌使用场景

### 场景 1：推送代码到 GitHub

**操作**：
```bash
cd d:\临时文件\it\年会抽奖系统\log-lottery-main
git add .
git commit -m "更新抽奖系统"
git push
```

### 场景 2：触发 GitHub Actions 工作流

**操作**：
```bash
cd d:\临时文件\it\年会抽奖系统\log-lottery-main
git push
```
- 推送代码后，GitHub Actions 会自动触发部署工作流
- 部署完成后，访问：`https://Hongli62014.github.io/lottery-system/`

## 🔒 令牌安全注意事项

1. **不要泄露令牌**：令牌相当于您的密码，不要分享给他人
2. **定期更换令牌**：建议每 3-6 个月更换一次令牌
3. **最小权限原则**：仅授予令牌必要的权限
4. **撤销泄露的令牌**：如果令牌泄露，立即在 GitHub 上撤销

## 📱 撤销令牌的方法

1. 访问 GitHub 账号设置：https://github.com/settings/tokens
2. 找到您的令牌
3. 点击「Delete」按钮
4. 确认撤销

## 🎉 开始使用

现在您可以使用这个令牌来进行 GitHub 相关操作了。如果您需要帮助执行具体命令，请告诉我！