<div align="center">
<img width="1200" height="475" alt="GHBanner" src="https://github.com/user-attachments/assets/0aa67016-6eaf-458a-adb2-6e31a0763ed6" />
</div>

# Run and deploy your AI Studio app

This contains everything you need to run your app locally.

View your app in AI Studio: https://ai.studio/apps/temp/1

## Run Locally (Windows)

**Prerequisites:** Node.js, Python 3.10+

The easiest way to start both the frontend and backend is to use the provided batch file:

1. Double-click `start.bat` in the root folder.

Alternatively, start them manually in two separate terminals:

**Terminal 1 (Backend):**
```bash
npm run start-backend
```

**Terminal 2 (Frontend):**
```bash
npm run dev
```

## Setup Notes

1. Install dependencies: `npm install`
2. Set the `VITE_GEMINI_API_KEY` in `swamidayanandsaraswati_1PS6/.env.local`
3. The backend runs on port `9000` by default.

