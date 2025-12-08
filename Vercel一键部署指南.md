# Vercel 一键部署指南

## 🎉 为什么选择 Vercel？

- ✅ **一键部署**：无需复杂配置
- ✅ **免费使用**：适合小型项目和测试
- ✅ **自动 HTTPS**：免费提供 HTTPS 证书
- ✅ **全球加速**：CDN 加速，访问速度快
- ✅ **自动构建**：GitHub 推送代码自动重新部署

## 📋 部署步骤

### 步骤 1：准备工作

1. **确保您的项目已上传到 GitHub**
   - 项目地址：`https://github.com/Hongli62014/lottery-system`
   - 确保代码已更新到最新版本

2. **安装必要配置文件**
   - 已创建 `vercel.json` 配置文件
   - 已修改 `vite.config.ts` 的 `base` 路径
   - 已确保构建命令 `npm run build` 可用

### 步骤 2：访问 Vercel 官网

1. 访问 [Vercel](https://vercel.com/)
2. 点击右上角「Sign Up」或「登录」
3. 选择「Continue with GitHub」使用 GitHub 账号登录
   - 授权 Vercel 访问您的 GitHub 账号

### 步骤 3：创建新项目

1. 登录后，点击「New Project」
   ![New Project](https://assets.vercel.com/image/upload/v1617785011/docs/new-project.png)

2. 点击「Import」按钮，导入您的 GitHub 仓库
   - 搜索仓库名称：`lottery-system`
   - 选择仓库：`Hongli62014/lottery-system`
   ![Import Repository](https://assets.vercel.com/image/upload/v1617785011/docs/import-repository.png)

### 步骤 4：配置部署选项

1. **Framework Preset**：选择 `Vue.js`
2. **Build Command**：自动填充为 `npm run build`
3. **Output Directory**：自动填充为 `dist`
4. **Environment Variables**：无需添加
5. 点击「Deploy」按钮开始部署
   ![Deploy Settings](https://assets.vercel.com/image/upload/v1617785011/docs/deploy-settings.png)

### 步骤 5：等待部署完成

- 部署过程需要 1-3 分钟
- 您可以在页面上查看部署进度
- 部署完成后，会显示 `✅ Deployment Complete`
  ![Deployment Complete](https://assets.vercel.com/image/upload/v1617785011/docs/deployment-complete.png)

### 步骤 6：访问部署地址

1. 部署完成后，Vercel 会自动分配一个域名
   - 格式：`xxx.vercel.app`
   - 例如：`lottery-system.vercel.app`
2. 点击域名即可访问抽奖系统
3. 将该地址分享给需要使用的人员

## 🔧 常见问题解决

### 问题 1：部署失败？

- 检查 `package.json` 中的 `build` 命令是否正确
- 确保 `vite.config.ts` 中的 `base` 路径设置为 `/`
- 查看部署日志，根据错误信息调整

### 问题 2：访问白屏？

- 检查浏览器控制台是否有错误
- 确保 `vite.config.ts` 中的 `base` 路径正确
- 尝试刷新页面或清除浏览器缓存

### 问题 3：如何自定义域名？

1. 进入 Vercel 项目设置
2. 点击「Domains」选项卡
3. 点击「Add」添加您的自定义域名
4. 按照提示配置 DNS 解析

### 问题 4：如何更新部署？

- 只需将最新代码推送到 GitHub 仓库
- Vercel 会自动检测并重新部署
- 部署时间约 1 分钟

## 📱 使用说明

### 访问抽奖系统
1. 使用 Vercel 分配的域名访问
2. 点击右上角「设置」图标进入配置
3. 上传参与人员名单和设置奖项
4. 返回首页开始抽奖

### 功能特性
- 🎯 支持多种抽奖模式
- 📊 实时统计中奖信息
- 🎵 支持背景音乐
- 🎨 可自定义主题
- 📱 响应式设计，支持移动端

## 📞 技术支持

如果您在部署过程中遇到任何问题，可以：
1. 查看 Vercel [官方文档](https://vercel.com/docs)
2. 查看本项目的 `README.md` 文件
3. 联系仓库维护者

祝您部署成功！🎉