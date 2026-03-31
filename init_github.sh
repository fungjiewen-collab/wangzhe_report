#!/bin/bash
#王者荣耀世界市场监控日报 - GitHub仓库初始化脚本

echo "🔧 初始化GitHub仓库..."
echo ""

# 检查是否已安装Git
if ! command -v git &> /dev/null; then
    echo "❌ 错误：未检测到Git，请先安装Git"
    exit 1
fi

# 初始化Git仓库（如果尚未初始化）
if [ ! -d ".git" ]; then
    echo "📦 初始化Git仓库..."
    git init
fi

# 获取用户信息
echo ""
echo "请配置Git用户信息（用于提交记录）："
read -p "请输入你的GitHub用户名: " GIT_USER
read -p "请输入你的GitHub邮箱: " GIT_EMAIL

git config user.name "$GIT_USER"
git config user.email "$GIT_EMAIL"

echo ""
echo "✅ Git配置完成！"
echo ""

# 创建初始提交
echo "📝 创建初始提交..."
git add .
git commit -m "Initial commit: 王者荣耀世界市场监控日报系统"

echo ""
echo "🔗 接下来请在GitHub上创建新仓库："
echo "   1. 访问 https://github.com/new"
echo "   2. 仓库名称建议：wangzhe_report"
echo "   3. 设为Public（公开）或Private（私有）"
echo "   4. 不要勾选 'Initialize with README'"
echo "   5. 点击 'Create repository'"
echo ""
echo "创建完成后，运行以下命令关联远程仓库："
echo ""
echo "   git remote add origin https://github.com/${GIT_USER}/wangzhe_report.git"
echo " git branch -M main"
echo "   git push -u origin main"
echo ""
echo "💡 提示：你也可以使用SSH方式（需先配置SSH密钥）："
echo "   git remote add origin git@github.com:${GIT_USER}/wangzhe_report.git"
echo ""
echo "推送成功后，在GitHub仓库设置中启用GitHub Pages即可访问报告。"
