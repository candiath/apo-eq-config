# Contributing to APO EQ Config

Thank you for your interest in contributing to this project! We welcome contributions from the community to help improve and expand our collection of APO Equalizer configurations for Sony DualSense haptic audio.

## Ways to Contribute

### 🎵 Share Your Profiles
- Submit new audio profiles for different games or use cases
- Optimize existing profiles based on your testing
- Create specialized configurations for specific hardware setups

### 📚 Improve Documentation
- Add new setup guides for different systems
- Translate documentation to other languages
- Create video tutorials or visual guides
- Update troubleshooting information

### 🐛 Report Issues
- Report bugs or problems with existing configurations
- Document compatibility issues with specific hardware
- Suggest improvements to existing profiles

### 💡 Feature Requests
- Propose new features or profile categories
- Suggest tools or utilities that would be helpful
- Request support for additional audio scenarios

## Getting Started

### Prerequisites
- Sony DualSense controller
- APO Equalizer installed and working
- Basic understanding of audio equalization
- Familiarity with Git and GitHub

### Setting Up Development Environment
1. Fork this repository
2. Clone your fork locally
3. Create a new branch for your changes
4. Test your configurations thoroughly

## Submission Guidelines

### Profile Contributions

#### Profile Requirements
- **Thoroughly tested** with multiple games/media types
- **Well-documented** with clear description and use cases
- **Properly formatted** following repository conventions
- **Safe levels** that won't cause audio distortion

#### Profile Template
```
# Profile Name: [Descriptive Name]
# Author: [Your GitHub Username]
# Version: 1.0
# Date: [YYYY-MM-DD]
# 
# Description: [Brief description of profile purpose]
# Best for: [Gaming genres, music types, etc.]
# Hardware tested: [Your audio hardware setup]
# Controller: Sony DualSense (specify connection type if relevant)
# 
# Notes:
# - [Any special considerations]
# - [Known limitations]
# - [Recommended settings]

Device: all
Preamp: -X dB

[Your configuration here]
```

#### File Naming Convention
- Use descriptive, lowercase names with hyphens
- Include category in path: `profiles/gaming/`, `profiles/media/`, etc.
- Example: `profiles/gaming/fps-competitive-v1.txt`

#### Testing Checklist
- [ ] No audio distortion at normal volume levels
- [ ] Haptic feedback works as expected
- [ ] Tested with at least 3 different audio sources
- [ ] Compared with existing similar profiles
- [ ] Documented any special requirements or limitations

### Documentation Contributions

#### Style Guidelines
- Use clear, concise language
- Include step-by-step instructions where applicable
- Add screenshots or diagrams when helpful
- Follow existing documentation structure
- Test all instructions on a clean system

#### Markdown Standards
- Use consistent heading levels
- Include code blocks for commands and configurations
- Add links to relevant external resources
- Use tables for comparing options or settings

### Code Quality

#### Configuration Files
- Follow APO Equalizer syntax exactly
- Include comments explaining complex sections
- Use consistent formatting and indentation
- Validate syntax before submission

#### Scripts and Tools
- Include clear documentation and usage examples
- Test on multiple systems if possible
- Follow platform-specific best practices
- Include error handling where appropriate

### Pull Request Process

1. **Create a descriptive branch name**:
   ```bash
   git checkout -b feature/gaming-profile-cyberpunk
   git checkout -b docs/setup-guide-improvements
   git checkout -b fix/profile-distortion-issue
   ```

2. **Make your changes**:
   - Follow the guidelines above
   - Test thoroughly
   - Update documentation if needed

3. **Commit with clear messages**:
   ```bash
   git commit -m "Add competitive FPS profile for enhanced positioning"
   git commit -m "Fix audio distortion in immersive gaming profile"
   git commit -m "Update setup guide with new Windows 11 instructions"
   ```

4. **Submit pull request**:
   - Use the PR template
   - Provide detailed description of changes
   - Include testing information
   - Link to related issues if applicable

### Pull Request Template

```markdown
## Description
Brief description of what this PR does.

## Type of Change
- [ ] New profile/configuration
- [ ] Profile improvement/fix
- [ ] Documentation update
- [ ] Bug fix
- [ ] New feature
- [ ] Breaking change

## Testing
- [ ] Tested with DualSense controller
- [ ] No audio distortion at normal levels
- [ ] Haptic feedback working as expected
- [ ] Documentation is accurate and complete

## Hardware Tested
- Audio device: [Your audio hardware]
- Controller connection: [USB/Bluetooth]
- Operating system: [Windows version]
- APO Equalizer version: [Version number]

## Games/Media Tested
- [List the games, music, or media you tested with]

## Additional Notes
[Any additional information, known limitations, or special considerations]
```

## Community Guidelines

### Be Respectful
- Treat all community members with respect
- Provide constructive feedback on contributions
- Help newcomers get started
- Be patient with questions and issues

### Stay On Topic
- Keep discussions focused on APO configurations and haptic audio
- Use appropriate channels for different types of discussions
- Search existing issues before creating new ones

### Quality Over Quantity
- Test thoroughly before submitting
- Provide detailed documentation
- Focus on useful, practical contributions
- Consider the needs of different users

## Recognition

Contributors will be acknowledged in:
- Repository README
- Individual profile credits
- Release notes for significant contributions
- Community showcases

## Getting Help

### Documentation
- Read the setup guide and troubleshooting docs
- Check existing issues and discussions
- Review similar profiles for examples

### Community Support
- GitHub Discussions for general questions
- Issues for bugs and problems
- Discord/community forums for real-time help

### Maintainer Contact
- Open an issue for project-related questions
- Use discussions for feature suggestions
- Tag maintainers in PRs that need review

## Code of Conduct

This project follows the standard GitHub Community Guidelines. We expect all contributors to:
- Be welcoming and inclusive
- Respect differing viewpoints and experiences
- Accept constructive criticism gracefully
- Focus on what's best for the community
- Show empathy towards other community members

## Legal

By contributing to this project, you agree that:
- Your contributions will be licensed under the MIT License
- You have the right to submit your contributions
- Your contributions are your original work or properly attributed

Thank you for helping make this project better for everyone! 🎮🎵