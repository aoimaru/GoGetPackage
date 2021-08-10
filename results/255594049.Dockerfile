[app/sources/255594049.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:874f8b2a97174c1754310128173efce04e1efe6ddcc32cfa9de05b82b888bdee" [label="/bin/sh -c apt update && apt -y upgrade && apt -y install bash build-essential clang cmake cppcheck curl gdb git gperf iputils-ping libboost-all-dev libgl1-mesa-dev libjemalloc1 libjemalloc-dev libmlpack-dev linux-tools-generic nano valgrind wget spawn-fcgi libfcgi-dev qt5-default && apt -y autoremove && apt -y autoclean && apt -y clean && rm -rf /var/lib/apt/lists/* && exit 0" shape="box"];
  "sha256:9da7b153b4af0f69eb767181631d025bff18259cbd707c9c83b71e67f2d710ec" [label="sha256:9da7b153b4af0f69eb767181631d025bff18259cbd707c9c83b71e67f2d710ec" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:874f8b2a97174c1754310128173efce04e1efe6ddcc32cfa9de05b82b888bdee" [label=""];
  "sha256:874f8b2a97174c1754310128173efce04e1efe6ddcc32cfa9de05b82b888bdee" -> "sha256:9da7b153b4af0f69eb767181631d025bff18259cbd707c9c83b71e67f2d710ec" [label=""];
}

