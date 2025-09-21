# Customization Guide

Learn how to create and modify APO Equalizer configurations for your specific needs and preferences.

## Understanding APO Equalizer Syntax

### Basic Structure

APO configurations use a simple text-based format:

```
# Comments start with hash symbol
Device: all                    # Apply to all devices
Preamp: -6 dB                 # Pre-amplification
Filter: ON PK Fc 1000 Hz Gain 3 dB Q 1.0    # Parametric EQ filter
```

### Core Commands

#### Device Selection
```
Device: all                    # Apply to all audio devices
Device: "Speakers (Audio Device)"  # Apply to specific device
```

#### Pre-amplification
```
Preamp: -6 dB                 # Reduce overall level to prevent clipping
Preamp: 0 dB                  # No pre-amplification (default)
```

#### Filters

**Parametric EQ (Most Common)**:
```
Filter: ON PK Fc 1000 Hz Gain 3 dB Q 1.0
#       │  │  │        │        │
#       │  │  │        │        └─ Quality factor (bandwidth)
#       │  │  │        └─ Gain/Cut amount
#       │  │  └─ Center frequency
#       │  └─ Filter type (PK = Peak/Bell)
#       └─ ON/OFF state
```

**High-Pass Filter**:
```
Filter: ON HP Fc 80 Hz Q 0.7    # Remove frequencies below 80 Hz
```

**Low-Pass Filter**:
```
Filter: ON LP Fc 8000 Hz Q 0.7  # Remove frequencies above 8000 Hz
```

**High-Shelf Filter**:
```
Filter: ON HSC Fc 10000 Hz Gain 2 dB Q 0.7  # Boost/cut above frequency
```

**Low-Shelf Filter**:
```
Filter: ON LSC Fc 100 Hz Gain 3 dB Q 0.7    # Boost/cut below frequency
```

## Frequency Ranges and Their Effects

### Sub-Bass (20-60 Hz)
**Purpose**: Maximum haptic feedback, deep rumble
```
Filter: ON PK Fc 30 Hz Gain 4 dB Q 1.2    # Deep haptic impact
Filter: ON PK Fc 50 Hz Gain 3 dB Q 1.0    # Rumble and impact
```
**Use Cases**: Explosions, engine sounds, earthquake effects

### Bass (60-200 Hz)
**Purpose**: Punch and warmth, moderate haptic response
```
Filter: ON PK Fc 80 Hz Gain 2 dB Q 0.8     # Bass clarity
Filter: ON PK Fc 120 Hz Gain 1.5 dB Q 1.0  # Bass warmth
```
**Use Cases**: Kick drums, bass guitar, weapon impacts

### Low-Midrange (200-500 Hz)
**Purpose**: Body and fullness, can cause muddiness if overdone
```
Filter: ON PK Fc 300 Hz Gain -1 dB Q 0.8   # Reduce muddiness
Filter: ON PK Fc 400 Hz Gain 1 dB Q 1.0    # Add body
```
**Use Cases**: Male vocals, guitar body, environmental sounds

### Midrange (500-2000 Hz)
**Purpose**: Vocal clarity, instrument definition
```
Filter: ON PK Fc 800 Hz Gain 1.5 dB Q 0.7  # Vocal presence
Filter: ON PK Fc 1200 Hz Gain 2 dB Q 0.9   # Clarity and definition
```
**Use Cases**: Speech, lead instruments, footsteps

### Upper Midrange (2000-4000 Hz)
**Purpose**: Presence and attack, critical for gaming
```
Filter: ON PK Fc 2500 Hz Gain 2 dB Q 1.0   # Presence
Filter: ON PK Fc 3500 Hz Gain 1.5 dB Q 1.2 # Attack and detail
```
**Use Cases**: Vocal intelligibility, weapon sounds, UI sounds

### Treble (4000-8000 Hz)
**Purpose**: Brightness and detail, spatial information
```
Filter: ON PK Fc 5000 Hz Gain 1 dB Q 1.0   # Brightness
Filter: ON PK Fc 7000 Hz Gain 0.5 dB Q 1.5 # Air and space
```
**Use Cases**: Cymbal crashes, environmental detail, positioning cues

### Upper Treble (8000+ Hz)
**Purpose**: Air and openness, can cause harshness
```
Filter: ON HSC Fc 10000 Hz Gain -0.5 dB Q 0.7  # Gentle roll-off
```
**Use Cases**: Natural sound reproduction, preventing harshness

## Advanced Processing

### Dynamic Range Compression
```
Compressor: ratio 3:1 attack 5ms release 50ms threshold -18dB knee 3dB
#           │     │   │       │         │          │          │
#           │     │   │       │         │          │          └─ Soft/hard knee
#           │     │   │       │         │          └─ Compression threshold
#           │     │   │       │         └─ Release time
#           │     │   │       └─ Attack time
#           │     │   └─ Compression ratio
#           └─ Effect type
```

**Settings Guide**:
- **Gentle**: ratio 2:1, attack 10ms, release 100ms
- **Moderate**: ratio 3:1, attack 5ms, release 50ms
- **Aggressive**: ratio 6:1, attack 2ms, release 20ms

### Stereo Processing
```
Copy: L=L R=R                              # No processing (default)
Copy: L=L+0.1*R R=R+0.1*L                 # Slight stereo widening
Copy: L=0.7*(L+R) R=0.7*(L+R)             # Mono (center channel)
```

### Convolution (Advanced)
```
Convolution: impulse_responses/hall.wav    # Add reverb/room simulation
```

## Creating Custom Profiles

### Step 1: Choose a Base Profile

