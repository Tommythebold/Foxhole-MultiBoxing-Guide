# Foxhole Multiboxing Guide
This guide will help you setup a very powerful and easy to use multiboxing setup for Foxhole logistics, including managing many accounts with Sandboxie using batch files, controlling and moving your game windows using OpenMultiBoxer, and give you a set of AutoHotKey autoclickers that target each game account specifically and work while tabbed out - and even share keybinds. Never deal with sandboxes breaking, logging in to alts all the time, steam endlessly updating, autoclickers not working on alts, and more ever again.
<details>
<summary>Click for Preview Images</summary>
<img src="https://github.com/user-attachments/assets/4f33720e-b04e-4939-a598-77a6b7911ef4" width="700">
<img src="https://github.com/user-attachments/assets/4db34da5-9e39-45a8-88f7-f4b8e37d2d31" width="700">
</details>


# Contents
[Preamble](https://github.com/Tommythebold/Foxhole-MultiBoxing-Guide?tab=readme-ov-file#preamble)

[Steam Setup](https://github.com/Tommythebold/Foxhole-MultiBoxing-Guide?tab=readme-ov-file#steam-setup)

[Sandboxie Setup](https://github.com/Tommythebold/Foxhole-MultiBoxing-Guide?tab=readme-ov-file#sandboxie-setup)

[Batch Files](https://github.com/Tommythebold/Foxhole-MultiBoxing-Guide?tab=readme-ov-file#batch-files)

[Master Batch Files](https://github.com/Tommythebold/Foxhole-MultiBoxing-Guide?tab=readme-ov-file#master-batch-files)

[AutoClickers](https://github.com/Tommythebold/Foxhole-MultiBoxing-Guide?tab=readme-ov-file#autoclickers)

[OpenMultiBoxing](https://github.com/Tommythebold/Foxhole-MultiBoxing-Guide?tab=readme-ov-file#openmultiboxing)

# Preamble
> [!IMPORTANT]
> Multiboxing, and this guide, are for moderately advanced users! You must be able to navigate File Explorer, edit files in Notepad, and do some testing/expirementing to get your setup just right for you. This guide will
> walk you through step by step, but you must have patience and perhaps even the ability to google a couple things.
> If you put in the effort and complete this guide, you will have the most powerful and easy multiboxing setup that
> I have built over years of playing. 

## Is this allowed?
Multiboxing is allowed in Foxhole, so long as your alts are on the same team. Single action autoclickers are also allowed. Most logi vets use multiple accounts.


## What you can do with this guide.
If you follow this guide, you will be able to:
* Run as many steam accounts/Foxhole games on the same PC at once as you like.
* Easily switch between windows and organize them anyway youd like.
* Control your entire multiboxing setup with just a few batch files. 
* Use an autoclicker that allows you to tab out for all accounts - inluding spam click at the chosen location, moving, building, or whatever else you want. You can even use the same keybinds for all accounts!

## Requirements
* [OpenMultiBoxing](https://openmultiboxing.org/) - for organizing the game windows and switching between them. Also renames the windows, required for the autoclickers to work.
* [SandBoxie-Plus](https://sandboxie-plus.com/) - for running multiple steam accounts/Foxhole games on the same PC.
* [AutoHotKey](https://www.autohotkey.com/) - for the autoclickers to work. Use v1.

-----
> [!WARNING]
> Consider using a seperate password for your steam alt accounts! This guide requires you to disable steam guard and type your steam password into the properties part of a shortcut file for your _alt accounts_, to allow for instant login from a batch file. If you don't,
> you will have to constantly do email checks or even 2FA. 



# Guide
> [!IMPORTANT]
> Read everything in this guide! There are many important tips that will ensure your setup works perfectly!


## Steam Setup

1. Tab into Steam. Click on `Username > Change accounts` on the top right of Steam, and login to your alt account. Your PC will remember certain steam and Foxhole settings per account, so they will always be correct, even when you delete your sandbox contents for updates. (Yes, you need to do this outside of Sandboxed steam).

Once you are logged into your **_alt account_** on steam, 

2. Disable steam Beta, if it isn't already.
- `Steam > Settings > Interface > Client Beta Participation > No Beta Chosen`
<details>
<summary>Image</summary>
<img src="https://github.com/user-attachments/assets/8fcb0164-4bdd-4d27-a972-bb751b6fe7ba" width="300">
<img src="https://github.com/user-attachments/assets/98a8caf4-97e6-4250-8b68-28abe92e96a0" width="700">
</details>

3. Disable steam guard. This will allow for instant login from the batch files, bypassing email-codes and even 2FA for logins. 
- `Steam > Settings > Security > Manage Steam Guard > Turn Steam Guard off`
<details>
<summary>Image</summary>
<img src="https://github.com/user-attachments/assets/4ff4dbb6-e7eb-4488-b4d3-d28e24a27a10" width="500">
<img src="https://github.com/user-attachments/assets/5ab0db66-2ca5-48aa-9d81-de72ae29b952" width="500">
</details>


4. <ins>Important step!</ins> Launch Foxhole. You must do this on every alt outside of a Sandbox so your PC remembers these settings. Accept the EULA that pops up, choose the Able server (it defaults to Charlie), login. Click through the tutorials (it resets this), deploy somewhere and click through the tutorials again. Go to your settings, turn on sprint toggle and whatever other settings you want it to remember. When you are done, close the game. 


5. Repeat the steps above for every alt account!
> [!TIP]
> If you notice settings being wrong when you reset sandboxes for an update, follow step 3 again! 

Switch back to your main steam account and make sure steam beta is disabled so you don't have to update your sandboxes every day. Always make sure both Foxhole and steam are up to date. Any time Foxhole or Steam updates, you will have to reset your sandboxes - this is easy and will be explained later.

## Sandboxie Setup
Install [SandBoxie-Plus](https://sandboxie-plus.com/) and open it. 

1. Create a Sandbox `Right Click > Create New Box` or `Sandbox > Create New Box`.
<details>
<summary>Image</summary>
<img src="https://github.com/user-attachments/assets/963c2a4e-e87c-44bc-925b-ca6799b5d613" width="300">
</details>


- Name it Account1 (or you will have to change it in the batch files), and choose Standard Sandbox. You can skip the next page and finish.
<details>
<summary>Image</summary>
<img src="https://github.com/user-attachments/assets/b24dbd11-fe69-46b3-9cc8-86ea0486fdb9" width="500">
<img src="https://github.com/user-attachments/assets/1baab49e-4dab-4d40-926e-e05226d42647" width="500">
</details>


- <ins>Important step!</ins> `Right click Account1 > Sandbox Preset > Emulate Admin Rights`. By setting this option, it will not ask for admin permission every time it launches!
<details>
<summary>Image</summary>
<img src="https://github.com/user-attachments/assets/dffd294d-a8f4-4cee-bcef-bc6d1d3c514c" width="500">
</details>


- Repeat the following step for however many accounts you have. `Right click Account1 > Sandbox Tools > Duplicate Box Config`. Name it Account2, Account3, etc... (or whatever you want).
<details>
<summary>Image</summary>
<img src="https://github.com/user-attachments/assets/49090364-230b-4ec2-9ba7-d8be2ff9b6c3" width="500">
</details>

-----
> [!IMPORTANT]
> The following steps might seem intimidating, but it's actually pretty simple! Doing this one-time setup will save you so much time overall.

## Batch Files
1. Download the repository by clicking [here](https://github.com/Tommythebold/Foxhole-MultiBoxing-Guide/releases). Click on the file you downloaded. You will see a folder named `Foxhole Multiboxing` - drag this folder onto the top level of your C: Drive. The batch files paths are setup assuming you put the folder here!

2. Open the Foxhole Multiboxing folder. The path should be `C:\Foxhole Multiboxing`. Then open the Sandboxie folder. `C:\Foxhole Multiboxing\Sandboxie`. You will see all the batch files here.

3. Open the Login Info folder. `C:\Foxhole Multiboxing\Sandboxie\Login Info`. `Right Click > Properties` on the `1 - Login Info` shortcut file. This should be a shortcut to your steam.exe file. 
    - The 'Target' field should have `"C:\Program Files (x86)\Steam\steam.exe" -silent -login USERNAME PASSWORD` as its contents. The first part should point to your steam.exe file - if it's wrong, find your steam.exe, and `Shift + Right Click > Save as path` it. Then replace the existing steam path with the correct one.
    - Enter your ALT ACCOUNTS username and password where it says USERNAME and PASSWORD. This will allow for auto login, since you disabled Steam Guard earlier.
4. Go back to the Sandboxie folder `C:\Foxhole Multiboxing\Sandboxie`. Find the file named `S1 - Launch Steam`. The 1 refers to which account it will launch. `Right Click > Edit in Notepad` this file.
   - You will see the following text
    ```
    "C:\Program Files\Sandboxie-Plus\start.exe" /box:Account1 "C:\Foxhole Multiboxing\Sandboxie\Login Info\1 - Login Info.lnk"
    ```
   - The first field is the path to your sandboxie exe file. It might be correct by default - if not, find it in your program files folder, and again `Shift + Right Click > Save as path` the file, and replace the path in the batch file.
   - The second field is your sandbox name.
   - The third field is the path to your steam shortcut you just setup. If the path is wrong, go back into the Login Info folder, and once again, `Shift + Right Click > Save as path` the login info file with the same number, and paste it into the third field of the batch file, replacing the old path. 
6. Go back to the Sandboxie folder `C:\Foxhole Multiboxing\Sandboxie`. Find the file named `F1 - Launch Foxhole`. The 1 refers to which account it will launch. `Right Click > Edit in Notepad` this file.
   - You will see the following text
     ```
     "C:\Program Files\Sandboxie-Plus\start.exe" /box:Account1 "C:\Steam\steamapps\common\Foxhole\War\Binaries\Win64\War-Win64-Shipping.exe"
       ```
   - The first field is the path to your sandboxie exe file. It might be correct by default - if not, find it in your program files folder, and again `Shift + Right Click > Save as path` the file, and replace the path in the batch file.
   - The second field is your sandbox name.
   - The third field is the path to your Foxhole game exe. If it's wrong, go to steam and find your Foxhole game on the left, then `Right Click > Manage > Browse Local Files`. In the folder that opens, go to `War > Binaries > Win64 > War-Win64-Shipping.exe`. Once again, `Shift + Right Click > Save as path` this file, and paste it into the third field of the batch file, replacing the old path. 

You have completed the most difficult part of the setup! Copy and paste the files above and edit the numbers to corrospond to each of your alt accounts as needed. For example, if you have 2 accounts, then copy all 3 files mentioned above, and rename to F2, etc, and edit the `Account1` inside the two batch files to say `Account2`. 

## Master Batch Files
We can now setup the 2 batch files that can launch and reset all your sandboxes at once.
1. In `C:\Foxhole Multiboxing\Sandboxie`, find `_Reset All Sandboxes` and `Right Click > Edit in Notepad`.
   - You will see
     ```
     "C:\Program Files\Sandboxie-Plus\start.exe" /box:Account1 /terminate
     "C:\Program Files\Sandboxie-Plus\start.exe" /box:Account1 delete_sandbox_silent
        ```
   - Verify the first field has the correct path like earlier.
   - For every alt account you have, just copy and paste the two lines and change the `Account1` to `Account2` etc.
   - Below is an example of how it would look with 2 accounts.
       ```
       "C:\Program Files\Sandboxie-Plus\start.exe" /box:Account1 /terminate
       "C:\Program Files\Sandboxie-Plus\start.exe" /box:Account1 delete_sandbox_silent
       "C:\Program Files\Sandboxie-Plus\start.exe" /box:Account2 /terminate
       "C:\Program Files\Sandboxie-Plus\start.exe" /box:Account2 delete_sandbox_silent
       ```
   - When you are done, save the file and close it. This batch file will reset and delete the contents of all your sandboxes at once when you double click it.
   > You will have to do this every time Foxhole or Steam updates - or you will get stuck in the Steam update screen!

2. In `C:\Foxhole Multiboxing\Sandboxie`, find `_Launch All Sandboxes` and `Right Click > Edit in Notepad`.
   - You will see
     ```
     "C:\Program Files\Sandboxie-Plus\start.exe" /box:Account1 "C:\Foxhole Multiboxing\Sandboxie\Login Info\1 - Login Info.lnk"
     ```
   - This is the same text as your `S1 - Launch Steam` batch file.
   - For every alt account you have, just copy and paste the line of text and change the `Account1` to `Account2`, as well as changing the `1 - Login Info.lnk` at the end of the line to `2 - Login Info.lnk`, etc.
   - Below is an example of how it would look with 2 accounts.
       ```
        "C:\Program Files\Sandboxie-Plus\start.exe" /box:Account1 "C:\Foxhole Multiboxing\Sandboxie\Login Info\1 - Login Info.lnk"
        "C:\Program Files\Sandboxie-Plus\start.exe" /box:Account2 "C:\Foxhole Multiboxing\Sandboxie\Login Info\2 - Login Info.lnk"
       ```
   - When you are done, save the file and close it. This batch file will launch steam through all of your sandboxes at once.



# Autoclickers
Before we get to setting up OpenMultiBoxer, we will setup our AHK Hotkeys. 

There are 2 types of hotkeys we can use. The first and easiest setup will share the same hotkeys between all accounts, and will work when you tab into a certain accounts game window.
For example, if you tab into OMB 1 and press F3, then the character in OMB 1 will drive forward. If you tab over to OMB 2 and press F3, the the character in OMB 2 will drive forward.

This is the easiest and often most powerful setup. If you want to get more advanced and make hotkeys that target a certain account no matter what, remove the `#IfWinActive, OMB 1` line from the AHK file, then edit it as you like.

The default hotkeys are:
- F2 - Spam left click at location
- F3 - Hold W
- F4 - Hold S
- F5 - Left Click Building
- F6 - Hold Right Click
- F7 - Hold Left Click

To change the keybindings and make your own keys, navigate to `"C:\Foxhole Multiboxing\AutoClickers"`, Find the file `Foxhole - OMB 1` and `Right Click > Edit in Notepad`. Follow the steps in the file.

Let's quickly setup the batch file to launch all the autoclickers at once.

1. In `C:\Foxhole Multiboxing\Sandboxie`, find `_Launch All Autoclickers` and `Right Click > Edit in Notepad`.
    - You will see
     ```
     @echo off
    START "" "C:\Foxhole Multiboxing\AutoClickers\Foxhole - OMB 1.ahk"
    START "" "C:\Foxhole Multiboxing\AutoClickers\Foxhole - OMB 2.ahk"
    echo AutoHotkey script started.
    timeout /t 0 /nobreak >nul
    exit
     ```
    - To add more autoclicker files to be launched, just copy the second line and paste it below, then edit the `OMB 1` to say `OMB 2`, etc.


2. The file `_Close All Autoclickers` should be setup correctly already. It targets the `"autohotkeyu64.exe"` task to end all autoclickers at once. If it doesn't work, find the correct task in Task Manager (or DM me). 


# OpenMultiBoxing
Install and launch [OpenMultiBoxing](https://openmultiboxing.org/). This is the program that will allow you to resize, switch between and rename your Foxhole windows. You will get familiar with it as you use it, so let's get a simple setup going.

1. Click the `Window Layout` button.
    <details>
    <summary>Image</summary>
    <img src="https://github.com/user-attachments/assets/95826a81-6833-4e07-adf2-0b59395127a7" width="500">
    </details>
    
    - In the window that opens, you can just drag the OMB 1 window to fill your entire screen, or whatever else you'd like.
    
    - You can drag the `Layout for x windows` slider at the top for however many accounts you will be playing with at once. You can also select `Same size for all` right next to the slider.
    
    - You can choose what monitors you use on the bottom left.
    
    - Play around with this tool. You will be able to modify your setups while your game is running, so let's move on.
    
2. Launch Foxhole on your main account if it isn't already open. When your are tabbed into Foxhole, press `Ctrl+Alt+Shift+C`, or whatever the keybind is on the `hk,capture` line under the edit settings button. This will capture the window, and save is as a Game on the top row of menus in OMB. You should see `OMB 1` in the large window below the `Capture` button, and the window will resize to your window layout you made.
    
    - Now let's launch your first alt account. Navigate to `C:\Foxhole Multiboxing\Sandboxie`, and run the `S1 - Launch Steam` file. If your steam and Foxhole are up to date on your main account, and you followed the steps above, it should launch steam in minimized mode - you can check if it launched by clicking the `Show hidden icons` button in the bottom right of your Windows taskbar. It should look like the Steam icon with a rectangle around it.
    - You can right click this icon and click Library if you need to see this accounts steam for some reason.
    - Now you can click the `F1 - Launch Foxhole` file. If it asks you to confirm the TOS/EULA, you didn't log into the accounts outside of Sandboxie as mentioned above. It will still work however.
    - Once Foxhole has launched on your alt account, tab into it and again press `Ctrl+Alt+Shift+C` to capture the window. OMB will now recognize the Sandboxed version of Foxhole from now on, and you should see `OMB 2` in the list of windows in OMB.
    - If you launch more accounts, make sure on OMB under the Game tab on the top row, that `[#] War [#]` is selected. This is the Sandboxed version of Foxhole, while `War` is your main accounts Foxhole (not Sandboxed).
3. Once you've launched your Foxhole games, play around with Window layout in OMB to get a layout you like. I myself initially used a 'Stack-All' layout, and used a keybind to switch between windows. However, I've found being able to see every window at once to be much easier in general. You can have one larger window and many smaller ones, and use hotkeys to switch them around. Try using the `Auto` button in the Window layout.
    - You should glance through the `Edit Settings` file. See what the keybinds are, in particular the `hk,swapNextWindow` hotkey. You can also set hotkeys to switch to specific windows below that. Be sure to click `Reload Settings` when you are done editing.
    - When you have settings you like, you should click `File > New Profile` to save your current settings to a profile. You can easily switch between profiles under the `Profile` tab to try out different layouts.


# Troubleshooting
> [!TIP]
> Something missing from the guide? Did you follow the steps but something doesn't work? Have questions about it in general?
> You can DM me on Discord (Tommythebold#0001) for help. Just be aware - I can't walk you through this guide anymore than I already have!


**- Steam gets stuck trying to install an update!**

This is the most common issue people have with alt accounts by far.
Possible solutions:
* 1. Update steam on your main account.
* 2. Open Sandboxie, right click on the Sandbox, and choose "Delete Content". Try relaunching the Sandbox, and it will copy from your updated steam files. Whenever steam updates, you will need to do this.
 
You can try restarting your main steam account to check for updates, or even try restarting your computer. To be honest, the above option is the only thing that really worked for me. It is also worth mentioning that sometimes, if you allow the sandbox to write to folders or whatever when its stuck on when installing, it actually works. 



