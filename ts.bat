@echo off
chcp 65001 > nul  # 解决中文乱码问题
echo ========================
echo 开始自动化推送 GitHub 仓库
echo ========================

:: --------------------------
:: 【需要你修改的配置项】
set "REPO_PATH=C:\Users\surface\Documents\trae_projects\PMDome"  # 你的仓库本地路径（改成自己的）
set "BRANCH_NAME=master"                           # 推送的分支名（你的是master）
set "COMMIT_MSG=自动更新：同步本地最新修改"         # 默认提交备注
:: --------------------------

:: 进入仓库目录
cd /d "%REPO_PATH%"
if errorlevel 1 (
    echo 错误：仓库路径不存在！请检查 REPO_PATH 配置
    pause
    exit /b 1
)

:: 1. 拉取远程最新代码（避免冲突）
echo 第一步：拉取远程最新代码...
git pull origin %BRANCH_NAME%
if errorlevel 1 (
    echo 警告：拉取代码失败（可能远程无此分支/网络问题），继续执行推送...
)

:: 2. 添加所有修改的文件
echo 第二步：添加所有修改的文件...
git add -A

:: 3. 提交修改（支持自定义备注，回车用默认）
set /p "INPUT_MSG=请输入提交备注（回车用默认：%COMMIT_MSG%）："
if not defined INPUT_MSG set "INPUT_MSG=%COMMIT_MSG%"
git commit -m "%INPUT_MSG%"
if errorlevel 1 (
    echo 错误：提交失败（可能无文件修改）
    pause
    exit /b 1
)

:: 4. 推送到 GitHub
echo 第三步：推送到 GitHub %BRANCH_NAME% 分支...
git push origin %BRANCH_NAME%
if errorlevel 0 (
    echo ========================
    echo ? 推送成功！
    echo ========================
) else (
    echo ========================
    echo ? 推送失败！请检查网络/权限/分支名
    echo ========================
)

pause