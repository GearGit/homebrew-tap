# HushNotes for Homebrew

Sticky notes for Mac that float on top of every app, save text from any app with one key, and stay out of your screen shares.

```sh
brew install --cask geargit/tap/hushnotes
```

This repository holds only the install recipe. Homebrew downloads the signed, notarized app from [hushnotes.app](https://hushnotes.app/) and checks it against the checksum in [`Casks/hushnotes.rb`](Casks/hushnotes.rb).

HushNotes updates itself from inside the app, so `brew upgrade` leaves it alone. To uninstall:

```sh
brew uninstall --cask hushnotes           # remove the app
brew uninstall --zap --cask hushnotes     # also remove its notes and settings
```

`--zap` deletes every note stored on this Mac. Notes synced to iCloud stay in your iCloud.

Requires macOS 14 or later. A licence is $9.99 once: [hushnotes.app](https://hushnotes.app/). Support: support@hushnotes.app
