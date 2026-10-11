
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

# Arcade and NGPC: match folder suffixes so prefixes can vary
copy_matching_rom_bg() {
    suffix="$1"
    src="$2"
    found=0

    if [ ! -d "$SD_ROOT/Roms" ]; then
        echo "ERROR: ROM directory not found: $SD_ROOT/Roms" >&2
        return 1
    fi

    for dir in "$SD_ROOT"/Roms/*" $suffix"; do
        [ -d "$dir" ] || continue

        found=1
        copy_bg "$src" "$dir"
    done

    if [ "$found" -eq 0 ]; then
        echo "ERROR: No ROM folder ending in $suffix found in $SD_ROOT/Roms" >&2
        return 1
    fi
}

# GBA: use the standard MGBA folder
copy_matching_rom_bg "(MGBA)" \
    "$SCRIPT_DIR/Roms/Game Boy Advance (MGBA)/.media/bg.png"

copy_matching_rom_bg "(FBN)" \
    "$SCRIPT_DIR/Roms/Arcade (FBN)/.media/bg.png"

copy_matching_rom_bg "(NGPC)" \
    "$SCRIPT_DIR/Roms/Neo Geo Pocket Color (NGPC)/.media/bg.png"

copy_matching_rom_bg "(PORTS)" \
    "$SCRIPT_DIR/Roms/Ports (PORTS)/.media/bg.png"
