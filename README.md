# Homebrew tap for Comail

```sh
brew install --cask nextosp/comail/comail
```

Comail updates itself after install, so `brew upgrade` is only needed if you turn that off.

## Updating the cask

After a Comail release, set `version` and `sha256` in `Casks/comail.rb`:

```sh
v=0.2.45
curl -sL "https://github.com/NextOSP/comail/releases/download/v$v/Comail_${v}_universal.dmg" | shasum -a 256
```
