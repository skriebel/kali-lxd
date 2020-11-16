# kali-lxd
Kali Linux on a LXD container

These instructions were tested with LXD version 4.7.

 # Host Prep.

- Create the GUI profile:
  - Download `lxd-gui.profile` found in this repo.
  - Run: 
    - `$ lxc profile create x11`
    - `$ cat lxd-gui.profile | lxc profile edit x11`  
  - Note:  This profile is based on information published on [Simos's Blog](https://blog.simos.info/).

- Create the container:
  - `$ lxc launch -p default -p x11 images:kali/current/amd64 kali`
  
 - Switch into the container:
   - `$ lxc exec kali -- /bin/bash`
  
 - Inside the container:
   - Update the system 
     - `# apt update; apt upgrade`
   - Install basic system 
     - `# apt install kali-linux-core apt-utils`
   - Create user and configure.
     - `# adduser kali`
     - `# usermod -aG sudo kali`
     - `# sed -i '1 i\TERM=xterm-256color' /home/kali/.bashrc`
     - `# echo "export DISPLAY=:0" >> /home/kali/.bashrc`
     - `# sh -c "echo 'Set disable_coredump false' > /etc/sudo.conf"`
