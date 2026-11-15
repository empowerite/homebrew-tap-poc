# empowerite/homebrew-tap

Homebrew formulae of [empowerite](https://github.com/empowerite).

```sh
brew trust empowerite/tap
brew install empowerite/tap/kit
```

Homebrew loads nothing from a tap you have not trusted, so `brew trust` comes first. `kit` brings bash, jq, and yq;
git is the machine's. See [docs/install.md](https://github.com/empowerite/kit/blob/main/docs/install.md) in kit.

| Formula | What it installs |
| --- | --- |
| `kit` | the loader, which runs in each repository the release that repository pins |
