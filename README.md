```
By blackfirefly000
Copyright C 2024
Used with permission

Modified from the Remaster by MajorFivePD (dsvipeer)
Copyright C 2023

Modified from the original by FiveM Scripts (Mooreiche)
Copyright C 2018

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, either version 3 of the License, or
at your option any later version.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.
You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

CREDITS:
(IceHax) - for publishing an incomplete amublance script on cfx.re which gave me the idea and basic structure to create this script
Mooreiche - Me/Original Uploader
Mobius1 - huge thanks for fixing bugs and saving me alot of headache!
MajorFivePD (dsvipeer) - All bugs were fixed + added new backup
blackfirefly000 - Menu, SWAT, Motor Unit, weapons, individual depts, config, and more

From Moorieche: “Like the Scripts/Mods i publish for other Games you can edit, reupload, fix, delete, sniff, smoke or what ever you want with this script. Just do not delete anyone out of the credits and add your name to it!”

From MajorFivePD: “I’ve seen your work and I’m glad you took your time to rewrite! I’m honored to have my AIBackup work in it, great release!”
```
Credits to Mooreiche: https://github.com/Mooreiche/AIBackup
And to dsvipeer: https://github.com/dsvipeer/AIBackupRemaster

**Contact [blackfirefly000](https://github.com/blackfirefly000) on [Discord](https://discord.gg/YNJxjDMQdF) or the [FiveM Forums](https://forum.cfx.re/u/blackfirefly000/summary) for suggestions, comments, support, and other concerns. Support is mainly provided on discord. If you would like to assist in the project, message me on Discord or through the FiveM forums.**

# INSTALLATION | REQUIREMENTS | PREVIEWS | DOWNLOAD | HOW TO USE:

* **INSTALLATION:**
    * Drag "AIBackup2" folder into your server resources folder
    * Add "start AIBackup2" to your server.cfg

* **REQUIREMENTS:**
    * [NATIVEUI FOR LUA](https://github.com/FrazzIe/NativeUILua)
    * GAME BUILD 3095 (mp2023_02) **IF USING DEFAULT CONFIG**
    * OPTIONAL ESX or QBCore

* **PREVIEWS:** 
    * **[PATROL UNIT PREVIEW by dvipeer](https://www.youtube.com/watch?v=gXKo5G4lU_4)**
    * **[AIR UNIT PREVIEW by dvipeer](https://www.youtube.com/watch?v=PcPQ2wpQlq0)**

* **DOWNLOAD:**
    * **[DOWNLOAD HERE](https://github.com/blackfirefly000/AIBackup2/releases)**

* **HOW TO USE:**
    * To open the menu: "+" in your NUMPAD 
        * This keybind is changeable in the keybinds setting of your game
        * You are only able to call ONE unit and one type of unit, you can't call more than 1 patrol or 1 air unit, etc]
        * Controller Support in this resource disabled to avoid issues while using controller

# V1.1.1 BUG FIXES:

*  **BUG FIX:**
     * Fixed issue with motorcycle backup

# V1.1.0 CHANGES | NEW FEATURES:

*  **CHANGES:**
     * AI Driving Behavior changed based off testing from MajorFivePD
      
*  **NEW FEATURES:**

     * ESX and QBCore Support (not tested)
     * Version Checker

# V1.0.0 CHANGES | BUG FIXES | NEW FEATURES:

*  **CHANGES:**
     * When you leave your vehicle or call backup on foot, backup units will drive to you and leave their vehicle
      
*  **NEW FEATURES:**

     * ADDED MENU -> SEE ABOVE
     
     * ADDED MULTIPLE DEPARTMENT SUPPORT -> LSPD, LSSD, BCSO, SAHP, FIB
     
     * ADDED NEW BACKUP -> SWAT
         * SWAT will follow like regular patrol units but use rifles and armored vehicles
     
     * ADDED NEW BACKUP -> Motorcycle Unit
         * Motor Unit will follow like regular patrol units but use motorcycles
  
    * ADDED CONFIG -> SEE BELOW
         * Vehicle livery support
         * Vehicle extras support
         * Different weapons for SWAT and normal patrol
         * Weapon component support
         * Multiple vehicles per department
         * And much more!

# PLANNED FEATURES:
   * Fix backup not leaving their vehicle when you exit yours while they are too close
   * Add 4 SWAT team members to the SWAT backup
   * Backup enters their vehicle and follows you if you re-enter yours
   * Boat Unit
  

# CONFIGURATION:
   **Notes: READ ME PLEASE. No support will be given for issues discussed here. Please use your brain!**
   
1. All config options support multiple values unless otherwise marked.

2. MAKE SURE the commas in your arrays are set up correctly. Usually, if you try to start the resource with a malformed config, the console will display an error that explains this, but if it's not working, check this first

3. All arrays MUST be enclosed by { }. Generally, all values are in arrays, see #1.

4. Extras and liveries are currently shared by all vehicles of their type and department. (All LSPD Patrol is the same as all LSPD Patrol but is not the same as LSPD SWAT or LSSD Patrol, etc) I may fix this, may not, idk.

5. The livery index number is related to the number at the end of the sign texture in the vehicle ytd. The livery index starts at 0. Example: car_sign_1 is a livery for "car" with an index of 0. DO NOT LEAVE THIS VALUE BLANK

6. Framework configuration must be set to "Standalone", "ESX", or "QBCore". The script will not be useable if any other string is present

 **My Github: https://github.com/blackfirefly000**
 **My Profile: https://forum.cfx.re/u/blackfirefly000/summary**
 
