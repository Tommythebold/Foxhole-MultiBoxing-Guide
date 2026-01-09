# Preamble
This guide will help you setup a very powerful and easy to use multiboxing setup for Foxhole logistics, including managing many accounts with Sandboxie using batch files, controlling and moving your game windows using OpenMultiBoxer, and give you a set of AutoHotKey hotkeys that target each game account specifically and work while tabbed out. Never deal with sandboxes breaking, logging in to alts all the time, steam endlessly updating, autoclickers not working on alts, and more ever again.

### Is this allowed?
Multiboxing is allowed in Foxhole, so long as your alts are on the same team. Single action autoclickers are also allowed. Most logi vets use multiple accounts.

### What you can do with this guide.
If you follow this guide, you will be able to:
* Run as many steam accounts/Foxhole games on the same PC at once as you like.
* Easily switch between windows and organize them anyway youd like.
* See your other Foxhole windows, even on the same monitor. Focus on small regions of other Foxhole windows, for example to track a harvesters inventory, or see just a minimap on an alt.
* Use an autoclicker that allows you to tab out for all accounts - inluding spam click at the chosen location. Includes moving, clicking, etc.

## Requirements
* [OpenMultiBoxing](https://openmultiboxing.org/) - for organizing the game windows and switching between them. Also renames the windows, required for the autoclickers to work.
* [SandBoxie-Plus](https://sandboxie-plus.com/) - for running multiple steam accounts/Foxhole games on the same PC.
* [AutoHotKey](https://www.autohotkey.com/) - for the autoclickers to work. Either version should work.
* Multiple [steam accounts](https://store.steampowered.com/join) - each with a copy of Foxhole. You can get it on sale for $20, or less in certain countries.
* OPTIONAL - [OnTopReplica](https://github.com/LorenzCK/OnTopReplica) - for viewing the other Foxhole windows. This way, all windows can just be stacked on your main monitor at full size.
* Free keyboard/mouse keys - at least 3-5 per account. An [MMO mouse](https://www.amazon.com/Logitech-Gaming-Backlit-Programmable-Buttons/dp/B0086UK7IQ) or [Elgato Streamdeck](https://www.elgato.com/us/en/p/stream-deck-xl) are great options. Every action will require its own dedicated key for each account - for example, holding W on account 3 will need a key. While you can use key combinations for this, it can get pretty cumbersome. The stream deck is what I use now, and has near infinite hotkeys. It is by far the best option.
* Minimal PC skills. This guide will help you, but you need to know your way around a computer, and be able to edit some files. 

> [!WARNING]
> Use a seperate password for your steam alt accounts! This guide requires you to disable steam guard and type your steam password into the properties part of a shortcut file, to allow for instant login from a batch file for your alts.

# Contents

# Guide
> [!IMPORTANT]
> Read everything in this guide! There are many important tips that will ensure your setup works perfectly!
> 
## Steam Setup
On your main steam account, <ins>disable steam beta</ins>, so you don't have to update your sandboxes every day. Always make sure both Foxhole and steam are up to date. Any time Foxhole or Steam updates, you will have to reset your sandboxes - this is easy and will be explained later.

<ins>Switch accounts</ins> and login to your alt account on steam outside of Sandboxie. Your PC will remember certain steam and Foxhole settings per account, so they will always be correct, even when you delete your sandbox contents for updates.

Once you are logged into your **_alt account_** on steam, 
1. Disable steam Beta.
- `Steam > Settings > Interface > Client Beta Participation > No Beta Chosen`
<img width="241" height="261" alt="image" src="https://github.com/user-attachments/assets/8fcb0164-4bdd-4d27-a972-bb751b6fe7ba" />
<img width="850" height="722" alt="image" src="https://github.com/user-attachments/assets/98a8caf4-97e6-4250-8b68-28abe92e96a0" />


2. Disable steam guard. This will allow for instant login from the batch files, bypassing email-codes and even 2FA for logins. 
- `Steam > Settings > Security > Manage Steam Guard > Turn Steam Guard off`
<img width="840" height="702" alt="image" src="https://github.com/user-attachments/assets/4ff4dbb6-e7eb-4488-b4d3-d28e24a27a10" />
<img width="739" height="493" alt="image" src="https://github.com/user-attachments/assets/5ab0db66-2ca5-48aa-9d81-de72ae29b952" />


3. Launch Foxhole. You must do this on every alt outside of a Sandbox so your PC remembers these settings. Accept the EULA that pops up, choose the Able server (it defaults to Charlie), login. Click through the tutorials (it resets this), deploy somewhere and click through the tutorials again. Go to your settings, turn on sprint toggle and whatever other settings you want it to remember. When you are done, close the game.
4. Repeat the steps above for every alt account!
> [!TIP]
> If you notice settings being wrong when you reset sandboxes for an update, follow step 3 again! 

## Sandboxie Setup
Install [SandBoxie-Plus](https://sandboxie-plus.com/) and open it. 

1. Create a Sandbox `Right Click > Create New Box` or `Sandbox > Create New Box`. 
<img width="200" height="320" alt="image" src="https://github.com/user-attachments/assets/963c2a4e-e87c-44bc-925b-ca6799b5d613" />

- Name it Account1 (or you will have to change it in the batch files), and choose Standard Sandbox. You can skip the next page and finish.

<img width="598" height="415" alt="image" src="https://github.com/user-attachments/assets/b24dbd11-fe69-46b3-9cc8-86ea0486fdb9" />
<img width="595" height="430" alt="image" src="https://github.com/user-attachments/assets/1baab49e-4dab-4d40-926e-e05226d42647" />

- Important step! `Right click Account1 > Sandbox Preset > Emulate Admin Rights`. By setting this option, it will not ask for admin permission every time it launches!

<img width="479" height="260" alt="image" src="https://github.com/user-attachments/assets/dffd294d-a8f4-4cee-bcef-bc6d1d3c514c" />

- Repeat the following step for however many accounts you have. `Right click Account1 > Sandbox Tools > Duplicate Box Config`. Name it Account2, Account3, etc... (or whatever you want).

<img width="500" height="236" alt="image" src="https://github.com/user-attachments/assets/49090364-230b-4ec2-9ba7-d8be2ff9b6c3" />

## Batch Files
1. Download the repository by clicking here. Click on the file you downloaded. You will see a folder named Foxhole Multiboxing - drag this folder onto the top level of your C: Drive. The batch files paths are setup assuming you put the folder here!

2. Open the Foxhole Multiboxing folder. The path should be `C:\Foxhole Multiboxing`. Then open the Sandboxie folder. `C:\Foxhole Multiboxing\Sandboxie`. You will see all the batch files here.

3. Open the Login Info folder. `C:\Foxhole Multiboxing\Sandboxie\Login Info`. `Right Click > Properties` on the 1 - Login Info shortcut file. This should be a shortcut to your steam.exe file. 
    - The 'Target' field should have `"C:\Program Files (x86)\Steam\steam.exe" -silent -login USERNAME PASSWORD` as its contents. The first part should point to your steam.exe file - if it's wrong, find your steam.exe, and `Shift + Right Click > Save as path` it. Then replace the existing steam path with the correct one.
    - Enter your ALT ACCOUNTS username and password where it says USERNAME and PASSWORD. This will allow for auto login, since you disabled Steam Guard earlier.
4. Go back to the Sandboxie folder `C:\Foxhole Multiboxing\Sandboxie`. Find the file named `S1 - Launch Steam`. The 1 refers to which account it will launch. `Right Click > Edit in Notepad` this file.
   - You will see the following text `"C:\Program Files\Sandboxie-Plus\start.exe" /box:Account1 "C:\Foxhole Multiboxing\Sandboxie\Login Info\1 - Login Info.lnk"`.
   - The first field is the path to your sandboxie exe file. It might be correct by default - if not, find it in your program files folder, and again `Shift + Right Click > Save as path` the file, and replace the path in the batch file.
   - The second field is your sandbox name.
   - The third field is the path to your steam shortcut you just setup. If the path is wrong, go back into the Login Info folder, and once again, `Shift + Right Click > Save as path` the login info file with the same number, and paste it into the third field of the batch file, replacing the old path. 
5. Go back to the Sandboxie folder `C:\Foxhole Multiboxing\Sandboxie`. Find the file named `F1 - Launch Foxhole`. The 1 refers to which account it will launch. `Right Click > Edit in Notepad` this file.
   - You will see the following text `"C:\Program Files\Sandboxie-Plus\start.exe" /box:Account1 "C:\Steam\steamapps\common\Foxhole\War\Binaries\Win64\War-Win64-Shipping.exe"`.
   - The first field is the path to your sandboxie exe file. It might be correct by default - if not, find it in your program files folder, and again `Shift + Right Click > Save as path` the file, and replace the path in the batch file.
   - The second field is your sandbox name.
   - The third field is the path to your Foxhole game exe. If it's wrong, go to steam and find your Foxhole game on the left, then `Right Click > Manage > Browse Local Files`. In the folder that opens, go to `War > Binaries > Win64 > War-Win64-Shipping.exe`. Once again, `Shift + Right Click > Save as path` this file, and paste it into the third field of the batch file, replacing the old path. 

You have completed the most difficult part of the setup! Copy and paste the files above and edit the numbers to corrospond to each of your alt accounts as needed. For example, if you have 2 accounts, then copy all 3 files mentioned above, and rename to F2, etc, and edit the `Account1` inside the two batch files to say `Account2`. 




# Quick Setup
1. Launch Sandboxie, and make a new box named Account1.
2. Download the 3 files linked in this GitHub from the releases page - or just click here.
3. Create a new folder anywhere on your pc, and drag the files you downloaded into the folder.
4. Right click > Properties on the 'Account 1 - Login Info' file. It should be a shortcut to steam.
   - Make sure the filepath in the target field points to your steam.exe. If it isn't, find steam.exe, then Shift+Right click > Copy as path, and paste it at the start.
   - Edit the USERNAME and PASSWORD to your alt accounts steam username and password.
   - For the login above to work, you must disable Steam Guard on your alt account! Steam > Settings > Security > Manage Steam Guard. Disable it entirely.
5. Right click > Edit the 'Account 1 - Launch Steam' file.
   - Make sure the filepath in the first field is correct. You need to link your sandboxie start.exe file.
   - The second field is the name of the Sandbox you made earlier - Account1. Change it if needed.
   - For the third field, Shift+Right click your Login Info file you just setup, and Copy as path. Replace the existing filepath in the third field with this.
6. Now Right Click > Edit the 'Account 1 - Launch Foxhole' file.
   - The first field should be a filepath to your sandboxie start.exe, just like before. Change if it's wrong.
   - The second field is again your sandboxie box name. Change if needed.
   - The third field needs to link to the War-Win64-Shipping.exe file. Right click Foxhole on steam > Browse local files. Go into War > Binaries > Win64. Then Shift+Right click > Copy as path the exe file. Paste this into the third field of the file. 
7. Make sure your Foxhole AND steam client are up to date! Click Steam (top left) > Check for Steam Client Updates and install them. If sandboxie ever fails to open steam, this is almost certainly why! You will need to delete the contents of your sandbox (Right click box > delete contents) every time there is an update.
8. You can now try launching steam using the Launch Steam file. It should open in silent mode - so check your system tray to see if it launched. Or, just click the Launch Foxhole file after a bit.
9. Not working? Check the troubleshooting below, and be sure you followed every step here. 

# Autoclickers
Now that you can launch Foxhole on your alts, it's time to launch OpenMultiBoxer. You will need to configure this program to look for your Foxhole game windows. When it is setup, it will rename the windows to OMB1, OMB2, etc. The autoclickers target these windows by their name.  


# Troubleshooting

# Troubleshooting - Sandboxie

**- Steam gets stuck trying to install an update!**

This is the most common issue people have with alt accounts by far.
Possible solutions:
* 1. Update steam on your main account.
* 2. Open Sandboxie, right click on the Sandbox, and choose "Delete Content". Try relaunching the Sandbox, and it will copy from your updated steam files. Whenever steam updates, you will need to do this.
 
You can try restarting your main steam account to check for updates, or even try restarting your computer. To be honest, the above option is the only thing that really worked for me. It is also worth mentioning that sometimes, if you allow the sandbox to write to folders or whatever when its stuck on when installing, it actually works. 



