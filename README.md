# Tuto for automatic wallpaper updates __on Windows__
This tutorial explains how to configure automatic wallpaper updates according to your preferences (date, time, etc.).
## tools you will need
We will use the Windows Task Scheduler and an IDE to modify two files.

## installation tutorial
### Path editing
First, we will need to change the path in our files for the Task Scheduler. For this example, I am using images to show you what is possible, but you can use any images you like.

The first file to modify is “SetWallpaper.ps1.” You must modify the path on line 15.
The second file to modify is “wallpaper modifier.xml.” You must modify both paths on line 50.

### Task creation
You will then need to use the Task Scheduler. To open it, press “Windows + R,” then type “taskschd.msc.”

![Task Scheduler path][Task Scheduler path]

[Task Scheduler path]: https://github.com/EliottPaq/Wallpaper-auto-update-Tuto/blob/main/ressources/Task%20Scheduler.png

or simply search for the app in your menu

Next, you need to click on “Import task” in the menu at the top left.

![upper left menu][upper left menu]

[upper left menu]: https://github.com/EliottPaq/Wallpaper-auto-update-Tuto/blob/main/ressources/left%20side%20menu.png

then select the “wallpaper modifier.xml” file you just modified.

![xml file][xml file]

[xml file]: https://github.com/EliottPaq/Wallpaper-auto-update-Tuto/blob/main/ressources/file%20to%20select.png

After clicking “Open,” a new pop-up window will appear. You can check the various settings and click “OK.”
A new line will appear in your Task Scheduler. It will look like this:
![final line][final line]

[final line]: https://github.com/EliottPaq/Wallpaper-auto-update-Tuto/blob/main/ressources/exemple%20of%20the%20final%20task.png

You can test this by locking your window (Windows+L) and logging back in. It may take up to a second to see the new update.

## customization
You can customize the time and date of the image update in the “SetWallpaper.ps1” file. If you are not comfortable with shell language, feel free to consult the documentation or use any AI to customize the file as you wish.

By default, the time is checked every hour until the file stops working, which is after one full day (due to the Task Scheduler). You can change the refresh frequency in Task Scheduler by clicking on the task and checking the menu.

# How does it works ?
The Task Scheduler searches for an event (in our case, a connection), then executes a command (the paths in the xml file correspond to that command) without opening a terminal (which is impossible to do using a shell command, which is why we use a vbs file “ps-run.vbs”).

This vbs file will execute the shell file “SetWallpaper.ps1” which will update the wallpaper.

### credit for the Place holder images : 
[Matt Vince ](https://www.mattvince.com/)

If you see any issue, make sure to report it, I will try to answer as quick as possible !
