[app/sources/248649487.Dockerfile]
digraph {
  "sha256:0285d7e71a1f79d6c2653f656f9ae2d509d4d3573c8090e3bd7e73967cdbf663" [label="docker-image://docker.io/library/ros:indigo" shape="ellipse"];
  "sha256:3521ee404a8ffd87e133d423378316da1510473baeeae0bcb8914da2fc765a98" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:32cf93e266777fd98a7345759f5bae3a9cff0a55fe2c8c73225daf637e8b625c" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:08d13def68f6045cc3ff9da943bc2d264f75ed4ae547eed6196f210408e20489" [label="/bin/sh -c apt-get install -y g++" shape="box"];
  "sha256:e0439381ad304c85b7a3cf99f84b6fdec635ce7479d9360397764a3b687d1467" [label="local://context" shape="ellipse"];
  "sha256:f4d096bbcca49c3b59fd78678f379ffd6ee848dc8ca3affeec0e44fcbef42743" [label="copy{src=/rosbridge, dest=/rosbridge_ws/src/rosbridge}" shape="note"];
  "sha256:1ef847732e00bfc9360a49e3b017c1645f4a956f25eb1ab724e677aef4450f83" [label="/bin/sh -c rosdep install --from-paths /rosbridge_ws/src --ignore-src --rosdistro=$ROS_DISTRO -y" shape="box"];
  "sha256:9d606624b67c995b3f89ca7149a2a0e8ad4853b7c9b5d4ab64e9eccbf400f539" [label="/bin/sh -c . /opt/ros/indigo/setup.sh; catkin_make -C /rosbridge_ws" shape="box"];
  "sha256:be957f16b627e4c4fc01e0e567fdbed8d8b0674044495814f0793e80926cfbfe" [label="sha256:be957f16b627e4c4fc01e0e567fdbed8d8b0674044495814f0793e80926cfbfe" shape="plaintext"];
  "sha256:0285d7e71a1f79d6c2653f656f9ae2d509d4d3573c8090e3bd7e73967cdbf663" -> "sha256:3521ee404a8ffd87e133d423378316da1510473baeeae0bcb8914da2fc765a98" [label=""];
  "sha256:3521ee404a8ffd87e133d423378316da1510473baeeae0bcb8914da2fc765a98" -> "sha256:32cf93e266777fd98a7345759f5bae3a9cff0a55fe2c8c73225daf637e8b625c" [label=""];
  "sha256:32cf93e266777fd98a7345759f5bae3a9cff0a55fe2c8c73225daf637e8b625c" -> "sha256:08d13def68f6045cc3ff9da943bc2d264f75ed4ae547eed6196f210408e20489" [label=""];
  "sha256:08d13def68f6045cc3ff9da943bc2d264f75ed4ae547eed6196f210408e20489" -> "sha256:f4d096bbcca49c3b59fd78678f379ffd6ee848dc8ca3affeec0e44fcbef42743" [label=""];
  "sha256:e0439381ad304c85b7a3cf99f84b6fdec635ce7479d9360397764a3b687d1467" -> "sha256:f4d096bbcca49c3b59fd78678f379ffd6ee848dc8ca3affeec0e44fcbef42743" [label=""];
  "sha256:f4d096bbcca49c3b59fd78678f379ffd6ee848dc8ca3affeec0e44fcbef42743" -> "sha256:1ef847732e00bfc9360a49e3b017c1645f4a956f25eb1ab724e677aef4450f83" [label=""];
  "sha256:1ef847732e00bfc9360a49e3b017c1645f4a956f25eb1ab724e677aef4450f83" -> "sha256:9d606624b67c995b3f89ca7149a2a0e8ad4853b7c9b5d4ab64e9eccbf400f539" [label=""];
  "sha256:9d606624b67c995b3f89ca7149a2a0e8ad4853b7c9b5d4ab64e9eccbf400f539" -> "sha256:be957f16b627e4c4fc01e0e567fdbed8d8b0674044495814f0793e80926cfbfe" [label=""];
}

