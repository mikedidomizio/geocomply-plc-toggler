# Enabling/disabling GeoComply Player Location Check (PLC) on OSX

The purpose of this repository is to give an easy to use script that has the ability
to start and stop the [GeoComply](https://www.geocomply.com/) Player Location Check software.

[Download ZIP file with script](https://github.com/mikedidomizio/GeoComply-PLC-Toggler/zipball/main)

or download the script from the [Releases page](https://github.com/mikedidomizio/GeoComply-PLC-Toggler/releases)

## Running it from your terminal

```shell
sh ./toggle_geocomply_plc.sh
```

## Running it from the Finder window

- Download the ZIP file above, and unzip it
- Find the file inside the created folder called `toggle_geocomply_plc.sh`
- Open it from the Finder window
- Result: PLC software should start or stop depending on the current state
- Not working?  Follow the steps below

##### Note: The following requires you to have the basic know how to run commands within the [terminal](https://support.apple.com/en-ca/guide/terminal/apd5265185d-f365-44cb-8b09-71a064a42125/mac)

You may need to change file permissions to execute the file

- Open the terminal
- Find the file
- Run the following command

```shell
chmod 700 ./toggle_geocomply_plc.sh
```

You should be able to run it from the Finder window from now on

## How it works

GeoComply PLC is software installed as a [user agent](https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLaunchdJobs.html#//apple_ref/doc/uid/10000172i-SW7-BCIEDDBJ).

When the script is run:

- It finds out if PLC is currently running with `pgrep PlayerLocationCheck`
- If it is running, we run `launchctl` from within the `LaunchAgents` directory to stop it
- If it is not running, we run `launchctl` from within the `LaunchAgents` directory to start it

## Notes

Tested on OSX 12.5 with PLC 3.1.1.3
