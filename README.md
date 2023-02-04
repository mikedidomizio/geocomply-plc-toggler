# Enabling/disabling GeoComply Player Location Check (PLC) on OSX

The purpose of this repository is to provide an easy-to-use application that has the ability
to start and stop the [GeoComply](https://www.geocomply.com/) Player Location Check software.

[Download ZIP file with app](https://github.com/mikedidomizio/GeoComply-PLC-Toggler/zipball/main)

or download the script from the [Releases page](https://github.com/mikedidomizio/GeoComply-PLC-Toggler/releases)

## Running it

- Download the ZIP file above, and unzip it
- Find the applicaiton inside the created folder called `toggle_geocomply_plc.app`
- Run it
- Result: PLC software should start or stop depending on the current state

## How it works

GeoComply PLC is software installed as a [user agent](https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLaunchdJobs.html#//apple_ref/doc/uid/10000172i-SW7-BCIEDDBJ).

When the script is run:

- It finds out if PLC is currently running with `pgrep PlayerLocationCheck`
- If it is running, we run `launchctl` from within the `LaunchAgents` directory to stop it
- If it is not running, we run `launchctl` from within the `LaunchAgents` directory to start it

## Notes

Tested on OSX 12.5 with PLC 3.1.1.3
