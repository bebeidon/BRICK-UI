
#!/bin/sh
set -eu

SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
SD_ROOT="${1:?Usage: $0 /path/to/SDCARD}"

copy_bg() {
    src="$1"
    dest="$2"

    if [ ! -f "$src" ]; then
        echo "Background missing: $src" >&2
        return 0
    fi

    mkdir -p "$dest/.media"
    cp -f "$src" "$dest/.media/bg.png"
    echo "Installed background: $dest/.media/bg.png"
}

# Fixed folders
copy_bg "$SCRIPT_DIR/Tools/.media/bg.png" "$SD_ROOT/Tools"
copy_bg "$SCRIPT_DIR/Collections/.media/bg.png" "$SD_ROOT/Collections"
copy_bg "$SCRIPT_DIR/Recently Played/.media/bg.png" "$SD_ROOT/Recently Played"

copy_bg "$SCRIPT_DIR/Roms/Game Boy Advance (MGBA)/.media/bg.png" "$SD_ROOT/Roms"
copy_bg "$SCRIPT_DIR/Roms/Arcade (FBN)/.media/bg.png" "$SD_ROOT/Roms"
copy_bg "$SCRIPT_DIR/Roms/Neo Geo Pocket Color (NGPC)/.media/bg.png" "$SD_ROOT/Roms"
copy_bg "$SCRIPT_DIR/Roms/Ports (PORTS)/.media/bg.png" "$SD_ROOT/Roms"