Start with an existing profile that's close to your needs:
- **Gaming/Balanced**: Good starting point for most users
- **Gaming/Competitive**: Base for competitive gaming
- **Media/Enhanced**: Starting point for music/movies

### Step 2: Identify Your Goals

**For Gaming**:
- Enhanced footstep detection → Boost 800-1500 Hz
- Better explosions → Boost 40-80 Hz
- Clearer voice chat → Boost 1000-3000 Hz
- Reduced ear fatigue → Cut 3000-6000 Hz

**For Music**:
- More bass → Boost 40-100 Hz
- Clearer vocals → Boost 1000-2500 Hz
- Brighter sound → Boost 5000-8000 Hz
- Warmer sound → Boost 200-500 Hz

### Step 3: Make Incremental Changes

```
# Start with small adjustments
Filter: ON PK Fc 1000 Hz Gain 1 dB Q 1.0   # Start with 1 dB

# Test and gradually increase if needed
Filter: ON PK Fc 1000 Hz Gain 2 dB Q 1.0   # Increase to 2 dB
Filter: ON PK Fc 1000 Hz Gain 3 dB Q 1.0   # Further increase
```

### Step 4: Test and Refine

1. **Save your configuration**
2. **Test with familiar content**
3. **Make one change at a time**
4. **Document what works**

## Profile Templates

### Competitive Gaming Template
```
Device: all
Preamp: -4 dB

# Controlled bass for haptic without masking
Filter: ON PK Fc 50 Hz Gain 2 dB Q 1.5

# Enhanced midrange for footsteps and communication
Filter: ON PK Fc 1200 Hz Gain 3 dB Q 0.9
Filter: ON PK Fc 2000 Hz Gain 2 dB Q 0.8

# Treble for positioning
Filter: ON PK Fc 4000 Hz Gain 2 dB Q 1.0

# Fast compression for consistency
Compressor: ratio 2.5:1 attack 2ms release 30ms threshold -15dB knee 2dB
```

### Music Enhancement Template
```
Device: all
Preamp: -5 dB

# Extended bass for haptic experience
Filter: ON PK Fc 40 Hz Gain 3 dB Q 1.2
Filter: ON PK Fc 80 Hz Gain 2 dB Q 1.0

# Vocal clarity
Filter: ON PK Fc 1500 Hz Gain 1.5 dB Q 0.8

# Smooth treble
Filter: ON PK Fc 5000 Hz Gain 1 dB Q 1.2

# Gentle compression
Compressor: ratio 3:1 attack 10ms release 100ms threshold -16dB knee 3dB
```

## Quality Factor (Q) Guidelines

**Q Value Effects**:
- **Q = 0.5-0.8**: Wide, gentle adjustment (natural sounding)
- **Q = 0.8-1.2**: Moderate width (most common)
- **Q = 1.2-2.0**: Narrow, focused adjustment
- **Q = 2.0+**: Very narrow, surgical cuts/boosts

**Recommended Q Values**:
- **Sub-bass (20-60 Hz)**: Q = 1.0-1.5
- **Bass (60-200 Hz)**: Q = 0.8-1.2
- **Midrange (200-2000 Hz)**: Q = 0.7-1.0
- **Treble (2000+ Hz)**: Q = 1.0-1.5

## Testing Your Configuration

### Test Materials

**Gaming**:
- First-person shooters (footsteps, gunshots)
- Racing games (engine sounds, environmental audio)
- Open-world games (ambient sounds, dialogue)

**Music**:
- Bass-heavy electronic music (haptic feedback test)
- Acoustic recordings (natural sound test)
- Vocal-focused tracks (clarity test)

**Movies**:
- Action scenes (dynamic range, impacts)
- Dialogue scenes (speech clarity)
- Ambient scenes (subtle detail)

### Evaluation Criteria

1. **Audio Quality**: Does it sound natural and pleasant?
2. **Haptic Response**: Is the controller vibration appropriate?
3. **Fatigue**: Can you listen for extended periods?
4. **Purpose**: Does it achieve your specific goals?

## Sharing Your Profiles

### Documentation Template
```
# Profile Name: [Your Profile Name]
# Author: [Your Name]
# Version: 1.0
# Date: [Date]
# 
# Description: [Brief description of profile purpose and characteristics]
# Best for: [Gaming types, music genres, etc.]
# Hardware tested: [Your audio hardware]
# 
# Changelog:
# v1.0 - Initial release

[Your configuration here]
```

### Contributing to Repository

1. **Test thoroughly** with various content types
2. **Document clearly** with description and use cases
3. **Follow naming conventions**: `profile-name-version.txt`
4. **Submit via pull request** with detailed description

## Advanced Tips

### Avoiding Common Mistakes

1. **Over-EQing**: Start subtle, increase gradually
2. **Ignoring Phase**: Extreme Q values can cause phase issues
3. **Not Testing**: Always test with real content
4. **Forgetting Context**: Consider your entire audio chain

### Professional Techniques

1. **Reference Switching**: Compare with known good profiles
2. **Level Matching**: Ensure equal loudness when comparing
3. **Frequency Analysis**: Use spectrum analyzer if available
4. **Documentation**: Keep notes on what works and what doesn't

### Troubleshooting Custom Profiles

1. **Audio Distortion**: Reduce preamp and gain values
2. **Harsh Sound**: Check upper midrange and treble boosts
3. **Muddy Sound**: Look for excessive low-mid boosts
4. **No Haptic Response**: Ensure adequate sub-bass enhancement

Remember: Great profiles are created through iteration and testing. Start simple and refine based on real-world use!