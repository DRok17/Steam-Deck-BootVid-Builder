# BootVid-Builder for Steam Deck

BootVid-Builder is a tool that allows users to create and apply their own Boot Startup Videos and switches between them on demand.

Official Steam Deck Overrides is now supported (see warning below). Please use the additional z-Override-Toggle.sh to enable it (only on Beta/Preview channels for Steam Deck).

<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

### *** WARNING ***
Stable, Beta, and Preview CSS and JS files should not be mixed. This can potentially **SOFT-BRICK** your Steam Deck, preventing it from booting into Steam OS. Factory restore is the only solution. If you have updated to Beta or Preview, please enable z-Override-Toggle.sh and do not disable it for any reason. Any duration issues related to this update will need to be fixed by Valve.
### *** WARNING ***
<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

#### Simply follow these steps to apply WEBM BootVids:
1) Download the required WEBM video files
2) Place them into the WEBM-Input folder
3) Inside WEBM-Input folder, and run the Add-Video-2-Library.sh script (double-click)
4) WEBM and an accompanied SH script will moved to the Vids folder in the previous directory
5) Inside Vids folder, select the named folder that matches your file name and open it
6) Run the z-prep-apply-boot.sh script (double-click)
7) Steam Deck will then reboot with the applied BootVid video

<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>
<!-- MB Menu -->
<p align="center">
  <img src="https://user-images.githubusercontent.com/81541725/193354746-28745938-4723-477f-84ce-0d414eff12eb.gif?raw=true" alt="Sublime's custom image"/>
</p>
<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

<!-- MB Menu -->
<p align="center">
  <img src="https://user-images.githubusercontent.com/81541725/193355518-d2336c68-764a-45b1-8019-72ac7b594c87.gif?raw=true" alt="Sublime's custom image"/>
</p>

<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>


#### Video Conversion:
1) Download the required MP4 video files
2) Inside the Converter folder, place the MP4 files into the Input Folder (no limit, script will process each one seperately)
3) In the previous directory, run one of the scripts below:
   - 16secs-and-under.sh - Videos 16 seconds and under will be resized to 1.8 mb (results can vary)
   - 16secs-and-under-SMALL.sh  - Videos 16 seconds and under will be resized to 1.7 mb (Smaller version of the above script)
   - 17secs-and-over.sh  - Videos 17 seconds and over will be resized to 1.4 mb (results can vary)
4) Video conversion will begin in the background
5) Once completed files will be placed as follows:
   - MP4 : Input/Done
   - WEBM : Out
6) File can now be placed into the WEBM-Input folder

<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>
<!-- MB Menu -->
<p align="center">
  <img src="https://user-images.githubusercontent.com/81541725/193466655-e063eca8-53be-4028-b65c-84936b3353d5.gif?raw=true" alt="Sublime's custom image"/>
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

-->

<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
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

#### Additional Features:

Reset-2-Default - Resets your Steam Deck library.css and library.js files back to default

Extract-Vids - Allows Users to extract all WEBM files from the Vids folder for storage purposes or to reprocess them.

Override-Toggle - Official Steam Deck support when Override is enabled. (MUST HAVE PREVIEW CHANNEL ENABLED TO WORK)

Add Non-Steam Game Icons - Add movefiles.sh or z-Reset-2-Default.sh to the home screen. Allows users to re-apply the last custom BootVid or reset back to default.

<!-- MB Menu -->
<p align="center">
  <img src="https://user-images.githubusercontent.com/81541725/193622598-906d4a03-1f12-428e-87a6-7bd4c9eb2765.png?raw=true" alt="Sublime's custom image"/>
</p>



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

[AutoMcG](https://github.com/AutoMcG/steamdeck_tools) - Without him, it would have taken me much longer to create this.

[kageurufu](https://github.com/kageurufu/steamdeck_startup_animations) - For their work on startup animations and use of FFmpeg.

[tobek](https://unix.stackexchange.com/a/598360) - Used his FFmpeg script to improve Converter

[FFmpeg](https://ffmpeg.org/) - Media converter used, Linux and Windows versions.

[r/SteamDeckBootVids](https://www.reddit.com/r/SteamDeckBootVids/) - For providing the inspiration and creating awesome BootVids



