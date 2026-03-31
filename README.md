# 王者荣耀世界市场监控日报

##项目说明

本项目自动收集《王者荣耀世界》的市场监控数据，生成HTML报告并通过GitHub Pages发布，提供固定网址供团队访问。

## 功能特性

- ✅ 每日自动生成市场监控报告
- ✅ 统一时间线布局（游戏官方事件、竞品动态追踪、用户需求追踪）
- ✅ GitHub Pages自动部署，获得永久固定URL
- ✅ 支持钉钉机器人推送通知

## 快速开始

### 1. 初始化配置

```bash
# 安装依赖
pip install requests beautifulsoup4 python-dateutil openpyxl

#配置Git（首次使用）
git config --global user.name "你的名字"
git config --global user.email "你的邮箱"
```

### 2. 生成并部署报告

```bash
# 生成今日报告
python generate_report.py

# 推送到GitHub（自动触发GitHub Pages部署）
./deploy.sh
```

### 3. 访问报告

部署成功后，访问：`https://[你的GitHub用户名].github.io/wangzhe_report/`

## 定时任务

已配置cron定时任务，每天9:00自动生成并部署报告。

## 文件结构

```
wangzhe_report/
├── index.html          # 生成的HTML报告
├── generate_report.py  # 报告生成脚本
├── deploy.sh           # 部署脚本
├── data/               # 数据存储目录
│   ├── official_events.json
│   ├── competitor_data.json
│   └── user_feedback.json
└── README.md
```

## 注意事项

- 首次使用需要创建GitHub仓库并启用GitHub Pages
- 确保已配置GitHub SSH密钥或HTTPS认证
- 报告数据来源于自动化爬虫和人工录入
