# Enabling/disabling GeoComply Player Location Check (PLC) on OSX

The purpose of this repository is to provide an easy-to-use application that has the ability
to start and stop the [GeoComply](https://www.geocomply.com/) Player Location Check software.

[Download zip file with app](https://github.com/mikedidomizio/GeoComply-PLC-Toggler/zipball/main)

or download the script from the [Releases page](https://github.com/mikedidomizio/GeoComply-PLC-Toggler/releases)

## Running it from the terminal

- Download the zip file above, and unzip it
- Run it via `open toggle_geocomply_plc.app`
Result: PLC software should start or stop depending on the current state

## Running it from the Finder window

- Download the zip file above, and unzip it
- Open the created folder, find the file `toggle_geocomply_plc.app`
- Double click it
Result: PLC software should start or stop depending on the current state

## How it works

GeoComply PLC is software installed as a [user agent](https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLaunchdJobs.html#//apple_ref/doc/uid/10000172i-SW7-BCIEDDBJ).

When the application is run:

- It finds out if PLC is currently running with `pgrep PlayerLocationCheck`
- If it is running, we run `launchctl` from within the `LaunchAgents` directory to stop it
- If it is not running, we run `launchctl` from within the `LaunchAgents` directory to start it

## Notes

Tested on OSX 12.5 with PLC 3.1.1.3
