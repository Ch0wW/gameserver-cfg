# How to create a Zandronum server on Windows

This readme contains a tutorial, in order to create a Zandronum server, using a Windows distribution.

Unlike the Linux distribution taking more steps (for security purposes), this one will be both short and extremely easy.

## Downloading Zandronum

If you have already Zandronum installed on your system, you can skip this step.

Otherwise, you can download the file at this address:

http://zandronum.com/download

Select the Core archive (http://zandronum.com/downloads/zandronum2.1.2-win32-base.zip for the current latest stable version), and extract it on a folder of your choice.

## Setting everything up

Within your Zandronum folder, put your IWADs (DOOM2.WAD, DOOM.WAD, PLUTONIA.WAD, TNT.WAD, ...), and if having some, your PWADs.

Create then a shortcut of zandronum (Right Click -> Create a shortcut). Go to properties, and then on target, add this (the shortcut below can help):

> -host

![win_properties](https://raw.githubusercontent.com/Ch0wW/ch0wwlicious-tutorials/master/zandronum/images/win_properties.PNG)

Now, run it. Does a window similar to this screenshot appears? Congratulations, you can run a dedicated server!

![win_success](https://raw.githubusercontent.com/Ch0wW/ch0wwlicious-tutorials/master/zandronum/images/win_success.PNG)

## Going further

Now that we know our server works, we are going to download templates that you will adapt to your suits.

Download these files (Right click on the link -> Save as), and put them on your Zandronum folder:

https://raw.githubusercontent.com/Ch0wW/ch0wwlicious-tutorials/master/zandronum/templates/zandroserver.bat
https://raw.githubusercontent.com/Ch0wW/ch0wwlicious-tutorials/master/zandronum/templates/server.cfg

Now, modify them to your suits!

Once done, double click on the .bat file, and you're ready to go.

## Additionnal ressources

Here are some useful links if you need to configure your Zandronum server:
- http://wiki.zandronum.com/DMFlags : A list of all the DMFlags the server will use.
- http://wiki.zandronum.com/Server_Variables : A list of all the server's CVARs that are usable.
- http://wiki.zandronum.com/Console_Commands : A list of all the console commands available, both clientside & serverside.
