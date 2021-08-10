[app/sources/244579256.Dockerfile]
digraph {
  "sha256:6c1afeacc01409a5489e29b9981b8a21392fd7a4e6d06c0dad409920e9ff4f7d" [label="docker-image://docker.io/library/debian:jessie-backports" shape="ellipse"];
  "sha256:2d3fc515b8ba49b646f67dad55d8cbee826028c5c4fb680a279b8ac8931ad641" [label="/bin/sh -c apt-get update     && apt-get install -y systemd     && apt-get clean     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:da466698831b105bbd7171b9cac73b2a3dae85d1db258046fcd38ec4143380df" [label="/bin/sh -c rm -f /lib/systemd/system/multi-user.target.wants/*     /etc/systemd/system/*.wants/*     /lib/systemd/system/local-fs.target.wants/*     /lib/systemd/system/sockets.target.wants/*udev*     /lib/systemd/system/sockets.target.wants/*initctl*     /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup*     /lib/systemd/system/systemd-update-utmp*" shape="box"];
  "sha256:a5f653dabd1db2dcc85d1b8d7b10058d8ec8dfa87641e35fd7b4f0e4f2c42b7a" [label="sha256:a5f653dabd1db2dcc85d1b8d7b10058d8ec8dfa87641e35fd7b4f0e4f2c42b7a" shape="plaintext"];
  "sha256:6c1afeacc01409a5489e29b9981b8a21392fd7a4e6d06c0dad409920e9ff4f7d" -> "sha256:2d3fc515b8ba49b646f67dad55d8cbee826028c5c4fb680a279b8ac8931ad641" [label=""];
  "sha256:2d3fc515b8ba49b646f67dad55d8cbee826028c5c4fb680a279b8ac8931ad641" -> "sha256:da466698831b105bbd7171b9cac73b2a3dae85d1db258046fcd38ec4143380df" [label=""];
  "sha256:da466698831b105bbd7171b9cac73b2a3dae85d1db258046fcd38ec4143380df" -> "sha256:a5f653dabd1db2dcc85d1b8d7b10058d8ec8dfa87641e35fd7b4f0e4f2c42b7a" [label=""];
}

