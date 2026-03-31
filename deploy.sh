#!/bin/bash
# 王者荣耀世界市场监控日报 - GitHub Pages部署脚本

set -e  # 遇到错误立即退出

echo "🚀 开始部署到GitHub Pages..."

# 检查是否在git仓库中
if [ ! -d ".git" ]; then
    echo "❌ 错误：当前目录不是Git仓库"
    echo "请先运行: git init"
    exit1
fi

# 生成报告
echo "📝 生成HTML报告..."
python3 generate_report.py

# 添加所有更改
echo "📦 添加文件到Git..."
git add index.html data/

# 提交更改
COMMIT_MSG="自动更新报告 - $(date '+%Y-%m-%d %H:%M:%S')"
git commit -m "$COMMIT_MSG" || echo "⚠️ 没有新的更改需要提交"

# 推送到GitHub
echo "📤 推送到GitHub..."
git push origin main || git push origin master

echo "✅ 部署完成！"
echo ""
echo "📌 请访问你的GitHub Pages网址查看报告："
echo "   https://[你的GitHub用户名].github.io/wangzhe_report/"
echo ""
echo "💡 如果首次部署，请在GitHub仓库设置中启用GitHub Pages："
echo "   1. 进入仓库 Settings → Pages"
echo "   2. Source 选择 'Deploy from a branch'"
echo "   3. Branch 选择 'main' 或 'master'，文件夹选择 '/ (root)'"
echo "   4. 点击 Save"
