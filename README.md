             _                       __
      ____ _(_)________  ____  _____/ /_
     / __ `/ / ___/ __ \/ __ \/ ___/ __/
    / /_/ / / /  / /_/ / /_/ / /  / /_
    \__,_/_/_/  / .___/\____/_/   \__/
               /_/

# airport

A command line interface for Airport wireless on macOS / OS X.

## Usage

```
Usage:
  airport (on | off | info | quality | scan [<query>] | ssid | join <SSID>)
  airport -h | --help | help
  airport --version

Subcommands:
  on       Turn wireless on.
  off      Turn wireless off.
  info     Show the current airport status.
  quality  Show the wireless quality as a percentage.
  scan     Perform a scan for wireless networks.
  ssid     Print the current network's SSID.
  join     Join the specified network.
  help     Display this help information.

Options:
  -h --help  Display this help information.
  --version  Display version information.
```

## Installation

### Homebrew

To install with [Homebrew](http://brew.sh/):

    brew tap alphabetum/taps && brew install alphabetum/taps/airport

### bpkg

To install with [bpkg](http://www.bpkg.io/):

    bpkg install alphabetum/airport

### Manual

To install manually, simply add the `airport` script to your `$PATH`. If
you already have a `~/bin` directory, you can use the following command:

    curl -L https://raw.github.com/alphabetum/airport/master/airport \
      -o ~/bin/airport && chmod +x ~/bin/airport
