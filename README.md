# stayawake

A sleep switch for your Mac. Turn it **on** to stay awake and **off** to
allow sleep again.

| Command | What it does |
| --- | --- |
| `stayawake on` | Keeps your Mac awake |
| `stayawake off` | Allows normal sleep |
| `stayawake` or `stayawake status` | Shows the current setting |

## Install with Homebrew

```bash
brew install Gabriellvl/tap/stayawake
stayawake status
```

Use `brew upgrade Gabriellvl/tap/stayawake` to update. Use
`brew uninstall Gabriellvl/tap/stayawake` to remove the command. Run
`stayawake off` before uninstalling if you want to restore normal sleep.

`stayawake --help` lists all commands and `stayawake --version` shows
the installed version.

## Install manually

Download the Bash script from [Releases](https://github.com/Gabriellvl/stayawake/releases/latest)
and run these commands from the download folder:

```bash
mkdir -p "$HOME/.local/bin"
install -m 755 stayawake "$HOME/.local/bin/stayawake"
"$HOME/.local/bin/stayawake"
```

If your shell can't find `stayawake` by name, add this line to your
`~/.zshrc` on macOS and open a new Terminal window:

```bash
export PATH="$HOME/.local/bin:$PATH"
```

## Run from the repo

```bash
git clone https://github.com/Gabriellvl/stayawake.git
cd stayawake
./stayawake
```

From the checkout, `make install` installs to `~/.local/bin`. Set
`PREFIX` to use a different location.

## How it works

`stayawake` uses the version of Bash and `pmset` included with macOS.
Switching modes uses `sudo` and applies to all power profiles. The setting
persists after the command exits. Run `stayawake off` to restore normal
sleep behavior.

## Uninstall

Run `stayawake off` if you want normal sleep restored, then run
`make uninstall` from the checkout or remove `~/.local/bin/stayawake`.

## License

[MIT](LICENSE)
