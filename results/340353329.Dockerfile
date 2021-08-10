[app/sources/340353329.Dockerfile]
digraph {
  "sha256:e131d8656e79ca19c93abb6b21f56f9ba3bab8ca89ce60b18cd4f94fde26497d" [label="docker-image://docker.io/library/ubuntu:lucid" shape="ellipse"];
  "sha256:97b82b3a819bcea231557692969892c33b1b18e65290d6033ec19019c8cbb489" [label="/bin/sh -c sed -i -e 's/archive/old-releases/g' /etc/apt/sources.list" shape="box"];
  "sha256:a19f94633c83c5226d28659fc0cfc63fb3398d3adfd7236cd68183e2a7981f03" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116" shape="box"];
  "sha256:523525c91fcc800c6b0b1f1f46fe3c11274e926a3bc9da749318e02cd4e2696e" [label="/bin/sh -c echo \"deb http://packages.ros.org/ros/ubuntu lucid main\" > /etc/apt/sources.list.d/ros-latest.list" shape="box"];
  "sha256:f7ec410bc251b35c6acd0d7273f7225d44424f0efe809ca3d6ad462b4e090e8a" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:fb0029df56a4a96d5be769e0d0df10c89738cfb35b5149fcd2cbdcf47f9c1461" [label="/bin/sh -c apt-get update && apt-get install -y     ros-electric-ros     && rm -rf /var/lib/apt/lists/*     && mkdir /var/lib/apt/lists/partial" shape="box"];
  "sha256:7f7e94025674578ac37cb6f43281b1a918a00b9f466ff172803986234dbf9c25" [label="local://context" shape="ellipse"];
  "sha256:f717ed5e1a29de5646bc27cb38f698e280656e664101b81e00ca4043739e4685" [label="copy{src=/ros_entrypoint.sh, dest=/ros_entrypoint.sh}" shape="note"];
  "sha256:a6d378187f493a4174f49b1708a22778848e0652df00b23321290122774667c5" [label="sha256:a6d378187f493a4174f49b1708a22778848e0652df00b23321290122774667c5" shape="plaintext"];
  "sha256:e131d8656e79ca19c93abb6b21f56f9ba3bab8ca89ce60b18cd4f94fde26497d" -> "sha256:97b82b3a819bcea231557692969892c33b1b18e65290d6033ec19019c8cbb489" [label=""];
  "sha256:97b82b3a819bcea231557692969892c33b1b18e65290d6033ec19019c8cbb489" -> "sha256:a19f94633c83c5226d28659fc0cfc63fb3398d3adfd7236cd68183e2a7981f03" [label=""];
  "sha256:a19f94633c83c5226d28659fc0cfc63fb3398d3adfd7236cd68183e2a7981f03" -> "sha256:523525c91fcc800c6b0b1f1f46fe3c11274e926a3bc9da749318e02cd4e2696e" [label=""];
  "sha256:523525c91fcc800c6b0b1f1f46fe3c11274e926a3bc9da749318e02cd4e2696e" -> "sha256:f7ec410bc251b35c6acd0d7273f7225d44424f0efe809ca3d6ad462b4e090e8a" [label=""];
  "sha256:f7ec410bc251b35c6acd0d7273f7225d44424f0efe809ca3d6ad462b4e090e8a" -> "sha256:fb0029df56a4a96d5be769e0d0df10c89738cfb35b5149fcd2cbdcf47f9c1461" [label=""];
  "sha256:fb0029df56a4a96d5be769e0d0df10c89738cfb35b5149fcd2cbdcf47f9c1461" -> "sha256:f717ed5e1a29de5646bc27cb38f698e280656e664101b81e00ca4043739e4685" [label=""];
  "sha256:7f7e94025674578ac37cb6f43281b1a918a00b9f466ff172803986234dbf9c25" -> "sha256:f717ed5e1a29de5646bc27cb38f698e280656e664101b81e00ca4043739e4685" [label=""];
  "sha256:f717ed5e1a29de5646bc27cb38f698e280656e664101b81e00ca4043739e4685" -> "sha256:a6d378187f493a4174f49b1708a22778848e0652df00b23321290122774667c5" [label=""];
}

