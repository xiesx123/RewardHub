# CreatorHub

[![Python](https://img.shields.io/badge/Python-3.13+-0078D7?logo=python)](https://www.python.org/)
[![uv](https://img.shields.io/badge/UV-Package-DE5FE9?logo=astral)](https://docs.astral.sh/uv/)
[![CreatorHub](https://img.shields.io/badge/CreatorHub-Demo-3E63DD?logo=react)](http://156.224.28.65:8081/sign-in?username=demo&password=12345678)

<picture>
   <source media="(prefers-color-scheme: dark)" srcset="http://156.224.28.65:8081/images/dashboard_zh_dark.png" />
   <source media="(prefers-color-scheme: light)" srcset="http://156.224.28.65:8081/images/dashboard_zh_light.png" />
   <img alt="dashboard" src="http://156.224.28.65:8081/images/dashboard_zh_dark.png" />
 </picture>
</div>

### 启动

```bash
# 克隆项目
git clone https://github.com/xiesx123/CreatorHub.git
cd CreatorHub

# 安装依赖（使用 uv）
uv sync

# 启动服务
uv run cli.py start

# 脚本启动（Windows）
run.bat

# 脚本启动（Linux）
run.sh

# 默认密码
demo/12345678
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

- 提交问题：[Issues](https://github.com/xiesx123/CreatorHub/issues)
- 邮件联系：[Email](mailto:xiesx123@gmail.com)
