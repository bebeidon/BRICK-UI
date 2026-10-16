# BRICK UI

This is a personal backport of **[NX Redux](https://nxredux.com)** based on 1.13 with backports from later releases too and focused on the Brick (Hammer).

There are custom backgrounds with the art of [Yumykon](https://www.instagram.com/yumykon/) included.
Thank you for giving permission to use your art in this project.

After installing the update the new backgrounds will be in the default Tools, Collections and "Recently Played" folders.

The extra Yumykon Ports, GBA and GBA Hacks backgrounds and a extra GBA Hacks, NGPC and Arcade background can be directly downloaded [here](https://github.com/bebeidon/nx-redux/releases/tag/artbook_custom_backgrounds).

To use them you need to put them in your Roms folder, for example /Roms/Game Boy Advance (GBA)/.media/bg.png

**Backports from NX Redux 2.0 and later:**
- drop the measured Auto CPU caps so Auto uses the full clock range
- drop the brightness hint on volume-only presses
- Genesis Plus GX netplay
- duplicate arcade roms shown now correctly with their region dimmed down like other duplicate roms
- renaming now with original rom name pre-entered
- lowest volume is now lower
- RetroAchievements now load in a background task so it doesn't slow down game start
- RetroAchievements now checks if badges are already loaded and skips if they are
- keep RetroAchievements working after sleep and harden offline unlock sync
- fixed a problem with offline RetroAchievement unlocks/sync
- offer only the effects/modes the LED driver supports in LED Settings
- show the battery percentage while charging

**Changes from NX Redux so far:**
- new LED behaviour: starts at 10% battery instead of 20% and is static red instead of blinking
- no LED blinking/breathing while charging; the power button still glows orange while charging and green when full
- "Recently Played" renamed to "Last Played"
- Netplay hint hidden but still working (hardcoded, no menu option)
- Improved folder/console background transition, now they should never hang/delay or fail to show the background
- added my favorite shader zfast-crt to the default shaders
- SwanStation now integrated with RetroAchievement and ArtworkScraper support as SWAN
- build: support SELinux Docker workspace mounts
- UI overhaul: back to NextUI look; removed top and bottom opacity bars, removed menu title in gamelist, removed navigation arrows/indicators, moved list back to top and added a row, added proper spacing between rows

---

<img width="400" height="300" alt="SCR_20261016_095820" src="https://github.com/user-attachments/assets/f025923d-28e4-4a4e-a023-ab9a0cf9f7d7" />
<img width="400" height="300" alt="SCR_20261016_095825" src="https://github.com/user-attachments/assets/c58f60c0-9800-4294-b69c-b6ea5cd8395b" />
<img width="400" height="300" alt="SCR_20261016_095836" src="https://github.com/user-attachments/assets/a8232acd-4865-4dfe-9f35-7da463f82d9e" />
<img width="400" height="300" alt="SCR_20261016_095840" src="https://github.com/user-attachments/assets/0c74387b-b559-408b-a5ce-0c0cfcb130ed" />
<img width="400" height="300" alt="SCR_20261016_100020" src="https://github.com/user-attachments/assets/15530409-6e75-4e66-a958-210ae5b01411" />
<img width="400" height="300" alt="SCR_20261016_100103" src="https://github.com/user-attachments/assets/51e3d7e9-5a73-4ae6-a828-eb2a816a7c4e" />
<img width="400" height="300" alt="SCR_20261016_100300" src="https://github.com/user-attachments/assets/c7f8a5da-898e-49f0-a88c-ac2cf770f267" />
<img width="400" height="300" alt="SCR_20261016_095855" src="https://github.com/user-attachments/assets/7d8d4550-8da2-4b1c-a8fe-17cf3fcdfcb4" />
<img width="400" height="300" alt="SCR_20261016_095900" src="https://github.com/user-attachments/assets/0a8f041e-e53d-46d4-9900-e2d0e7114c4a" />
<img width="400" height="300" alt="SCR_20261016_095903" src="https://github.com/user-attachments/assets/8412ec69-5cfb-46c6-a909-6109a41487ca" />

---

<img width="400" height="300" alt="SCR_20261017_142054" src="https://github.com/user-attachments/assets/2d27af31-7325-4a8d-b843-bc4c3a1bc8f9" />
<img width="400" height="300" alt="SCR_20261017_141815" src="https://github.com/user-attachments/assets/e32d1e80-d338-4157-b9bb-dc6b87573540" />
<img width="400" height="300" alt="SCR_20261017_141825" src="https://github.com/user-attachments/assets/d25f0e21-df34-42c3-b508-1d55c4fb0f4d" />
<img width="400" height="300" alt="SCR_20261017_141840" src="https://github.com/user-attachments/assets/8447eeda-5f4a-497e-905e-33d8308209c4" />
<img width="400" height="300" alt="SCR_20261017_141857" src="https://github.com/user-attachments/assets/aa7f1727-e93d-4e9b-bd68-c746eff3e489" />
<img width="400" height="300" alt="SCR_20261017_142037" src="https://github.com/user-attachments/assets/c384eab5-3606-47c9-971e-306bcf4ef91e" />


## License

Licensed under **GNU GPL v3.0**, the license NX Redux was under at the time of the fork.

All original copyrights are retained.
Modifications in this repository are also distributed under GPL-3.0.

See the [LICENSE](LICENSE) file for details.


> *BRICK UI is an independent fork and is not affiliated with the original NX Redux project.*
