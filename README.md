             _                       __
      ____ _(_)________  ____  _____/ /_
     / __ `/ / ___/ __ \/ __ \/ ___/ __/
    / /_/ / / /  / /_/ / /_/ / /  / /_
    \__,_/_/_/  / .___/\____/_/   \__/
               /_/

# airport

A command line interface for AirPort wireless on macOS / OS X.

## Usage

```
Usage:
  airport info [-l|--long]
  airport join <SSID>
  airport quality
  airport off
  airport on
  airport scan [<query>]
  airport ssid
  airport -h | --help | help
  airport --version

Subcommands:
  info     Print the current network SSID and quality. Use the the -l or --long
           options to print detailed information.
  join     Join the specified network.
  quality  Show the wireless quality as a percentage.
  off      Turn wireless off.
  on       Turn wireless on.
  scan     Perform a scan for wireless networks.
  ssid     Print the current network's SSID.
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
