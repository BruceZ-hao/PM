# PMDome 粉末冶金知识库

一个关于粉末冶金技术的知识介绍网站，包含压制方式、相关材料、金相分析、力学仿真等内容。

## 网站预览

网站包含以下页面：

- **首页** (`index.html`) - 粉末冶金概述和应用领域
- **压制方式** (`pages/compaction.html`) - 手动压制、液压压制、等静压、粉末锻造等
- **相关材料** (`pages/materials.html`) - 铁基、铜基、钨基材料和硬质合金
- **金相分析** (`pages/metallography.html`) - 样品制备、组织观察、孔隙分析
- **力学仿真** (`pages/simulation.html`) - 压制仿真、烧结仿真、有限元分析
- **学习资料** (`pages/resources.html`) - 书籍推荐、在线课程、标准规范

## 本地运行

### 方式一：直接打开

直接用浏览器打开 `index.html` 文件即可预览：

```bash
# Windows
start index.html

# 或者右键 index.html 选择用浏览器打开
```

### 方式二：使用简单HTTP服务器

如果你想通过 localhost 访问，可以使用 Python 内置的 HTTP 服务器：

```bash
# 进入项目目录
cd PMDome

# 启动 HTTP 服务器
python -m http.server 8080

# 然后在浏览器访问 http://localhost:8080
```

或者使用 Node.js 的 http-server：

```bash
npx http-server -p 8080
```

## 部署到 GitHub Pages

### 前置条件

1. 一个 GitHub 账号
2. Git 已安装

### 部署步骤

#### 1. 创建 GitHub 仓库

1. 登录 [GitHub](https://github.com)
2. 点击右上角的 "+" 号，选择 "New repository"
3. 填写仓库名称，例如：`pmdome`
4. 选择 "Public"
5. 点击 "Create repository"

#### 2. 上传网站文件

有两种方式：使用 Git 命令行或 GitHub 网页上传

**方式 A：使用 Git 命令行**

```bash
# 克隆仓库到本地
git clone https://github.com/你的用户名/pmdome.git

# 进入项目目录
cd pmdome

# 将网站文件复制到这里
# (复制所有文件包括 index.html, css/, js/, pages/)

# 添加所有文件
git add .

# 提交更改
git commit -m "Initial commit"

# 推送到 GitHub
git push origin main
```

**方式 B：使用 GitHub 网页上传**

1. 在仓库页面点击 "uploading an existing file"
2. 拖拽所有网站文件到上传区域
3. 填写提交信息
4. 点击 "Commit changes"

#### 3. 启用 GitHub Pages

1. 在仓库页面点击 "Settings"
2. 在左侧菜单中选择 "Pages"
3. 在 "Build and deployment" 部分：
   - Source 选择 "Deploy from a branch"
   - Branch 选择 "main" (或 "master")
   - Folder 选择 "/ (root)"
4. 点击 "Save"
5. 等待几分钟后刷新页面，你会看到部署的链接

#### 4. 访问网站

部署完成后，你可以通过以下链接访问：

```
https://你的用户名.github.io/pmdome/
```

## 项目结构

```
PMDome/
├── index.html          # 首页
├── css/
│   ├── style.css       # 主样式文件
│   └── page.css       # 页面样式文件
├── js/
│   └── main.js        # JavaScript 交互脚本
├── pages/
│   ├── compaction.html    # 压制方式
│   ├── materials.html    # 相关材料
│   ├── metallography.html # 金相分析
│   ├── simulation.html   # 力学仿真
│   └── resources.html   # 学习资料
└── README.md          # 部署教程（本文件）
```

## 自定义修改

### 修改网站标题

在每个 HTML 文件中修改 `<title>` 标签：

```html
<title>你的标题 | PMDome</title>
```

### 修改颜色主题

在 `css/style.css` 中修改 CSS 变量：

```css
:root {
    --primary: #2563eb;      /* 主色调 */
    --accent: #f97316;       /* 强调色 */
    /* ...其他变量 */
}
```

### 添加新页面

1. 在 `pages/` 目录创建新的 HTML 文件
2. 参考现有页面的结构
3. 在导航栏添加链接

## 技术栈

- HTML5
- CSS3 (使用 CSS 变量和 Flexbox/Grid 布局)
- Vanilla JavaScript
- Google Fonts (Noto Sans SC, Roboto)

## 浏览器兼容性

- Chrome (最新版本)
- Firefox (最新版本)
- Safari (最新版本)
- Edge (最新版本)

## 注意事项

1. 所有页面使用相对路径引用 CSS 和 JS 文件
2. 字体通过 Google Fonts CDN 加载，需要联网才能正常显示
3. 本网站仅供学习和研究使用

## 许可证

MIT License

---

如有问题，请提交 Issue 或联系网站维护者。
