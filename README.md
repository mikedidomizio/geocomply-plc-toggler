# Enabling/disabling GeoComply Player Location Check on OSX

The purpose of this repository is to give an easy to use script that has the ability
to toggle the [GeoComply](https://www.geocomply.com/) Player Location Check software.

[Download ZIP file with script](https://github.com/mikedidomizio/GeoComply-PLC-Toggler/zipball/main)

or download the script from the [Releases page](https://github.com/mikedidomizio/GeoComply-PLC-Toggler/releases)

## Running it from your terminal

```shell
sh ./toggle_geocomply_plc.sh
```

## Running it from the Finder window

You need to change file permissions of the file before it can be executed.

```shell
chmod 700 toggle_geocomply.sh
```

You should be able to run it from the Finder window from now on.

## How it works

- PLC is installed as a [user agent](https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLaunchdJobs.html#//apple_ref/doc/uid/10000172i-SW7-BCIEDDBJ).
- We find out if PLC is currently running with `pgrep PlayerLocationCheck`
- If it is running, we run `launchctl` from within the `LaunchAgents` directory to stop it
- If it is not running, we run `launchctl` from within the `LaunchAgents` directory to start it

## Notes

Tested on OSX 12.5 with PLC 3.1.1.3
