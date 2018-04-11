# INSTALL FIRST these Python extensions before using this script !

# pip3.5 install --upgrade beautifulsoup4
# pip3.5 install requests
# pip3.5 install wget

import sys;

#=============================#
# INSERT YOUR PARAMETERS HERE V
#==============================
platform = "linux"
default_owner = "your_username"
default_group = "your_group"
default_chmod = 0o770
folder_extraction = "/path/to/zdaemon"
#=============================#

# Import libraries
import requests
from bs4 import BeautifulSoup
import wget
import os.path
import tarfile
import glob, shutil

# ToDo : Check if any instance of ZServ is already running
#==========================================================

print("Searching the latest version of Zdaemon for {0}".format(platform));

# Init the link of ZDaemon
url_dl_zdaemon = "http://downloads.zdaemon.org/";
html_zdaemon = requests.get(url_dl_zdaemon);

# List all <a> brackets
page = BeautifulSoup(html_zdaemon.text, 'html.parser')
dl_list = page.find_all('a')

bFound=False

# Find our file according to its platform
for download in dl_list:
    if (platform.lower() in download.get('href')):
        # We found it !
        bFound=True
        filename=download.get('href')[2:]
        print ("Found {0} for your platform {1} !".format(filename, platform));
        dl = "{0}{1}".format(url_dl_zdaemon, filename)
       
        # Check if filename exists, so that it won't download it again for no reason
        if (os.path.isfile(filename)):
            print ("The file you want to download already exists. Skipping...");
        else:
            print ("Downloading file {0} from Zdaemon Website : ".format(filename));
            wget.download(dl)
            
        break;
    
# Set an error since we found no platform for our system.
if (not bFound):
    sys.exit('There is no download for the platform "{0}". \nUse "win32", "linux", "freebsd" instead, depending on your OS.'.format(platform));
    
# Extract to the folder.
print ("\nExtracting {0}...".format(filename)); # the \n is made on purpose, so that it doesn't overlap.
if (filename.endswith("tgz")):
    tar = tarfile.open(filename, "r:gz")
    tar_folder = tar.getnames()[0];
    tar.extractall()
    tar.close()
    
# Apply CHMOD to desired
for file in glob.glob("{0}/*".format(tar_folder)):
    print ("Processing file {0}".format(file));
    
    # Attribute correct default rights
    os.chmod(file, default_chmod);
    shutil.chown(file, user=default_owner, group=default_group)
    
    # Move files 
    shutil.copy(file, folder_extraction)

print ("Installation complete in {0}!".format(folder_extraction))