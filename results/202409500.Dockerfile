[app/sources/202409500.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:47e46275a86aa57ac748eb22aadcf84498f02470021c0f4b27a83cc2d20a34b1" [label="local://context" shape="ellipse"];
  "sha256:907a2a449993ccb57961c01d4d94b1549c4013266995d0a666a9ee28360f52c0" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:c1dd542f6e22a232845859dc0973054128cf8f203042936bd6e4f455805a5e7a" [label="/bin/sh -c echo \"@community http://dl-4.alpinelinux.org/alpine/edge/community\" >> /etc/apk/repositories &&     echo \"@testing http://dl-4.alpinelinux.org/alpine/edge/testing\" >> /etc/apk/repositories &&     echo \"@edge http://dl-4.alpinelinux.org/alpine/edge/main\" >> /etc/apk/repositories &&     apk update && apk upgrade &&     apk add --upgrade apk-tools@edge &&     apk add ca-certificates rsyslog logrotate runit@community &&     mkdir -p /etc/BUILDS/ &&     printf \"Build of nimmis/alpine-micro:3.4, date: %s\\n\"  `date -u +\"%Y-%m-%dT%H:%M:%SZ\"` > /etc/BUILDS/alpine-micro &&     apk add curl &&     cd /tmp &&     curl -Ls https://github.com/nimmis/docker-utils/archive/master.tar.gz | tar xfz - &&     ./docker-utils-master/install.sh &&     rm -Rf ./docker-utils-master &&     curl -Ls https://github.com/nimmis/backup/archive/master.tar.gz | tar xfz - &&     ./backup-master/install.sh all &&     rm -Rf ./backup-master &&     apk del curl &&     sed  -i \"s|\\*.emerg|\\#\\*.emerg|\" /etc/rsyslog.conf &&     sed -i 's/$ModLoad imklog/#$ModLoad imklog/' /etc/rsyslog.conf &&     sed -i 's/$KLogPermitNonKernelFacility on/#$KLogPermitNonKernelFacility on/' /etc/rsyslog.conf &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:d92b58da023de14dda4b54689d77d72b4246689e7c4a6100a1544858984418f8" [label="mkdir{path=/root}" shape="note"];
  "sha256:a6c8bd7d741b59c425088f5e270ddf664b713f7082bd6b5cf0b9c27384fb5e67" [label="sha256:a6c8bd7d741b59c425088f5e270ddf664b713f7082bd6b5cf0b9c27384fb5e67" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:907a2a449993ccb57961c01d4d94b1549c4013266995d0a666a9ee28360f52c0" [label=""];
  "sha256:47e46275a86aa57ac748eb22aadcf84498f02470021c0f4b27a83cc2d20a34b1" -> "sha256:907a2a449993ccb57961c01d4d94b1549c4013266995d0a666a9ee28360f52c0" [label=""];
  "sha256:907a2a449993ccb57961c01d4d94b1549c4013266995d0a666a9ee28360f52c0" -> "sha256:c1dd542f6e22a232845859dc0973054128cf8f203042936bd6e4f455805a5e7a" [label=""];
  "sha256:c1dd542f6e22a232845859dc0973054128cf8f203042936bd6e4f455805a5e7a" -> "sha256:d92b58da023de14dda4b54689d77d72b4246689e7c4a6100a1544858984418f8" [label=""];
  "sha256:d92b58da023de14dda4b54689d77d72b4246689e7c4a6100a1544858984418f8" -> "sha256:a6c8bd7d741b59c425088f5e270ddf664b713f7082bd6b5cf0b9c27384fb5e67" [label=""];
}

