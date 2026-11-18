# empowerite/homebrew-tap-poc

Homebrew formulae of [empowerite](https://github.com/empowerite), for
[kit-poc](https://github.com/empowerite/kit-poc), the proof of concept of kit.

Until you trust the tap, Homebrew refuses to load any of its formulae, so `brew trust` comes first:

```sh
brew trust empowerite/tap-poc
```

Then install kit, which writes down the rules AI coding agents follow and checks that they did. Each repository
pins the release it runs, and this installs the command that finds it. Pick one:

```sh
brew install empowerite/tap-poc/kit      # stable, once the first stable release is out
brew install empowerite/tap-poc/kit-rc   # the newest release candidate
```

Both bring bash, jq, and yq; git is the machine's. They install the same command, so only one can be installed at a
time. To change channels, `brew uninstall` one, then install the other. `brew upgrade` stays on the channel you chose.
See [docs/install.md](https://github.com/empowerite/kit-poc/blob/1-the-first-release-v0-1-0/docs/install.md) in
kit-poc.

| Formula | Follows |
| --- | --- |
| `kit` | stable releases, such as `0.1.0` |
| `kit-rc` | release candidates, such as `0.1.0-rc.7` |
