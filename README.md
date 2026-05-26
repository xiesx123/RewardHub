# RewardHub

[![Python](https://img.shields.io/badge/Python-3.13+-0078D7?logo=python)](https://www.python.org/)
[![uv](https://img.shields.io/badge/UV-Package-DE5FE9?logo=astral)](https://docs.astral.sh/uv/)
[![RewardHub](https://img.shields.io/badge/RewardHub-Demo-3E63DD?logo=react)](http://156.224.28.65:8001/sign-in?username=demo&password=123456)

现代化互动积分奖励平台，帮助企业、社区与活动平台快速构建用户生态.

<picture>
   <source media="(prefers-color-scheme: dark)" srcset="http://129.146.183.34:8081/images/dashboard_zh_dark.png" />
   <source media="(prefers-color-scheme: light)" srcset="http://129.146.183.34:8081/images/dashboard_zh_light.png" />
   <img alt="dashboard" src="http://129.146.183.34:8081/images/dashboard_zh_dark.png" />
 </picture>
</div>

### 启动

```bash
# 克隆项目
git clone https://github.com/xiesx123/RewardHub.git
cd RewardHub

# 安装依赖（使用 uv）
uv sync

# 启动服务
uv run cli.py start

# 脚本启动（Windows）
run.bat

# 脚本启动（Linux）
run.sh

# 默认密码
demo/123456
```

### 技术栈

- [React](https://react.dev/) + [TypeScript](https://www.typescriptlang.org/)
- [ShadcnUI](https://ui.shadcn.com)（[TailwindCSS](https://tailwindcss.com/) + [RadixUI](https://www.radix-ui.com/)）

- [FastAPI](https://fastapi.tiangolo.com/)
- [SQLModel](https://sqlmodel.tiangolo.com/) + [SQLAlchemy](https://www.sqlalchemy.org/)
- [SQLite](https://www.sqlite.org/) / [MySQL](https://www.mysql.com/)
- [JWT](https://jwt.io/)
- [Crons](https://github.com/boringowl/fastapi-crons)

### 支持

- 提交问题：[Issues](https://github.com/xiesx123/RewardHub/issues)
- 邮件联系：[Email](mailto:xiesx123@gmail.com)
