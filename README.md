# DeepSeek R1 — Browser WebGPU Sandbox

This repository provides an open-source, serverless web client interface to run **DeepSeek-R1 (Distilled Qwen-1.5B)** and **Llama 3.2 (1B Parameter)** models natively inside the visitor's browser utilizing WebGPU.

## 🚀 Key Features
- **$0 Server Operations:** Runs entirely client-side. Zero API keys, zero subscription costs.
- **Hardware Accelerated:** WebGPU-powered inference delivers blazingly fast text generations.
- **Privacy First:** Data never leaves the browser. Models are downloaded and cached in IndexedDB.
- **Chain of Thought (CoT) Parsing:** Displays reasoning thoughts dynamically inside a dedicated collapsing block.

## 🛠️ Local 1-Click Launchers

To run this application locally on your computer, clone this repository and execute the appropriate launcher script:

### Windows (PowerShell):
```powershell
powershell -ExecutionPolicy Bypass -File install.ps1
```

### Linux / macOS (Bash):
```bash
bash install.sh
```

## 🌐 Deploy to GitHub Pages / Vercel
Since the interface is 100% static HTML/JS, you can host it for free on Vercel or GitHub Pages in seconds!

## License
MIT License. Feel free to clone, edit, and launch your own local AI sandboxes!
