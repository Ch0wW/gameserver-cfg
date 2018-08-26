# How to create a Quake 2 server on Linux

This readme contains a tutorial, in order to create a remote Quake 2 server, the simpliest as possible.
We will use Debian Jessie (Linux) as our distribution. You can use Ubuntu, or Linux Mint with no problem.

Here are the steps that we will do:
- Make sure we have our prerequisites.
- Create an user specifically for Quake 2
- Make the architecture for Quake 2
- Compiling Quake 2 Pro
- Compiling the game.dll with YamagiQ2's binaries
- (Optional) doing the same with the expansion packs
- (Optional) Compiling OpenTDM
- (Optional) Compiling OpenFFA
- Run it!

## Pre-Requisites

> You currently are logged in as "root" or as an user having sudo abilities.

First of all, we will install our required dependencies in order to compile our Quake 2 executables.

> sudo apt-get install git build-essential zlib1g-dev

We will now create an user called q2user. Type this command:

> adduser --force-badname q2user

It will ask for a password. Put one (you won't see any characters). We are doing this to prevent any possible Quake2 exploit to damage your machine. Now, let's log in with our fresh user.

> su q2user	

## Preparing our folder architecture
> cd $HOME <br />
mkdir q2 && cd q2		# Making our Q2 folder <br />
mkdir baseq2 && mkdir src && cd src		# Making our Source folder

## Making our Quake2Pro binaries
> git clone https://github.com/skullernet/q2pro.git <br />
cd q2pro && make q2proded <br />
mv q2proded $HOME/q2

## (OPTIONAL) Creating our original Quake 2 binaries 
> cd ../ && git clone https://github.com/yquake2/yquake2.git && cd yquake2 <br />
make game <br />
mv release/baseq2/game.so $HOME/q2/baseq2/game$(uname -m | sed -e s/i.86/i386/ -e s/amd64/x86_64/ -e s/sun4u/sparc64/ -e s/arm.*/arm/ -e s/sa110/arm/ -e s/alpha/axp/).so

## (Optional) Compiling The expansion packs
mkdir $HOME/q2/rogue
> cd ../ && git clone https://github.com/yquake2/rogue.git && cd rogue <br />
make <br />
mv release/game.so $HOME/q2/rogue/game$(uname -m | sed -e s/i.86/i386/ -e s/amd64/x86_64/ -e s/sun4u/sparc64/ -e s/arm.*/arm/ -e s/sa110/arm/ -e s/alpha/axp/).so

mkdir $HOME/q2/xatrix
> cd ../ && git clone https://github.com/yquake2/xatrix.git && cd xatrix <br />
make <br />
mv release/game.so $HOME/q2/xatrix/game$(uname -m | sed -e s/i.86/i386/ -e s/amd64/x86_64/ -e s/sun4u/sparc64/ -e s/arm.*/arm/ -e s/sa110/arm/ -e s/alpha/axp/).so

## (OPTIONAL) Creating OpenTDM binaries 
mkdir $HOME/q2/opentdm
> cd ../ && git clone https://github.com/skullernet/opentdm.git && cd opentdm <br />
make
mv gamex86_64.so $HOME/q2/opentdm

