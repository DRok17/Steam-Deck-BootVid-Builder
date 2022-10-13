# BootVid-Builder for Steam Deck

BootVid-Builder is a tool that allows users to apply or create their own Boot Startup or Suspend Videos and switches between them on demand.

Both Suspends and Throbber animations will be replaced at the same time. If there's a need for a separtation of the two, please open an Issue and we can discuss.

Valve has now introduced official support for Overrides. Files will be placed the following directory:

/home/deck/.steam/root/config/uioverrides/movies/
| :---: |

## Installing and Getting Started with BootVid-Builder on Steam Deck
1) Go to Desktop mode
2) Download the latest release from https://github.com/DRok17/Steam-Deck-BootVid-Builder/releases (Zip file only)
3) Extract ZIP file to either Home or Removable Storage (SD card)
4) Once extracted, open the BootVid-Builder-1.5 folder and locate the 1-Execute-All-Sh-Files.sh file
5) Right-click on said file and go to Properties > Permissions
6) Under Permissions tab, enable/check the "Is executable" option click OK
7) Run the 1-Execute-All-Sh-Files.sh file, this will enable all necessary scripts and grant Execute permissions

<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

<!-- Center Text -->
<p align="center">
- Installation -
</p>

<!-- MB Menu -->
<p align="center">
  <img src="https://user-images.githubusercontent.com/81541725/194443084-d3d63c17-2bfe-40ab-a678-9d29e9c90736.gif?raw=true" alt="Sublime's custom image"/>
</p>

<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

## Applying BootVids and Suspends
1) Download the required WEBM video files
2) Place them into the WEBM-Input folder
3) Inside WEBM-Input folder, and run either script (double-click):
    - Add-Video-2-Library.sh
    - Add-Suspend-2-Library.sh
4) WEBM and an accompanied SH script will moved to the either the Vids or Suspends folder in the previous directory
5) Inside Vids or Suspends folder, select the named folder that matches your file name and open it
6) Run either script below (double-click):
    - z-prep-apply-boot.sh
    - z-prep-apply-suspend.sh
7) Steam Deck will then log off with the applied BootVid and/or Suspend video

<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

<!-- Center Text -->
<p align="center">
- Adding WEBM files to Video Library -
</p>

<!-- MB Menu -->
<p align="center">
  <img src="https://user-images.githubusercontent.com/81541725/193354746-28745938-4723-477f-84ce-0d414eff12eb.gif?raw=true" alt="Sublime's custom image"/>
</p>
<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

<!-- Center Text -->
<p align="center">
- Apply BootVid -
</p>
<!-- MB Menu -->
<p align="center">
  <img src="https://user-images.githubusercontent.com/81541725/193355518-d2336c68-764a-45b1-8019-72ac7b594c87.gif?raw=true" alt="Sublime's custom image"/>
</p>

<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

## Video Conversion
1) Download the required MP4 video files
2) Inside the Converter folder, place the MP4 files into the Input Folder (no limit, script will process each one seperately)
3) In the previous directory, run the script below:
   - Convert-MP4-2-WEBM.sh - File size is aimed for 5mb but results can vary. Mostly just good quality with less compression.
4) Video conversion will begin in the background
5) Once completed files will be placed as follows:
   - MP4 : Input/Done
   - WEBM : Out
6) File can now be placed into the WEBM-Input folder

<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

<!-- Center Text -->
<p align="center">
- Video Converter -
</p>

<!-- MB Menu -->
<p align="center">
  <img src="https://user-images.githubusercontent.com/81541725/193466655-e063eca8-53be-4028-b65c-84936b3353d5.gif?raw=true" alt="Sublime's custom image"/>
</p>
<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>




## BootVid-Shuffler

This tool will copy all of the BootVids placed in the Vids folder and install a service to shuffle/randomize BootVids at every restart.

To enable/disable, just run the z-BootVid-Shuffler.sh script and restart the device.

Any BootVid that's added to the Video Library via WEB-Input folder will join the rotation.

BootVids are placed in the following folder:

/home/deck/homebrew/.shuffle/
| :---: |

<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>


## Log off and Shuffle

If BootVid Shuffler is enabled, Shuffles BootVid before performing the "Return to Gaming Mode" command, basically bypassing the restart rule.

<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

## Change Duration

Duration of BootVids can be adjusted from 10, 30 and 60 seconds increments. (NOTE: If duration has been updated manually, you may need to cycle thru the options or revert to 1e4).

<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

## Resize Suspends

Suspends can be toggled between 450 by 450 or 1280 by 800 resolutions.

<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

## Extract Vids

All BootVids are extracted to the All-Vids folder. Vids folder reset to 0.
<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

## Reset to Default

Resets BootVids and Suspends back to Steam Deck defaults. BootVid only option available.

<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>



<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

 <!--
#### Supported File Types:

| Video Files  |
| :---: |
| .mp4  | 
| .webm  | 
<!--
-->

<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

<!-- Center Text -->
<p align="center">
- Screenshots -
</p>

<!-- MB Menu -->
<p align="center">
  <img src="https://user-images.githubusercontent.com/81541725/193352170-9c1140e2-00b4-4d01-a857-91028b62ab40.png?raw=true" alt="Sublime's custom image"/>
</p>

<!-- MB Menu -->
<p align="center">
  <img src="https://user-images.githubusercontent.com/81541725/193352647-99523ee7-843d-4dfd-a873-b9a8c243281e.png?raw=true" alt="Sublime's custom image"/>
</p>

<!-- MB Menu -->
<p align="center">
  <img src="https://user-images.githubusercontent.com/81541725/193466812-91be4052-3304-41d6-b1bf-16fe2333e93d.png?raw=true" alt="Sublime's custom image"/>
</p>


<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

<!-- 

#### Additional Features:

Reset-2-Default - Resets your Steam Deck library.css and library.js files back to default

Extract-Vids - Allows Users to extract all WEBM files from the Vids folder for storage purposes or to reprocess them.

Add Non-Steam Game Icons - Add movefiles.sh or z-Reset-2-Default.sh to the home screen. Allows users to re-apply the last custom BootVid or reset back to default.
-->
<!-- MB Menu -->
<!-- <p align="center">
  <img src="https://user-images.githubusercontent.com/81541725/193622598-906d4a03-1f12-428e-87a6-7bd4c9eb2765.png?raw=true" alt="Sublime's custom image"/>
</p>
-->


<!-- <p align="center">
  <img src="https://user-images.githubusercontent.com/81541725/124930830-a8e90580-dfcf-11eb-980b-999fe3a546bc.png?raw=true" alt="RetroBuilder"/>
</p>
-->





<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>


## Shoutouts:

#### ** GENERAL SHOUTOUTS **

[AutoMcG](https://github.com/AutoMcG/steamdeck_tools) - Creator of VidSwap, used his work as a starting point for CSS and JSS file changes

[kageurufu](https://github.com/kageurufu/steamdeck_startup_animations) - For their work on startup animations and use of FFmpeg.

[tobek](https://unix.stackexchange.com/a/598360) - Used his FFmpeg script to improve BootVid-Converter

[Shawn](https://stackoverflow.com/users/9952196/shawn) - Script used for BootVid-Shuffler

[FFmpeg](https://ffmpeg.org/) - Media converter used, Linux and Windows versions.

[r/SteamDeckBootVids](https://www.reddit.com/r/SteamDeckBootVids/) - For providing the inspiration and creating awesome BootVids

https://stackoverflow.com/users/9952196/shawn

