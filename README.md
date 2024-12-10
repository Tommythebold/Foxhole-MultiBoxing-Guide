# Why Multibox?
Having multiple accounts in Foxhole can enable you to far more efficiently carry out certain tasks, and simply make life easier. Some examples are below.
* Using alts to drive a train, while you hit switches ahead of it. This makes trains far more enjoyable and safer to drive.
* Setting multiple MPF queues. During low pop hours the MPF can get pretty empty.
* Building. Since building is mostly just endless clicking, set your alts on the job. 
* Emptying autoharvesters. Have an alt sit at the harvester and empty every once in a while, while your main does other stuff.
* Drive multiple vehicles at once - flatbeds in particular.
* You could probably drive a large ship solo as well, but this isn't very common unless the Bowhead becomes useful. 
* Solo driving tanks. While a bit more contentous than using alts for logi, many people do this, and devs have explicitaly stated it's allowed. No more wrangling a team to tank.

# Is it allowed?
Multiboxing is allowed in Foxhole, so long as your alts are on the same team. Many logi vets have at least one alt, and some have multiple online at the same time. Some have 10+ for MPF queues.

# What you can do with this guide.
If you follow this guide, you will be able to:
* Run as many steam accounts/Foxhole games on the same PC at once as you like.
* Easily switch between windows and organize them anyway youd like.
* See your other Foxhole windows, even on the same monitor. Focus on small regions of other Foxhole windows, for example to track a harvesters inventory, or see just a minimap on an alt.
* Use an autoclicker that allows you to tab out for all accounts - inluding spam click at the chosen location. Includes moving, clicking, etc.
  
# Requirements
* [OpenMultiBoxing](https://openmultiboxing.org/) - for organizing the game windows and switching between them. Also renames the windows, required for the autoclickers to work.
* [SandBoxie-Plus](https://sandboxie-plus.com/) - for running multiple steam accounts/Foxhole games on the same PC.
* [OnTopReplica](https://github.com/LorenzCK/OnTopReplica) - for viewing the other Foxhole windows. This way, all windows can just be stacked on your main monitor.
* [AutoHotKey](https://www.autohotkey.com/) - for the autoclickers to work. Either version should work.
* Multiple [steam accounts](https://store.steampowered.com/join) - each with a copy of Foxhole. You can get it on sale for $20.
* OPTIONAL - If you have a second PC, and/or want to quickly swap between accounts, download [TcNo Account Switcher](https://github.com/TCNOco/TcNo-Acc-Switcher). This program can close steam, launch a new account on steam, and luanch Foxhole with 3 clicks. It is also extremely fast at doing so. 
* Free keys - at least 3-5 per account. An [MMO mouse](https://www.amazon.com/Logitech-Gaming-Backlit-Programmable-Buttons/dp/B0086UK7IQ) or [Elgato Streamdeck](https://www.elgato.com/us/en/p/stream-deck-xl) are great options. Every action will require its own dedicated key for each account - for example, holding W on account 3 will need a key. While you can use key combinations for this, it can get pretty cumbersome.
* A decent PC and internet connection. You will be able to limit background FPS and lower settings, but there is still a limit. On my 3090 and 5900x, its about 5 accounts.
* Minimal PC skills. This guide will help you, but you need to know your way around a computer, and be able to edit some files. 

# Setup
This section will walk you through the basic setup steps. However, as mentioned above, you will probably have to do some troubleshooting/googling yourself. Sandboxie in particular can be janky when launching steam.

# Sandboxie - Option 1
This option is acceptable if you have less than 5 accounts, and want to get going quickly. 
* On your main steam account, head to Settings > Interface > "ask which account to use each time Steam starts". This means that every time you launch a steam sandbox, you can choose which account is launching. This can be annoying, however, and Option 2 has a better way of doing this. 
* Check if your steam is up to date by clicking Steam on the top left of your main steam account window, and choosing "Check for Steam Client Updates". 

Now we can try launching a second instance of steam.
* Launch the Sandboxie program.
* Right click on the main window and choose "Create New Box".
* Choose "Standard Sandbox" and name it whatever you like.
* Right click on the sandbox you made, select "Run", then "Run Program".
* In the window that opens, click "Browse" and navigate to your steam.exe file. For me, the path is "C:\Program Files (x86)\Steam\steam.exe".
* Select "Run as UAC Administrator" in the window. If you do not run the sandbox as admin, you will get a VAC error when logging into Foxhole.

When you click "OK", steam should launch, and you should be able to choose from your list of accounts. In reality, it will probably get stuck trying to install an update. 

# Sandboxie - Option 2
This is the setup that I personally use, after being frustrated with the limitations of option 1. This setup will allow you to create shortcuts that will launch the chosen sandbox and automatically enter your login information, meaning you can launch a new steam window with 1 click. It entirely bypasses the issues of choosing accounts, logging in, and having to re-select the steam.exe whenever you reset the sandbox for an update. 

This setup will require you to disable Steam Guard on your alt accounts (to login) and also type your username and password as parameters in a shortcut file. If you don't think this is a good idea (Unsecure PC, shared password, etc), then refer back to Option 1.

This option is also quite a bit more complicated. 

Quick Setup:
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


# Troubleshooting

# Troubleshooting - Sandboxie

**- Steam gets stuck trying to install an update!**

This is the most common issue people have with alt accounts by far.
Possible solutions:
* 1. Update steam on your main account.
* 2. Open Sandboxie, right click on the Sandbox, and choose "Delete Content". Try relaunching the Sandbox, and it will copy from your updated steam files. Whenever steam updates, you will need to do this.
 
You can try restarting your main steam account to check for updates, or even try restarting your computer. To be honest, the above option is the only thing that really worked for me. It is also worth mentioning that sometimes, if you allow the sandbox to write to folders or whatever when its stuck on when installing, it actually works. 



