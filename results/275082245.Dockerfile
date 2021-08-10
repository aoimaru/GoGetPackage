[app/sources/275082245.Dockerfile]
digraph {
  "sha256:f47a5878b3f3b6c0eabad28c14611916463cdea6d596173518282feb4fb3db7a" [label="docker-image://docker.io/library/mongo:3.4.10" shape="ellipse"];
  "sha256:a17312d1f9b22d5a6077cd7a5684a369bb5d2dd9f75084a3c5a295802a43adeb" [label="/bin/sh -c mkdir -p /data/db2     && echo \"dbpath = /data/db2\" > /etc/mongodb.conf     && chown -R mongodb:mongodb /data/db2" shape="box"];
  "sha256:3d741fc0054ccfb0aa67b17cc34f5cdf476fbdf0e134403978343f4cb4951140" [label="local://context" shape="ellipse"];
  "sha256:f0279684968b14c63b209b5fe4f129e0594689da43f3d344b5d24bc34a144a1d" [label="copy{src=/, dest=/data/db2}" shape="note"];
  "sha256:8caa81bb8875ffac14bc638a0055bedb05a70a01ace00a18a3f0be1c385d8f2f" [label="/bin/sh -c mongod --fork --logpath /var/log/mongodb.log --dbpath /data/db2 --smallfiles     && CREATE_FILES=/data/db2/scripts/*-create.js     && for f in $CREATE_FILES; do mongo 127.0.0.1:27017 $f; done     && INSERT_FILES=/data/db2/scripts/*-insert.js     && for f in $INSERT_FILES; do mongo 127.0.0.1:27017 $f; done     && mongod --dbpath /data/db2 --shutdown     && chown -R mongodb /data/db2" shape="box"];
  "sha256:b38a03bf4d59fcd9c6ebbe1fa0d919483ac8b08ec80e1c526a2b7cad28434668" [label="sha256:b38a03bf4d59fcd9c6ebbe1fa0d919483ac8b08ec80e1c526a2b7cad28434668" shape="plaintext"];
  "sha256:f47a5878b3f3b6c0eabad28c14611916463cdea6d596173518282feb4fb3db7a" -> "sha256:a17312d1f9b22d5a6077cd7a5684a369bb5d2dd9f75084a3c5a295802a43adeb" [label=""];
  "sha256:a17312d1f9b22d5a6077cd7a5684a369bb5d2dd9f75084a3c5a295802a43adeb" -> "sha256:f0279684968b14c63b209b5fe4f129e0594689da43f3d344b5d24bc34a144a1d" [label=""];
  "sha256:3d741fc0054ccfb0aa67b17cc34f5cdf476fbdf0e134403978343f4cb4951140" -> "sha256:f0279684968b14c63b209b5fe4f129e0594689da43f3d344b5d24bc34a144a1d" [label=""];
  "sha256:f0279684968b14c63b209b5fe4f129e0594689da43f3d344b5d24bc34a144a1d" -> "sha256:8caa81bb8875ffac14bc638a0055bedb05a70a01ace00a18a3f0be1c385d8f2f" [label=""];
  "sha256:8caa81bb8875ffac14bc638a0055bedb05a70a01ace00a18a3f0be1c385d8f2f" -> "sha256:b38a03bf4d59fcd9c6ebbe1fa0d919483ac8b08ec80e1c526a2b7cad28434668" [label=""];
}

