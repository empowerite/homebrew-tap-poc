# empowerite/homebrew-tap

Homebrew formulae of [empowerite](https://github.com/empowerite).

```sh
brew trust empowerite/tap
brew install empowerite/tap/kit
```

Until you trust the tap, Homebrew refuses to load any of its formulae, so `brew trust` comes first. `kit` brings bash, jq, and yq;
git is the machine's. See [docs/install.md](https://github.com/empowerite/kit/blob/main/docs/install.md) in kit.

| Formula | What it installs |
| --- | --- |
| `kit` | kit, which writes down the rules AI coding agents follow and checks that they did. Each repository pins the release it runs, and this installs the command that finds it |
