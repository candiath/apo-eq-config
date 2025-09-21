# Troubleshooting Guide

Common issues and their solutions when using APO Equalizer with DualSense haptic audio.

## Audio Issues

### No Audio Output

**Symptoms**: Complete silence after applying configuration

**Solutions**:
1. **Check APO Installation**:
   ```cmd
   # Verify APO is installed on your audio device
   # Go to Sound Settings > Device Properties > Additional Device Properties
   # Look for "APO" in the Enhancements tab
   ```

2. **Verify Configuration Syntax**:
   - Open `config.txt` in a text editor
   - Check for typos in filter commands
   - Ensure proper syntax: `Filter: ON PK Fc 1000 Hz Gain 3 dB Q 1.0`

3. **Restart Audio Service**:
   ```cmd
   net stop audiosrv
   net start audiosrv
   ```

4. **Reset to Default**:
   ```cmd
   # Restore backup configuration
   copy "C:\Program Files\EqualizerAPO\config\config.txt.backup" "C:\Program Files\EqualizerAPO\config\config.txt"
   ```

### Audio Distortion or Clipping

**Symptoms**: Crackling, popping, or heavily distorted audio

**Solutions**:
1. **Reduce Preamp**:
   ```
   # Change from:
   Preamp: -6 dB
   # To:
   Preamp: -10 dB
   ```

2. **Lower Gain Values**:
   ```
   # Reduce all gain values by 2-3 dB
   Filter: ON PK Fc 40 Hz Gain 2 dB Q 1.2  # Was 4 dB
   ```

3. **Check System Volume**:
   - Reduce Windows master volume to 70-80%
   - Lower application-specific volumes
   - Check hardware volume controls

4. **Audio Driver Issues**:
   - Update audio drivers
   - Try different audio devices
   - Use ASIO drivers if available

### Muddy or Unclear Audio

**Symptoms**: Audio sounds muffled or lacks clarity

**Solutions**:
1. **Reduce Low-Mid Frequency Buildup**:
   ```
   # Add a cut in the 200-400 Hz range
   Filter: ON PK Fc 300 Hz Gain -2 dB Q 0.8
   ```

2. **Enhance Presence Region**:
   ```
   # Boost clarity frequencies
   Filter: ON PK Fc 2000 Hz Gain 2 dB Q 1.0
   Filter: ON PK Fc 4000 Hz Gain 1.5 dB Q 1.2
   ```

3. **Adjust Compression**:
   ```
   # Reduce compression ratio for more dynamics
   Compressor: ratio 2:1 attack 5ms release 50ms threshold -18dB knee 3dB
   ```

## DualSense Controller Issues

### Controller Not Detected

**Symptoms**: Windows doesn't recognize the DualSense controller

**Solutions**:
1. **Driver Update**:
   - Windows Update for latest drivers
   - Download official Sony drivers
   - Install Steam for automatic driver support

2. **Connection Issues**:
   - Try different USB cables
   - Test different USB ports
   - For Bluetooth: Remove and re-pair device

3. **Reset Controller**:
   - Use the reset button on the back of the controller
   - Hold for 3-5 seconds with a paperclip
   - Reconnect after reset

### No Haptic Feedback

**Symptoms**: Audio processing works, but no controller vibration

**Solutions**:
1. **Enable Haptic Feedback**:
   - Steam Settings > Controller > General Controller Settings
   - Enable "PlayStation Configuration Support"
   - Check "Enable Steam Input for DualSense controllers"

2. **Test Controller Functionality**:
   ```
   # Windows Game Controllers
   # Control Panel > Hardware and Sound > Devices and Printers
   # Right-click DualSense > Game Controller Settings > Test
   ```

3. **Verify Bass Enhancement**:
   - Ensure low-frequency boost is active (20-80 Hz range)
   - Increase gain values if haptic feedback is weak
   - Test with bass-heavy content (electronic music, action games)

