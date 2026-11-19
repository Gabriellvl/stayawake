# stayawake

![stayawake. Keep your Mac awake while your agents work. Whitney, a white Dogo Argentino, sits beside a laptop.](assets/stayawake-banner.png)

An open-source sleep switch for macOS. Keep your Mac awake during long-running
jobs, see the current setting, or restore normal sleep.

[![macOS checks](https://github.com/Gabriellvl/stayawake/actions/workflows/macos.yml/badge.svg)](https://github.com/Gabriellvl/stayawake/actions/workflows/macos.yml)

## Quick start

```bash
brew install Gabriellvl/tap/stayawake
stayawake status
```

| Command | What it does |
| --- | --- |
| `stayawake on` | Keeps your Mac awake |
| `stayawake off` | Allows normal sleep |
| `stayawake status` | Shows the current setting |

Running `stayawake` on its own also shows the status.
[Download the script](https://github.com/Gabriellvl/stayawake/releases/latest)
if you install without Homebrew.

Use `brew upgrade Gabriellvl/tap/stayawake` to update. Use
`brew uninstall Gabriellvl/tap/stayawake` to remove the command. Run
`stayawake off` before uninstalling if you want to restore normal sleep.

`stayawake --help` lists all commands and `stayawake --version` shows
the installed version.

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

## Meet Whitney

<img src="assets/whitney.png" alt="Whitney, the stayawake mascot" width="96">

Whitney is our Dogo Argentino and the project’s watchdog. She’s the
inspiration for a future feature that could alert you when low battery or
a lost Wi-Fi connection puts a run at risk.

Want to help? See [how to contribute](CONTRIBUTING.md).

## License

[MIT](LICENSE)
