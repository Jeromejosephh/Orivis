## 🚀 Orivis

An offline-first mobile app for image inspection and classification using on-device machine learning.

Tech: Flutter, TensorFlow Lite, MobileNetV3
Platform: Android / iOS

## 💡 Why Orivis?

Most ML-powered apps rely on cloud processing, introducing latency, privacy concerns, and network dependency. Orivis solves this by running entirely on-device:

No internet required → fully offline inference
Faster predictions with zero network latency
Improved privacy — images never leave the device
Reliable performance in constrained environments
## ✨ Features
On-device image classification using TensorFlow Lite
Camera capture and gallery image selection
Real-time inference with lightweight MobileNetV3 model
Inspection history with search, filters, and metadata
Data export, sharing, and delete with undo
Configurable retention policy (30 days / 1 year / forever)
Backup and corruption recovery for stored data
Local logging with export and clear options
Model Diagnostics tool for testing preprocessing
## 🧠 Architecture
Flutter (Dart) → Cross-platform UI framework
TensorFlow Lite → On-device ML inference
MobileNetV3 (quantized) → Lightweight classification model
Local Storage → Persistent inspection history and settings
## 📸 Screenshots

<p>
	<img src="assets/screenshots/home.png" alt="Home" width="260" />
	<img src="assets/screenshots/inspect.png" alt="Inspect/Result" width="260" />
	<img src="assets/screenshots/settings.png" alt="Settings" width="260" />
	<img src="assets/screenshots/about.png" alt="About" width="260" />
</p>

## 🛠️ Getting Started
Prerequisites
Flutter (stable channel)
Android/iOS device or emulator
Installation

```bash
flutter pub get
flutter run
```

🧪 Run Checks

```bash
flutter analyze
flutter test
```

🧠 Model & Labels
Model: assets/models/orivis_mnv3_q.tflite
Labels: assets/models/labels.txt

Important:
This model expects raw pixel values [0–255] (no normalization).

If replacing or retraining the model:

Ensure preprocessing matches training pipeline
Update inference_service.dart if needed
Use the Model Diagnostics tool to validate predictions
Document training steps under /training
🛠️ Troubleshooting
Model Diagnostics Tool

If predictions are incorrect:

Navigate to: Settings → Support & Diagnostics → Model Diagnostics
Select a test image
The app evaluates 4 preprocessing schemes
Identify which preprocessing works correctly
Update inference pipeline if necessary

See DIAGNOSTIC_GUIDE.md for full details.

🔒 Privacy
All inference runs locally on-device
Images are stored only for inspection history
No external data transmission
Users control retention and can delete data anytime
📂 Project Structure

```
lib/ → app source (UI, services)
assets/ → model and labels
training/ → model training scripts
```
Additional docs:

DIAGNOSTIC_GUIDE.md
DIAGNOSTIC_SUMMARY.md
⚙️ CI

Includes GitHub Actions workflow:

Runs flutter analyze
Runs flutter test on push/PR
🎨 App Icon & Splash

Provide a 1024x1024 PNG:

assets/app_icon.png

Generate assets:

```bash
flutter pub run flutter_launcher_icons
flutter pub run flutter_native_splash:create
```

Customize in pubspec.yaml.

📄 License

MIT
