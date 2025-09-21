# Tools and Utilities

This directory contains helpful tools and scripts for working with APO Equalizer configurations.

## 🛠️ Available Tools

### Configuration Management
- `backup-config.bat/sh` - Backup and restore APO configurations
- `apply-profile.bat/sh` - Quick profile switching utility
- `validate-config.py` - Syntax validation for configuration files

### Testing and Analysis
- `test-haptic.py` - Generate test tones for haptic feedback testing
- `frequency-sweep.py` - Create frequency sweep audio files
- `profile-compare.py` - Compare multiple configurations

### Utilities
- `install-check.bat/sh` - Verify APO installation
- `reset-audio.bat/sh` - Reset Windows audio services
- `controller-test.py` - Test DualSense controller connectivity

## 📋 Planned Tools

The following tools are planned for future releases:

### Configuration Tools
- **Profile Generator**: GUI tool for creating configurations
- **EQ Curve Visualizer**: Graph APO configurations
- **Batch Converter**: Convert between different EQ formats

### Testing Tools
- **Automated Testing Suite**: Test configurations with various audio
- **Haptic Response Analyzer**: Measure controller vibration patterns
- **Audio Quality Checker**: Detect distortion and clipping

### Management Tools
- **Profile Manager**: Organize and categorize configurations
- **Game Integration**: Automatic profile switching per game
- **Cloud Sync**: Backup and sync profiles across devices

## 🚀 Usage

Most tools require Python 3.7+ and may have additional dependencies. Check individual tool documentation for specific requirements.

### Basic Usage Example
```bash
# Backup current configuration
./backup-config.sh

# Apply a new profile
./apply-profile.sh profiles/gaming/competitive.txt

# Test haptic response
python test-haptic.py --frequency 40 --duration 5
```

## 🤝 Contributing Tools

We welcome contributions of useful tools and utilities! Please ensure:

- **Cross-platform compatibility** when possible
- **Clear documentation** and usage examples
- **Error handling** for common issues
- **Testing** on multiple systems

See [CONTRIBUTING.md](../CONTRIBUTING.md) for more details on contributing.

## 📞 Support

For tool-specific issues:
1. Check the tool's individual documentation
2. Search existing GitHub issues
3. Open a new issue with tool name in the title
4. Include your system information and error messages