# Complete Setup Guide

This guide will walk you through setting up APO Equalizer with Sony DualSense haptic audio configurations.

## Prerequisites

### Hardware Requirements
- Sony DualSense controller (PS5 controller)
- Windows 10 (version 1903 or later) or Windows 11
- Audio device compatible with APO Equalizer
- USB cable or Bluetooth adapter for controller connection

### Software Requirements
- APO Equalizer (free, open-source)
- Compatible audio drivers (ASIO recommended for lowest latency)
- Steam (optional, for automatic controller support)

## Step 1: Install APO Equalizer

1. **Download APO Equalizer**:
   - Visit [EqualizerAPO on SourceForge](https://sourceforge.net/projects/equalizerapo/)
   - Download the latest stable version
   - Run the installer as Administrator

2. **Select Audio Devices**:
   - During installation, select your primary audio output device
   - Check "Install APO to all devices" if you want system-wide processing
   - Restart your computer when prompted

3. **Verify Installation**:
   - Navigate to `C:\Program Files\EqualizerAPO\`
   - Confirm the installation directory exists
   - Check that `config.txt` is present in the `config` folder

## Step 2: Connect Your DualSense Controller

### USB Connection (Recommended for setup)
1. Connect your DualSense controller via USB-C cable
2. Windows should automatically install drivers
3. Test the controller in Windows Game Controllers settings

### Bluetooth Connection
1. Enable Bluetooth on your PC
2. Put DualSense in pairing mode (hold PS + Create buttons for 3 seconds)
3. Add device in Windows Bluetooth settings
4. Select "DualSense Wireless Controller"

### Verify Haptic Functionality
1. Open Steam Big Picture mode
2. Go to Controller Settings
3. Test haptic feedback functionality
4. Ensure vibration works in test mode

## Step 3: Configure APO Equalizer

### Backup Current Configuration
```cmd
# Open Command Prompt as Administrator
copy "C:\Program Files\EqualizerAPO\config\config.txt" "C:\Program Files\EqualizerAPO\config\config.txt.backup"
```

### Apply Your First Profile
1. Choose a profile from this repository (start with `profiles/gaming/balanced.txt`)
2. Copy the profile content
3. Replace the contents of `C:\Program Files\EqualizerAPO\config\config.txt`
4. Save the file

### Restart Audio Service
```cmd
# Option 1: Restart Windows Audio service
net stop audiosrv
net start audiosrv

# Option 2: Restart your computer (recommended)
```

## Step 4: Test and Verify

### Audio Test
1. Play music or game audio
2. Listen for changes in audio processing
3. Verify that bass frequencies are enhanced
4. Check that audio quality is acceptable

### Haptic Test
1. Launch a game with audio (racing games work well)
2. Hold your DualSense controller
3. Feel for vibration patterns that correspond to audio
4. Engine sounds, explosions, and bass should create haptic feedback

### Fine-tuning
1. If bass is too strong: Reduce gain values in the 20-80 Hz range
2. If haptic feedback is weak: Increase sub-bass boost
3. If audio sounds distorted: Reduce preamp value or overall gain

## Step 5: Advanced Configuration

### Using Peace GUI (Optional)
1. Download Peace (EqualizerAPO GUI) from the same SourceForge page
2. Install Peace for easier real-time adjustment
3. Load configuration files directly through the interface
4. Make real-time adjustments and save new profiles

### Custom Profile Creation
1. Copy an existing profile as a starting point
2. Modify frequency response to your preference
3. Test with your favorite games or music
4. Save as a new profile in the `profiles/custom/` directory

## Troubleshooting

### No Audio Processing
- Verify APO is installed on the correct audio device
- Check that the config.txt file has proper syntax
- Restart the Windows Audio service

### No Haptic Feedback
- Ensure DualSense controller is properly connected
- Check Steam controller settings
- Verify that bass frequencies are being enhanced
- Test with different games or media

### Audio Distortion
- Reduce preamp values in the configuration
- Lower gain values across all frequency bands
- Check your audio device's volume levels

### Controller Not Detected
- Update Windows and controller drivers
- Try different USB ports or cables
- Reset controller (small button on back)

## Performance Optimization

### Reducing Latency
- Use ASIO audio drivers if available
- Reduce audio buffer sizes in your audio interface
- Close unnecessary background audio applications

### System Resource Usage
- APO Equalizer is generally lightweight
- Monitor CPU usage if using complex configurations
- Consider simpler profiles for older systems

## Next Steps

Once you have basic functionality working:
1. Explore different profiles for various use cases
2. Learn to customize configurations for specific games
3. Contribute your own profiles to the community
4. Check out advanced features like convolution reverb

Need help? Check our [Troubleshooting Guide](troubleshooting.md) or open an issue on GitHub.