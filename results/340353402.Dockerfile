[app/sources/340353402.Dockerfile]
digraph {
  "sha256:fe804921098f3cd3b3d26e81a070034f9c16f0b04c43740eaaaf40d218297785" [label="docker-image://docker.io/library/ros:lunar-ros-base-stretch" shape="ellipse"];
  "sha256:bf60d1fcf62910bec2a0fbf3e9459103471c0b5d3c6861738b2ea6c7ae6e096e" [label="/bin/sh -c apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3add129ba5b45a937205b43663e67b8fba2d361562c5e855a0be8650c4227ccd" [label="sha256:3add129ba5b45a937205b43663e67b8fba2d361562c5e855a0be8650c4227ccd" shape="plaintext"];
  "sha256:fe804921098f3cd3b3d26e81a070034f9c16f0b04c43740eaaaf40d218297785" -> "sha256:bf60d1fcf62910bec2a0fbf3e9459103471c0b5d3c6861738b2ea6c7ae6e096e" [label=""];
  "sha256:bf60d1fcf62910bec2a0fbf3e9459103471c0b5d3c6861738b2ea6c7ae6e096e" -> "sha256:3add129ba5b45a937205b43663e67b8fba2d361562c5e855a0be8650c4227ccd" [label=""];
}

