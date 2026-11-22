@echo off

echo Starting Frontend ...
start "Frontend" cmd /c "pushd frontend && npm run dev"

echo Starting Backend ...
start "Backend" cmd /c "pushd backend && uv run fastapi dev"