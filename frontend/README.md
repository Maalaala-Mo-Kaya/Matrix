# Matrix frontend

![React](https://img.shields.io/badge/React-243447?logo=react&logoColor=white)
![TypeScript](https://img.shields.io/badge/TypeScript-243447?logo=typescript&logoColor=white)
![Vite](https://img.shields.io/badge/Vite-243447?logo=vite&logoColor=white)
![Tailwind CSS](https://img.shields.io/badge/Tailwind%20CSS-243447?logo=tailwindcss&logoColor=white)
![Node.js](https://img.shields.io/badge/Node.js-243447?logo=nodedotjs&logoColor=white)
![npm](https://img.shields.io/badge/npm-243447?logo=npm&logoColor=white)
![ESLint](https://img.shields.io/badge/ESLint-243447?logo=eslint&logoColor=white)

The Matrix web interface uses React, TypeScript, and Vite.

## Local setup

Install Node.js 24 with npm. From the repository root, run these commands.

```cmd
cd frontend
npm ci
npm run dev
```

Open the local URL printed by Vite, usually [http://localhost:5173](http://localhost:5173). Edits to files in `src/` appear in the browser while the server is running. Press Ctrl+C to stop it.

The current frontend does not read the `API_URL` entry in `.env.sample`, so you can skip creating a frontend `.env` file. To run the API alongside the interface, open a second terminal and follow the [backend setup](../backend/README.md).

## Development commands

Run these from `frontend/`.

| Command | Purpose |
| --- | --- |
| `npm run lint` | Check the source with ESLint. |
| `npm run build` | Type-check the project and create the production build in `dist/`. |
| `npm run preview` | Serve the production build locally after building it. |
