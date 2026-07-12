# Homebrew Tap

Homebrew packages maintained by Karthikeyan Ranasthala.

## Install Local Fonts Agent from source

This builds the agent locally and runs it as a user service, avoiding the
Gatekeeper warning applied to downloaded, unnotarized app bundles.

```sh
brew install --formula KarthikeyanRanasthala/tap/local-fonts-agent
brew services start local-fonts-agent
```

Stop it with `brew services stop local-fonts-agent`. Do not use `sudo`; the
agent and its menu-bar item must run in the logged-in user's session. When
using the service, do not enable **Start on Login** in the tray menu; Homebrew
already manages login startup.

## Install the prebuilt app

The prebuilt app is faster to install but requires one-time approval in
**System Settings → Privacy & Security** because it is not Apple-notarized.

```sh
brew install --cask KarthikeyanRanasthala/tap/local-fonts-agent
```

Homebrew automatically selects the Apple Silicon or Intel package.