4. **Audio-to-Haptic Translation**:
   - The controller translates low-frequency audio to vibration
   - Ensure your audio source contains sufficient bass content
   - Try different games or music genres

### Weak or Inconsistent Haptic Response

**Symptoms**: Vibration is barely noticeable or intermittent

**Solutions**:
1. **Increase Sub-Bass Boost**:
   ```
   Filter: ON PK Fc 40 Hz Gain 6 dB Q 1.2  # Increase from 4 dB
   Filter: ON PK Fc 60 Hz Gain 4 dB Q 1.5  # Increase from 3 dB
   ```

2. **Add Compression**:
   ```
   # Consistent levels for reliable haptic response
   Compressor: ratio 4:1 attack 3ms release 40ms threshold -15dB knee 2dB
   ```

3. **Check Audio Levels**:
   - Ensure adequate volume levels
   - Test with different audio sources
   - Verify audio device is set as default

4. **Controller Settings**:
   - Check Windows Game Controller settings
   - Verify vibration is enabled in games
   - Test controller in multiple applications

## System Performance Issues

### High CPU Usage

**Symptoms**: System slowdown when using APO configurations

**Solutions**:
1. **Simplify Configuration**:
   - Reduce number of filters
   - Remove complex processing (convolution, etc.)
   - Use lower-order filters (Q values)

2. **Optimize System**:
   - Close unnecessary background applications
   - Update audio drivers
   - Check for Windows updates

3. **Hardware Limitations**:
   - Older systems may struggle with complex processing
   - Consider using simpler profiles
   - Monitor system resource usage

### Audio Latency Issues

**Symptoms**: Noticeable delay between action and audio/haptic response

**Solutions**:
1. **Reduce Buffer Sizes**:
   - Audio interface settings
   - Game audio settings
   - Windows audio buffer settings

2. **Use ASIO Drivers**:
   - Install ASIO4ALL or device-specific ASIO drivers
   - Configure for lowest latency
   - Test different buffer sizes

3. **USB Connection**:
   - Use USB instead of Bluetooth for controller
   - Try different USB ports (USB 3.0 preferred)
   - Avoid USB hubs when possible

## Configuration-Specific Issues

### Profile Not Loading

**Symptoms**: No change in audio after applying a configuration

**Solutions**:
1. **File Location**:
   - Verify file is saved as `config.txt`
   - Check correct path: `C:\Program Files\EqualizerAPO\config\`
   - Ensure file has .txt extension (not .txt.txt)

2. **File Permissions**:
   - Run text editor as Administrator
   - Check file is not read-only
   - Verify APO has access to config directory

3. **Syntax Validation**:
   - Check for proper command syntax
   - Verify all required parameters are present
   - Look for special characters or encoding issues

### Unexpected Audio Behavior

**Symptoms**: Audio sounds different than expected from profile description

**Solutions**:
1. **Profile Compatibility**:
   - Ensure profile matches your audio setup
   - Check if profile is intended for your use case
   - Try different profiles for comparison

2. **System Differences**:
   - Audio hardware differences
   - Driver variations
   - System-specific audio processing

3. **Customization**:
   - Modify profile to suit your system
   - Start with smaller adjustment values
   - Test changes incrementally

## Getting Additional Help

### Log Files and Diagnostics

1. **APO Log Files**:
   ```
   # Check for error logs in APO directory
   C:\Program Files\EqualizerAPO\logs\
   ```

2. **Windows Event Viewer**:
   - Look for audio service errors
   - Check application event logs
   - Note error codes and messages

3. **System Information**:
   - Audio device details
   - Driver versions
   - Windows version and build

### Community Support

1. **GitHub Issues**: Report bugs and get help from maintainers
2. **Discussions**: Ask questions and share experiences
3. **Discord/Forums**: Real-time help from community members

### Professional Support

For persistent issues that can't be resolved:
1. Contact audio hardware manufacturer
2. Professional audio setup services
3. Consider alternative audio processing solutions

Remember: Always backup your working configurations before making changes!