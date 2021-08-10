[app/sources/172354099.Dockerfile]
digraph {
  "sha256:62dd03e647b78cede53f0c5b6731c01e4f08038fa5edbfdfb449dd7e5d9c613f" [label="docker-image://docker.io/yannickburon/clouder:odoo10" shape="ellipse"];
  "sha256:ed90911ed22c79c3918b2a92bf03b0b8c7026ed3c79515f5659e753276354d7a" [label="/bin/sh -c apk add --update --no-cache --virtual .build-deps gcc linux-headers python-dev musl-dev libffi-dev openssl-dev         && pip --no-cache-dir install --upgrade paramiko erppeek apache-libcloud         && apk del .build-deps" shape="box"];
  "sha256:0982c570533705c54364e6d98e601deb4d22078cbcb093179b7d20243e6a4fa2" [label="/bin/sh -c git clone http://github.com/clouder-community/clouder.git /opt/odoo/files/extra/clouder -b master" shape="box"];
  "sha256:1258f675de39bb926b25a0cb10cfcc46df825dfbd0d2acedcda2545e9ea1cdaf" [label="sha256:1258f675de39bb926b25a0cb10cfcc46df825dfbd0d2acedcda2545e9ea1cdaf" shape="plaintext"];
  "sha256:62dd03e647b78cede53f0c5b6731c01e4f08038fa5edbfdfb449dd7e5d9c613f" -> "sha256:ed90911ed22c79c3918b2a92bf03b0b8c7026ed3c79515f5659e753276354d7a" [label=""];
  "sha256:ed90911ed22c79c3918b2a92bf03b0b8c7026ed3c79515f5659e753276354d7a" -> "sha256:0982c570533705c54364e6d98e601deb4d22078cbcb093179b7d20243e6a4fa2" [label=""];
  "sha256:0982c570533705c54364e6d98e601deb4d22078cbcb093179b7d20243e6a4fa2" -> "sha256:1258f675de39bb926b25a0cb10cfcc46df825dfbd0d2acedcda2545e9ea1cdaf" [label=""];
}

