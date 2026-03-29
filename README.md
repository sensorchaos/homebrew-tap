# homebrew-tap

[Homebrew](https://brew.sh) tap for [SensorChaos](https://sensorchaos.com).

## Install

```bash
brew tap sensorchaos/tap
brew install sensorchaos
```

## Upgrade

```bash
brew upgrade sensorchaos
```

## Uninstall

```bash
brew uninstall sensorchaos
brew untap sensorchaos/tap
```

## Go live

To go live, you need to:
1. Create a GitHub repo named exactly homebrew-tap under the sensorchaos org
2. Push the contents of homebrew-tap/ to its root
3. Run bun run update-formula 0.1.0 after your first GitHub release to fill in the real sha256 values, then push the updated formula
