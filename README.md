# timeshift-autosnap
Timeshift auto-snapshot script which runs before package upgrade using Pacman hook.

# Features
*  Creates Timeshift snapshots with comment based on pacman command.
*  Deletes old snapshots which are created using this script.
*  Creates optional snapshot of /boot and /boot/efi before creating Timeshift snapshot
*  Can be manually executed by running `timeshift-autosnap` command with elevated privileges.
*  Autosnaphot can be temporarily skipped by setting SKIP_AUTOSNAP environment variable (e.g. `sudo SKIP_AUTOSNAP= pacman -Syu`)

# /etc/timeshift-autosnap.conf options:
*  `snapshotBoot` - if set to **true** the /boot folder will be cloned into /boot.backup before the call to timeshift.
*  `snapshotEFI`  - if set to **true** the /boot/efi folder will be cloned into /boot.backup/efi before the call to timeshift.
*  `skipAutosnap` - if set to **true** script won't be executed.
*  `skipRsyncAutosnap` - if set to **true** snapshots will be skipped on filesystems other than btrfs.
*  `deleteSnapshots` - if set to **false** old snapshots won't be deleted.
*  `maxSnapshots` - defines **maximum** number of old snapshots to keep.

# Notes
*  It' working both in `BTRFS` and `RSYNC` mode.
*  This script is made in Arch and Arch based distros in mind but if there would be interest it should be easily ported to other distros.

# Contribution
*  All new ideas and contributors are welcomed!

This a clone of Matti Hyttinen solution: https://gitlab.manjaro.org/Chrysostomus/timeshift-autosnap
Containing code by Willi Mutschler for Boot and EFI snapshots: https://github.com/wmutschl/timeshift-autosnap-apt
