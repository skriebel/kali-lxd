# kali-lxd
Kali Linux on a LXD container

NOTE:  This is a work in progress!

A lot of this is based on: https://blog.simos.info/how-to-easily-run-graphics-accelerated-gui-apps-in-lxd-containers-on-your-ubuntu-desktop/

 # Host Prep.

- If lxd was installed with `apt` follow "Step 1" instructions here: https://blog.simos.info/how-to-easily-run-graphics-accelerated-gui-apps-in-lxd-containers-on-your-ubuntu-desktop/

- Create the GUI profiles:
  - Download `lxd-gui.profile` found in this repo.
  - Run: `$ cat lxd-gui.profile | lxc profile edit gui`  

- Create the container:
  - `$ lxc launch -p default -p gui images:debian/stretch kali`
  
 - Remove the ACL on the X11 server.
   - `$ xhost+`
   - TODO: Do better.
  
 - Switch into the container:
   - `$ lxc exec kali -- /bin/bash`
  
  - Inside the container:
    - add `deb http://http.kali.org/kali kali-rolling main non-free contrib` and comment everything else out in `/etc/apt/sources.list`
    - add the Kali developement key: `apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 7D8D0BF6`
    - run: `# apt update; apt upgrade`
 
 - Go here for the packages:
   - https://tools.kali.org/kali-metapackages
