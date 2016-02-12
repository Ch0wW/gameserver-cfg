# How to create a Zdaemon server on Linux

This readme contains a tutorial, in order to create a remote Zdaemon server, the simpliest as possible.
We will use a Linux - Debian distribution. You can use Ubuntu, or Linux Mint with no problem.

Here are the steps that we will do:
- Create an user specifically for Zdaemon
- Configure the folders
- Install Zdaemon
- Run it!
- Get some templates


## Pre-Requisites

In order to make this tutorial painless, you will need the following:
- Your Doom IWAD in UPPERCASE (DOOM.WAD, DOOM2.WAD, TNT.WAD, PLUTONIA.WAD) -- That's my reference to find my IWADs.
- A FTP client to transfer files. FileZilla can be a nice choice.
- A SSH client to remotely control the server. Grab PuTTY!

## Starting up

>You currently are logged in as "root"

We will create an user called doomuser. Type this command:
> adduser --force-badname doomuser 

It will ask for a password. Put one. 
We are doing this to prevent any possible Zdaemon exploit to damage your machine. 

###### For x64 users only!
We will make sure that Zdaemon will be run with x64 systems (as it only has a x86 binary). Type these commands:
> dpkg --add-architecture i386<br />
apt-get update<br />
apt-get install libc6-i386 libstdc++6:i386

## Configuring the folders

Let's log in as doomuser first, so that we could manipulate easily the future installation:

> su doomuser

Put the password you used earlier. (you won't see characters as a safe measure)

Now, we will create a folder called "zdaemon" for our WADs and configuration files.

> mkdir $HOME/zdaemon <br />
mkdir $HOME/zdaemon/wads <br />
cd $HOME/zdaemon

With your FTP client, put your IWADs within that zdaemon/wads.

## Installing Zdaemon

In order to install Zdaemon, you will have to download its package, and extracting it.

Type these commands (taken from the official page):
> wget http://downloads.zdaemon.org/zserv110b07_linux26.20151014.tgz<br />
tar -xzvf zserv110b07_linux26.20151014.tgz <br />
mv zserv110_bin/* $HOME/zdaemon<br />
cd $HOME/zdaemon

## Testing our server

> We are still with doomuser, in $HOME/zdaemon

Since we have put everything important, let's make a check to see if Zandronum is actually working. Type in this command:
> ./zserv -waddir $HOME/zdaemon/wads -iwad DOOM2.WAD

It should load MAP01 (or E1M1 if you put DOOM.WAD), as seen in this picture:

![success1](https://raw.githubusercontent.com/Ch0wW/ch0wwlicious-tutorials/master/zdaemon/images/consolesuccess.PNG)
![success2](https://raw.githubusercontent.com/Ch0wW/ch0wwlicious-tutorials/master/zdaemon/images/mastersuccess.PNG)

If an error says it hasn't found any IWAD, or crashes, check if you put the wad in uppercase, as said above. Otherwise, good job! You have managed to do the hardest!

## Going further

Now that we know our server works, feel free to modify zserv.sh & zserv.cfg to make it customized as your suits.

I also added some configurations examples (taken from BaseQ.fr servers) for some of you who are interested.

## Additionnal ressources

Here are some useful links if you need to configure your Zandronum server:
- http://zdaemon.org/?CMD=info&NAME=server : A list of all the server's CVARs and CMDs.
- http://zdaemon.org/?CMD=info&NAME=tos : The terms of Service if you want to be seen in the masterserver.
