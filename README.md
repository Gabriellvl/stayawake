# stayawake

A sleep switch for your Mac. Turn it **on** to stay awake and **off** to
allow sleep again.

[![macOS checks](https://github.com/Gabriellvl/stayawake/actions/workflows/macos.yml/badge.svg)](https://github.com/Gabriellvl/stayawake/actions/workflows/macos.yml)

| Command | What it does |
| --- | --- |
| `stayawake on` | Keeps your Mac awake |
| `stayawake off` | Allows normal sleep |
| `stayawake` or `stayawake status` | Shows the current setting |
| `stayawake buddy` | Shows Harrie the Cane Corso, on watch or asleep |
| `stayawake updates` | Checks GitHub for a newer release |
| `stayawake updates --open` | Opens the release page |

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

## Meet Harrie

Harrie is the Cane Corso in your terminal. He keeps watch when sleep is
disabled, curls up when sleep is allowed, and perks up when a new release
is available. Run `stayawake buddy` to see him without changing the setting.

During normal interactive use, stayawake checks the public GitHub release
page at most once a day after a successful check. A network failure is
retried after 15 minutes. Harrie alerts you once per new version. The check
times out after two seconds. Set `STAYAWAKE_NO_UPDATE_CHECK=1` to disable
automatic checks, or run `stayawake updates` to check on demand. Set
`NO_COLOR=1` for plain text art.

For email, use **Watch → Custom → Releases** on
[GitHub](https://github.com/Gabriellvl/stayawake) and enable email for
watched repositories in your
[notification settings](https://github.com/settings/notifications).

## Download from GitHub

The [latest release](https://github.com/Gabriellvl/stayawake/releases/latest)
offers the standalone script and a macOS archive with the script, README,
and license. Verify your download with the matching entry in `SHA256SUMS`
(`shasum -a 256 <filename>`).


From the folder containing the downloaded or extracted script:

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

## MacPorts

An experimental [local Portfile](packaging/macports/sysutils/stayawake/Portfile)
is available for MacPorts users. Clone this repo, add the absolute path to
`packaging/macports` as a `file://` source above the default source in
`sources.conf`, and run `portindex` from that directory. Then run
`sudo port install stayawake` and `stayawake status`. See the
[MacPorts local repository guide](https://guide.macports.org/chunked/development.local-repositories.html).

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

## Platform support

The current release supports macOS and uses its built-in `pmset`.
Linux, Windows, BSD, and other systems still need their own sleep backends.

## License

[MIT](LICENSE)
