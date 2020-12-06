# Battery Status

Check the current status of your laptop's battery and notify if it is time to start or stop charging in order to spare the battery.

## Prerequisites

Make sure `acpi` and `notify-send` are installed and available on your computer

Set the threshold values within the script to your personal preference:

| Variable        | Description                        | Default |
|-----------------|------------------------------------|---------|
| UPPER_THRESHOLD | upper limit while charging         | 80      |
| LOWER_THRESHOLD | lower limit while **not** charging | 30      |

## Installation

Run the script as a crontab every five minutes or so (`crontab -e`):

```shell-script
*/5 * * * * /path/to/battery_status_check.sh
```
