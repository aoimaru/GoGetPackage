[app/sources/340353335.Dockerfile]
digraph {
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" [label="docker-image://docker.io/library/ubuntu:precise" shape="ellipse"];
  "sha256:e86ffd22d69ad0b0a681e041af4a9d83f61a2f99ef86736c154c3c072d9fe77e" [label="/bin/sh -c sed -i -e 's/archive/old-releases/g' /etc/apt/sources.list" shape="box"];
  "sha256:681cfd9e4fd6384543eb2ca747091c57054b990c808fca5a5c666b24b7b5ac25" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116" shape="box"];
  "sha256:75fb7ad390ce1477de1d3e77da0a6fc94034799a73c261d8effe4e261cc4932f" [label="/bin/sh -c echo \"deb http://packages.ros.org/ros/ubuntu precise main\" > /etc/apt/sources.list.d/ros-latest.list" shape="box"];
  "sha256:8449150cb175826bc0a1bdd3b5c85da178f53f5c0df4648d45894cf7628c5b1c" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:632ac03f10fbcbab167357409c49ec574590df9254e31dbb117750d6e2609a7a" [label="/bin/sh -c apt-get update && apt-get install -y     ros-fuerte-ros     && rm -rf /var/lib/apt/lists/*     && mkdir /var/lib/apt/lists/partial" shape="box"];
  "sha256:ef18025cfacc0fc0e664841585e7260b815c4fe72d9319ba715db5854aa13d60" [label="local://context" shape="ellipse"];
  "sha256:9c25e7dcb7df3e8eafb1dd7376a41d4743d0286f2ae0415b33a323e9e72e01ee" [label="copy{src=/ros_entrypoint.sh, dest=/ros_entrypoint.sh}" shape="note"];
  "sha256:10288803c26b3f393291b08f87b60164c8137260a8c613bf951d5b142899603c" [label="sha256:10288803c26b3f393291b08f87b60164c8137260a8c613bf951d5b142899603c" shape="plaintext"];
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" -> "sha256:e86ffd22d69ad0b0a681e041af4a9d83f61a2f99ef86736c154c3c072d9fe77e" [label=""];
  "sha256:e86ffd22d69ad0b0a681e041af4a9d83f61a2f99ef86736c154c3c072d9fe77e" -> "sha256:681cfd9e4fd6384543eb2ca747091c57054b990c808fca5a5c666b24b7b5ac25" [label=""];
  "sha256:681cfd9e4fd6384543eb2ca747091c57054b990c808fca5a5c666b24b7b5ac25" -> "sha256:75fb7ad390ce1477de1d3e77da0a6fc94034799a73c261d8effe4e261cc4932f" [label=""];
  "sha256:75fb7ad390ce1477de1d3e77da0a6fc94034799a73c261d8effe4e261cc4932f" -> "sha256:8449150cb175826bc0a1bdd3b5c85da178f53f5c0df4648d45894cf7628c5b1c" [label=""];
  "sha256:8449150cb175826bc0a1bdd3b5c85da178f53f5c0df4648d45894cf7628c5b1c" -> "sha256:632ac03f10fbcbab167357409c49ec574590df9254e31dbb117750d6e2609a7a" [label=""];
  "sha256:632ac03f10fbcbab167357409c49ec574590df9254e31dbb117750d6e2609a7a" -> "sha256:9c25e7dcb7df3e8eafb1dd7376a41d4743d0286f2ae0415b33a323e9e72e01ee" [label=""];
  "sha256:ef18025cfacc0fc0e664841585e7260b815c4fe72d9319ba715db5854aa13d60" -> "sha256:9c25e7dcb7df3e8eafb1dd7376a41d4743d0286f2ae0415b33a323e9e72e01ee" [label=""];
  "sha256:9c25e7dcb7df3e8eafb1dd7376a41d4743d0286f2ae0415b33a323e9e72e01ee" -> "sha256:10288803c26b3f393291b08f87b60164c8137260a8c613bf951d5b142899603c" [label=""];
}

