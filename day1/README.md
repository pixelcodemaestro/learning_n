# 💖 Day 1 — Love Photo VFX Page

A beautiful portrait slideshow with VFX animations, glitter borders, floating particles, and background music — served at **port 3002** via Docker.

---

## 📁 Project Structure

```
day1/
├── public/
│   ├── index.html          ← The main page (do not edit unless customising)
│   ├── images/
│   │   ├── photo1.jpg      ← YOUR portrait photo 1
│   │   ├── photo2.jpg      ← YOUR portrait photo 2
│   │   ├── photo3.jpg      ← YOUR portrait photo 3
│   │   └── photo4.jpg      ← YOUR portrait photo 4
│   └── audio/
│       └── music.mp3       ← YOUR background music
├── nginx.conf
├── Dockerfile
├── docker-compose.yml
└── README.md
```

---

## 🖼️ Add Your Photos & Music

1. Copy your **4 portrait images** into `public/images/` and name them exactly:
   - `photo1.jpg`
   - `photo2.jpg`
   - `photo3.jpg`
   - `photo4.jpg`

   > Tip: Portrait (3:4) ratio photos look best. JPG or PNG both work — just rename to `.jpg`.

2. Copy your **music file** into `public/audio/` as:
   - `music.mp3`

---

## 🚀 Run with Docker

```bash
# Build and start
docker compose up --build -d

# Open in browser
http://localhost:3002
```

```bash
# Stop
docker compose down
```

---

## ✨ VFX Effects Per Photo

| Photo | Animation         | Description                        |
|-------|-------------------|------------------------------------|
| 1     | Float & Pulse     | Gentle up-down float with glow     |
| 2     | Tilt Sway         | Left-right romantic sway           |
| 3     | Heartbeat         | Double-beat pulse with rose flash  |
| 4     | Shimmer Rotate    | Soft spin-zoom with brightness     |

All photos have:
- 🌈 Animated gradient glitter border
- 💖 Floating heart & star particles in background
- 🌸 Heart burst on every slide change
- 🎵 Looping background music (mute button top-right)
- Auto-advance every 6 seconds

---

## 🎨 Customise Captions

Open `public/index.html` and find each `<div class="caption">` block to change the love messages.

---

Made with 💖
