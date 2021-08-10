[app/sources/269157594.Dockerfile]
digraph {
  "sha256:13048da4b879e03aa1b12abb7a9785d7b05951424aaf3d324c2349d91a26a3e4" [label="docker-image://docker.io/clickable/ubuntu-sdk:16.04-amd64" shape="ellipse"];
  "sha256:9a2e151d281eb7a6d952e9d4bb22375b5f017a217f5cec52ebe8bcf3201e6a7c" [label="/bin/sh -c apt-get update &&     apt-get -y --no-install-recommends install     pyotherside     xvfb     python3-autopilot     python-xlib     gallery-app" shape="box"];
  "sha256:628c1815e5b7636fa8b547a14f4fdf9f87783e2993932592a24c3ec5fbf0e5cb" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:6b279f5a8d2379d705be44ddc41aba0c66a6a2cd0e784ba098fe91dbd2be5690" [label="/bin/sh -c export uid=1000 gid=1000 &&     mkdir -p /home/developer &&     echo \"developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash\" >> /etc/passwd &&     echo \"developer:x:${uid}:\" >> /etc/group &&     mkdir -p /etc/sudoers.d/ &&     echo \"developer ALL=(ALL) NOPASSWD: ALL\" > /etc/sudoers.d/developer &&     chmod 0440 /etc/sudoers.d/developer &&     chown ${uid}:${gid} -R /home/developer" shape="box"];
  "sha256:fd0bbe124485259660c24fe7a42f1d77cf15db49eb0eee56cdfc15be01995017" [label="mkdir{path=/home/developer/ubports_build}" shape="note"];
  "sha256:9dc726cfa2214f097bbe5cef529b257a81720f04b32309be94c1f187f5ddd21f" [label="sha256:9dc726cfa2214f097bbe5cef529b257a81720f04b32309be94c1f187f5ddd21f" shape="plaintext"];
  "sha256:13048da4b879e03aa1b12abb7a9785d7b05951424aaf3d324c2349d91a26a3e4" -> "sha256:9a2e151d281eb7a6d952e9d4bb22375b5f017a217f5cec52ebe8bcf3201e6a7c" [label=""];
  "sha256:9a2e151d281eb7a6d952e9d4bb22375b5f017a217f5cec52ebe8bcf3201e6a7c" -> "sha256:628c1815e5b7636fa8b547a14f4fdf9f87783e2993932592a24c3ec5fbf0e5cb" [label=""];
  "sha256:628c1815e5b7636fa8b547a14f4fdf9f87783e2993932592a24c3ec5fbf0e5cb" -> "sha256:6b279f5a8d2379d705be44ddc41aba0c66a6a2cd0e784ba098fe91dbd2be5690" [label=""];
  "sha256:6b279f5a8d2379d705be44ddc41aba0c66a6a2cd0e784ba098fe91dbd2be5690" -> "sha256:fd0bbe124485259660c24fe7a42f1d77cf15db49eb0eee56cdfc15be01995017" [label=""];
  "sha256:fd0bbe124485259660c24fe7a42f1d77cf15db49eb0eee56cdfc15be01995017" -> "sha256:9dc726cfa2214f097bbe5cef529b257a81720f04b32309be94c1f187f5ddd21f" [label=""];
}

