# PickleVAR 🏓

Pickleball Line Call Review System - Video Assistant Referee for recreational pickleball.

## Overview

PickleVAR helps players make accurate line calls by providing instant video replay with:
- Continuous recording buffer (up to 2 minutes with crop)
- Slow motion playback (0.1x, 0.25x, 0.5x, 1x)
- Frame-by-frame analysis
- Loop replay for disputed calls
- Crop region to focus on specific lines

## Development Setup

### Prerequisites

- **Node.js** (v18 or later): https://nodejs.org/
- **Git**: https://git-scm.com/

For Android:
- **Android Studio**: https://developer.android.com/studio

For iOS (Mac only):
- **Xcode**: From Mac App Store
- **CocoaPods**: `sudo gem install cocoapods`

### Initial Setup

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd picklevar-app
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Add platforms**
   ```bash
   # For Android
   npx cap add android

   # For iOS (Mac only)
   npx cap add ios
   ```

4. **Sync web code to native projects**
   ```bash
   npx cap sync
   ```

### Running the App

**Android:**
```bash
npx cap open android
```
Then click "Run" in Android Studio (green play button).

**iOS:**
```bash
npx cap open ios
```
Then click "Run" in Xcode (play button).

### Development Workflow

1. Edit files in `src/` folder
2. Run `npx cap sync` to update native projects
3. Run in Android Studio or Xcode

### Project Structure

```
picklevar-app/
├── src/                    # Web app source
│   └── index.html          # Main app (HTML/CSS/JS)
├── android/                # Android native project
├── ios/                    # iOS native project
├── capacitor.config.json   # Capacitor configuration
├── package.json            # Node.js dependencies
└── README.md               # This file
```

## Building for Release

### Android (APK/AAB)

1. Open in Android Studio: `npx cap open android`
2. Build → Generate Signed Bundle/APK
3. Follow the signing wizard

### iOS (IPA)

1. Open in Xcode: `npx cap open ios`
2. Product → Archive
3. Distribute App → App Store Connect (or Ad Hoc)

## App Store Requirements

**Google Play:**
- Developer account ($25 one-time)
- App icons (512x512)
- Screenshots
- Privacy policy URL

**Apple App Store:**
- Developer account ($99/year)
- App icons (1024x1024)
- Screenshots for each device size
- Privacy policy URL

## Future Features

- [ ] Higher FPS (60/120) with native camera APIs
- [ ] Dual camera mode (front + rear for both sidelines)
- [ ] Video export/save clips
- [ ] Cloud backup of settings

## License

Private/Proprietary - All rights reserved.
