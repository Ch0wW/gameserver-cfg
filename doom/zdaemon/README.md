# How to create a Zdaemon server on Linux

This readme contains a tutorial, in order to create a remote Zdaemon server, the simpliest as possible.
We will use Debian Jessie (Linux) as our distribution. You can use Ubuntu, or Linux Mint with no problem.

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

First of all, we will install additionnal dependencies for auto-updating ZDaemon through a python3 script.
> apt-get update<br />
apt-get install python3 python3-pip <br />
pip3 install beautifulsoup4 requests wget

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

In order to install Zdaemon, and make sure you will always have the latest version, we will install a small python script.

Type these commands :
> wget https://raw.githubusercontent.com/Ch0wW/gameserver-cfg/master/doom/zdaemon/update_zdaemon.py<br />
chmod 770 update_zdaemon.py

Now, modify the script to that it points out to your username, group, permissions, and destination directory.
> nano update_zdaemon.py

>platform = "linux" <br />
default_owner = "doomuser"<br />
default_group = "doomuser"<br />
default_chmod = 0o770<br />
folder_extraction = "./"

Run the script, and your installation is complete.
> python3 update_zdaemon.py

## Testing our server

> We are still with doomuser, in $HOME/zdaemon !

Since it's done, let's make a check to see if zserv is working. Type this command in :
> ./zserv -waddir $HOME/zdaemon/wads -iwad DOOM2.WAD

It should load MAP01 (or E1M1 if you put DOOM.WAD), as seen in this picture:

![success1](https://raw.githubusercontent.com/Ch0wW/gameserver-cfg/master/doom/zdaemon/images/consolesuccess.PNG)
![success2](https://raw.githubusercontent.com/Ch0wW/gameserver-cfg/master/doom/zdaemon/images/mastersuccess.png)

If an error says it hasn't found any IWAD, or crashes, check if you put the wad in uppercase, as said above. Otherwise, good job! You have managed to do the hardest!

## Going further

Now that we know our server works, feel free to modify zserv.sh & zserv.cfg to make it customized as your suits.

I included a script (start_servers.sh) that will automatically start your servers, aswell as the contents of the service (you'll have to know how to install it by yourself).

I also added some configurations examples (taken from BaseQ.fr servers) for some of you who are interested. You can check them in the "templates" folder.

## Additionnal ressources

Here are some useful links if you need to configure your Zdaemon server:
- http://zdaemon.org/?CMD=info&NAME=server : A list of all the server's CVARs and CMDs.
- http://zdaemon.org/?CMD=info&NAME=tos : The terms of Service if you want to be seen in the masterserver.
- https://github.com/Ch0wW/doomsv-wizard : A python3 tool I made to ease making configs for servers.
