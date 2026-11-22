# Matrix backend

![Python](https://img.shields.io/badge/Python-243447?logo=python&logoColor=white)
![uv](https://img.shields.io/badge/uv-243447?logo=uv&logoColor=white)
![FastAPI](https://img.shields.io/badge/FastAPI-243447?logo=fastapi&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-243447?logo=postgresql&logoColor=white)
![SQLAlchemy](https://img.shields.io/badge/SQLAlchemy-243447?logo=sqlalchemy&logoColor=white)
![asyncpg](https://img.shields.io/badge/asyncpg-243447?logo=postgresql&logoColor=white)
![Alembic](https://img.shields.io/badge/Alembic-243447?logo=python&logoColor=white)
![Pydantic Settings](https://img.shields.io/badge/Pydantic%20Settings-243447?logo=pydantic&logoColor=white)

The Matrix API uses FastAPI and connects to PostgreSQL through SQLAlchemy and asyncpg.

## Local setup

Install uv and have a running PostgreSQL instance available. Create a database and a login that can connect to it, or use an existing development database.

From the repository root, run these commands in PowerShell. The project pins Python 3.14, and uv installs the locked dependencies in `backend/.venv`.

```powershell
cd backend
uv python install 3.14
uv sync --locked
if (!(Test-Path .env)) { Copy-Item .env.sample .env }
```

In `backend/.env`, set `DATABASE_URL` to your PostgreSQL connection URL. Replace the example credentials, host, port, and database name with your own. Keep the `postgresql+asyncpg` prefix and URL-encode any special characters in your credentials.

```dotenv
DATABASE_URL=postgresql+asyncpg://matrix_user:your_password@localhost:5432/matrix
```

## Start and verify the API

From `backend/`, start the development server.

```cmd
uv run fastapi dev main.py
```

Open the [health endpoint](http://127.0.0.1:8000/up). It runs `SELECT 1` against PostgreSQL and returns the following JSON when the connection succeeds.

```json
{"status": "ok", "db": "connected"}
```
