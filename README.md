# BootVid-Builder for Steam Deck

BootVid-Builder is a tool that allows users to create and apply their own Boot Startup Videos and switches between them on demand.

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

#### Video Conversion:
1) Download the required MP4 video files
2) Inside the Converter folder, place the MP4 file (one file at the time) into the Input Folder
3) In the previous directory, run the either scripts below:
   - zLinux-Convert-and-Resize-500k.sh - Video Bitrate 500k and Audio Bitrate 64k - Lower quality, smaller file size (Best for video 16 seconds and over)
   - zLinux-Convert-and-Resize-1000k.sh  - Video Bitrate 1000k and Audio Bitrate 64k - Better quality, larger file size (Best for videos 15 seconds and under)
4) Video conversion will begin in the background
5) Once completed files will be placed as follows:
   - MP4 : Input/Done
   - WEBM : Out
6) File can now be placed into the WEBM-Input folder

#### Optional
- Windows batch files have also been provided for video conversion.

<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

#### Supported File Types:
<!-- Aligns table to center -->
<img align="left" width="225" height="100" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">

| Video Files  |
| :---: |
| .mp4  | 
| .webm  | 


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
  <img src="https://user-images.githubusercontent.com/81541725/193352871-a506502b-88c1-41c8-8fc8-01365009f936.png?raw=true" alt="Sublime's custom image"/>
</p>


<!-- Spacer -->
<p align="center">
  <img width="10" height="10" src="https://user-images.githubusercontent.com/81541725/168428087-611fe26a-aeb0-4617-98d7-9a239ea716d8.png">
</p>

#### Additional Features:

Reset-2-Default - Resets your Steam Deck library.css and library.js files back to default


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

[AutoMcG](https://github.com/AutoMcG/steamdeck_tools) - Making the first script-based BootVid applier. Without him, it would have taken me much longer to create this.

[r/SteamDeckBootVids](https://www.reddit.com/r/SteamDeckBootVids/) - For providing the inspritation and creating awesome BootVids



