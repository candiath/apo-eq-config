# APO Equalizer Configuration for Sony DualSense Haptic Audio

🎮 **Transform your gaming experience with enhanced haptic feedback through audio processing**

This repository contains optimized APO Equalizer configurations specifically designed to unlock and enhance Sony DualSense controller's haptic audio capabilities on PC. Experience game audio like never before with precise vibration patterns that respond to in-game sounds.

## 🌟 Features

- ✅ **Plug-and-Play Configurations**: Pre-tuned settings for immediate use
- 🎯 **Game-Specific Profiles**: Optimized configurations for popular games
- 🔧 **Customizable Settings**: Easy-to-modify parameters for personal preferences
- 📚 **Comprehensive Documentation**: Step-by-step setup guides
- 🎵 **Multiple Audio Scenarios**: Profiles for gaming, music, and media consumption

## 🚀 Quick Start

### Prerequisites

1. **Sony DualSense Controller** connected to your PC (USB or Bluetooth)
2. **APO Equalizer** installed ([Download here](https://sourceforge.net/projects/equalizerapo/))
3. **Windows 10/11** with compatible audio drivers

### Installation

1. **Clone this repository**:
   ```bash
   git clone https://github.com/candiath/apo-eq-config.git
   cd apo-eq-config
   ```

2. **Backup your current APO configuration** (if any):
   ```bash
   # Default APO config location
   cp "C:\Program Files\EqualizerAPO\config\config.txt" "C:\Program Files\EqualizerAPO\config\config.txt.backup"
   ```

3. **Choose and apply a configuration**:
   - Browse the `profiles/` directory
   - Copy your desired configuration to APO's config directory
   - Restart your audio service or reboot

### Basic Usage

```bash
# For gaming (recommended starting profile)
cp profiles/gaming/balanced.txt "C:\Program Files\EqualizerAPO\config\config.txt"

# For competitive gaming (enhanced directional audio)
cp profiles/gaming/competitive.txt "C:\Program Files\EqualizerAPO\config\config.txt"

# For music and media
cp profiles/media/enhanced.txt "C:\Program Files\EqualizerAPO\config\config.txt"
```

## 📁 Repository Structure

```
apo-eq-config/
├── profiles/                    # Pre-configured audio profiles
│   ├── gaming/                 # Gaming-optimized configurations
│   │   ├── balanced.txt       # Balanced gaming experience
│   │   ├── competitive.txt    # Enhanced for competitive gaming
│   │   └── immersive.txt      # Maximum immersion
│   ├── media/                 # Music and media configurations
│   │   ├── enhanced.txt       # Enhanced media experience
│   │   └── audiophile.txt     # High-fidelity audio
│   └── custom/                # User-contributed configurations
├── docs/                      # Detailed documentation
│   ├── setup-guide.md        # Complete setup instructions
│   ├── troubleshooting.md    # Common issues and solutions
│   └── customization.md      # How to create custom profiles
├── tools/                     # Utility scripts and tools
└── examples/                  # Example configurations and tutorials
```

## 🎮 Supported Scenarios

### Gaming
- **Action/Adventure**: Enhanced environmental audio and weapon feedback
- **Racing**: Engine vibrations and road surface feedback
- **FPS/Competitive**: Directional audio cues and gunshot feedback
- **RPG/Open World**: Immersive ambient audio and interaction feedback

### Media
- **Music**: Enhanced bass response and dynamic range
- **Movies**: Cinematic audio experience with haptic feedback
- **Streaming**: Optimized for voice and music balance

## ⚙️ Configuration Details

Each profile includes settings for:
- **Frequency Response**: Tailored EQ curves for optimal haptic translation
- **Dynamic Range**: Compression and expansion settings
- **Haptic Mapping**: Frequency-to-vibration intensity mapping
- **Latency Optimization**: Minimal delay for responsive feedback

## 🔧 Customization

Want to create your own profile? Check out our [Customization Guide](docs/customization.md) for:
- Understanding APO Equalizer syntax
- Haptic frequency mapping
- Testing and validation techniques
- Profile optimization tips

## 🐛 Troubleshooting

Common issues and solutions:

- **No haptic feedback**: Verify DualSense drivers and APO installation
- **Audio distortion**: Check volume levels and gain settings
- **Delayed response**: Review audio buffer settings
- **Profile not loading**: Validate configuration file syntax

For detailed troubleshooting, see [docs/troubleshooting.md](docs/troubleshooting.md).

## 🤝 Contributing

We welcome contributions! Ways to help:
- **Submit new profiles** for specific games or use cases
- **Report issues** with existing configurations
- **Improve documentation** and guides
- **Share your customizations** with the community

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- APO Equalizer developers for the powerful audio processing framework
- Sony for the innovative DualSense controller technology
- Community contributors who shared their configurations and feedback

## 📞 Support

- **Issues**: [GitHub Issues](https://github.com/candiath/apo-eq-config/issues)
- **Discussions**: [GitHub Discussions](https://github.com/candiath/apo-eq-config/discussions)
- **Wiki**: [Project Wiki](https://github.com/candiath/apo-eq-config/wiki)

---

⭐ **Star this repository** if you find it helpful! Your support helps others discover these configurations.