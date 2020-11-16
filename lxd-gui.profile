config:
  #raw.lxc: lxc.apparmor.profile = unconfined
  environment.DISPLAY: :0
  user.user-data: |
    #cloud-config
    packages:
      - x11-apps
description: GUI LXD profile
devices:
  X0:
    bind: container
    connect: unix:@/tmp/.X11-unix/X0
    listen: unix:@/tmp/.X11-unix/X0
    security.gid: "1000"
    security.uid: "1000"
    type: proxy
name: x11
used_by: []
