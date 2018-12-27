Install a React Native Test Environment with One Command on Ubuntu

I made this to automate the process. I've only used on Ubuntu 18.04. 

What this does:

 Takes the downloaded archive and uses the unzip util to unpack it, and install it per Google's directions.
 This will also install qemu-kvm which is needed to run the avd android virtual machine to test react native apps.
 This will also edit permissions to allow you access to kvm without running studio as root.
 This also installs expo which you can bootstrap a React Native app with.

What this does not do:
 
 This will not install unzip as it is native to Ubuntu distros (from what I know) as soon as someone asks I'll add it.
 This will not go into tools>create desktop entry or tools>create command-line launcher in the /usr/local/android-studio/bin/studio.sh program that was launched for you. I can add this if requested.
 This will not select the correct settings to install abd for you. You will need to do a custom setup when android-studio is launched and select the correct settings.
 This will not prompt you to restart. You shouldn't have to restart for this, but I had to both times, so if you can't launch the VM and you get a kvm error, restart and it will likely work.
 This will definitely not install npm or node or any other package manager that you should already have.
 This will not start a project for you.

Steps to use:

 1) Download the android studio zip file. It should go into ~/Downloads for this to work correctly.
 2) Pull this repo, CD into, and run ./install.sh
 3) You will be prompted for sudo as 90% of this is installing stuff and moving stuff
 4) After everything is done, Android Studio should launch. Review everything carefully to make sure you install the VM tools.
 5) Select settings to make android-studio easier to launch (discussed under "what this does not do")
 6) run expo init to make your React Native project (note that expo is intalled by this installer)
 7) cd into that directory and run npm start
 8) Open android-studio, run a virtual machine and use the UI for expo to push the app to your virtual machine.
 9) Happy coding! Let me know if there is a better way to do this that doesn't involve android studio.



