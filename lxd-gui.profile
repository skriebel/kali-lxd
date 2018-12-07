config:
  environment.DISPLAY: :0
  raw.idmap: both 1000 0
  user.user-data: |
    #cloud-config
    packages:
      - x11-apps
description: GUI LXD profile
devices:
  X0:
    path: /tmp/.X11-unix/X0
    source: /tmp/.X11-unix/X0
    type: disk
  mygpu:
    type: gpu
name: gui
used_by:
