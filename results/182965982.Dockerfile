[app/sources/182965982.Dockerfile]
digraph {
  "sha256:31bdf4265653c9dbd5003ba5658f69e3e2db4c89f2955dda2a6af025c1ae040d" [label="docker-image://docker.io/jderobot/jderobot@sha256:530cc04fcc2aeef55314e18b769528218344dd707420291c46492acc689d1fcb" shape="ellipse"];
  "sha256:2a29fb6530ad6882f779e3cee70b0cd078f8e4e1e570fc1e3eb461c7d9888b7f" [label="/bin/sh -c apt-get update && apt-get -y  install     wget     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4fef3f30c9ba639b380390d01724aecc4cf986238cc1e87834cef260fd664c18" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116" shape="box"];
  "sha256:9dc641fc5470ea6c9e4673416c387d5e2519f18b3fe95e5d39877d157522cee7" [label="/bin/sh -c echo \"deb http://packages.ros.org/ros/ubuntu xenial main\" > /etc/apt/sources.list.d/ros-latest.list" shape="box"];
  "sha256:1dd18dabc4509eca7fbbb840c287aa5b8fc652b57a412dde7f76e7738106bb07" [label="/bin/sh -c sh -c 'echo deb http://zeroc.com/download/apt/ubuntu16.04 stable main > /etc/apt/sources.list.d/zeroc.list'" shape="box"];
  "sha256:ac80110bb856392f968b2f09bda70efc94f1b104578089807f16f5a4dd1b8646" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv 5E6DA83306132997" shape="box"];
  "sha256:ae67718abb911c81279aba72990a9d3757c4da7abc656b817c1f9d2d20e6ef76" [label="/bin/sh -c echo \"deb http://packages.osrfoundation.org/gazebo/ubuntu-stable xenial main\" > /etc/apt/sources.list.d/gazebo-stable.list" shape="box"];
  "sha256:4def6a298ec4ab0132bdc4097a659f4840d9b05cd7d7c376f4c2b9712a275ff9" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv-key 67170598AF249743" shape="box"];
  "sha256:d36ce26dd003354890597bde4d5969863556bbbd5bce29b06caf78452ddc2697" [label="/bin/sh -c sh -c 'echo \"deb http://jderobot.org/aptest xenial main\" > /etc/apt/sources.list.d/jderobot.list'" shape="box"];
  "sha256:9142c6fc5dee04016f2d17e59932ccf320db5133649c64433286098006509eac" [label="/bin/sh -c wget -qO - www.jderobot.org/aptest/aptest.key | apt-key add -" shape="box"];
  "sha256:026824a0a3e0b35d613507ad93137b397f3acab455d19bcf7ecdd234d0d83d26" [label="/bin/sh -c apt-get update && apt-get -y  install --only-upgrade    jderobot-giraffeServer     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7d99bc71b642bff7e20cb23803261193f27ada5cb7f3b303565604099e57f00c" [label="local://context" shape="ellipse"];
  "sha256:3c1704cb42155b4ca56188e31e982ce32757bce8c3749c191d0d87dfe4e2341d" [label="copy{src=/search_file.sh, dest=/}" shape="note"];
  "sha256:1530ba5bd7c1a3593fa7899165418b1455710730a057e2db382fda9b143b5693" [label="copy{src=/giraffeServer.txt, dest=/}" shape="note"];
  "sha256:269864368e034f25b9625db679b8bf284fcd83e6407b2d26ef5b88d36de9c611" [label="/bin/sh -c ./search_file.sh giraffeServer.txt" shape="box"];
  "sha256:f09723f98f7479fef61c4830c4f96f361ccaeca2fdf442c87e75ff37a8c601fa" [label="sha256:f09723f98f7479fef61c4830c4f96f361ccaeca2fdf442c87e75ff37a8c601fa" shape="plaintext"];
  "sha256:31bdf4265653c9dbd5003ba5658f69e3e2db4c89f2955dda2a6af025c1ae040d" -> "sha256:2a29fb6530ad6882f779e3cee70b0cd078f8e4e1e570fc1e3eb461c7d9888b7f" [label=""];
  "sha256:2a29fb6530ad6882f779e3cee70b0cd078f8e4e1e570fc1e3eb461c7d9888b7f" -> "sha256:4fef3f30c9ba639b380390d01724aecc4cf986238cc1e87834cef260fd664c18" [label=""];
  "sha256:4fef3f30c9ba639b380390d01724aecc4cf986238cc1e87834cef260fd664c18" -> "sha256:9dc641fc5470ea6c9e4673416c387d5e2519f18b3fe95e5d39877d157522cee7" [label=""];
  "sha256:9dc641fc5470ea6c9e4673416c387d5e2519f18b3fe95e5d39877d157522cee7" -> "sha256:1dd18dabc4509eca7fbbb840c287aa5b8fc652b57a412dde7f76e7738106bb07" [label=""];
  "sha256:1dd18dabc4509eca7fbbb840c287aa5b8fc652b57a412dde7f76e7738106bb07" -> "sha256:ac80110bb856392f968b2f09bda70efc94f1b104578089807f16f5a4dd1b8646" [label=""];
  "sha256:ac80110bb856392f968b2f09bda70efc94f1b104578089807f16f5a4dd1b8646" -> "sha256:ae67718abb911c81279aba72990a9d3757c4da7abc656b817c1f9d2d20e6ef76" [label=""];
  "sha256:ae67718abb911c81279aba72990a9d3757c4da7abc656b817c1f9d2d20e6ef76" -> "sha256:4def6a298ec4ab0132bdc4097a659f4840d9b05cd7d7c376f4c2b9712a275ff9" [label=""];
  "sha256:4def6a298ec4ab0132bdc4097a659f4840d9b05cd7d7c376f4c2b9712a275ff9" -> "sha256:d36ce26dd003354890597bde4d5969863556bbbd5bce29b06caf78452ddc2697" [label=""];
  "sha256:d36ce26dd003354890597bde4d5969863556bbbd5bce29b06caf78452ddc2697" -> "sha256:9142c6fc5dee04016f2d17e59932ccf320db5133649c64433286098006509eac" [label=""];
  "sha256:9142c6fc5dee04016f2d17e59932ccf320db5133649c64433286098006509eac" -> "sha256:026824a0a3e0b35d613507ad93137b397f3acab455d19bcf7ecdd234d0d83d26" [label=""];
  "sha256:026824a0a3e0b35d613507ad93137b397f3acab455d19bcf7ecdd234d0d83d26" -> "sha256:3c1704cb42155b4ca56188e31e982ce32757bce8c3749c191d0d87dfe4e2341d" [label=""];
  "sha256:7d99bc71b642bff7e20cb23803261193f27ada5cb7f3b303565604099e57f00c" -> "sha256:3c1704cb42155b4ca56188e31e982ce32757bce8c3749c191d0d87dfe4e2341d" [label=""];
  "sha256:3c1704cb42155b4ca56188e31e982ce32757bce8c3749c191d0d87dfe4e2341d" -> "sha256:1530ba5bd7c1a3593fa7899165418b1455710730a057e2db382fda9b143b5693" [label=""];
  "sha256:7d99bc71b642bff7e20cb23803261193f27ada5cb7f3b303565604099e57f00c" -> "sha256:1530ba5bd7c1a3593fa7899165418b1455710730a057e2db382fda9b143b5693" [label=""];
  "sha256:1530ba5bd7c1a3593fa7899165418b1455710730a057e2db382fda9b143b5693" -> "sha256:269864368e034f25b9625db679b8bf284fcd83e6407b2d26ef5b88d36de9c611" [label=""];
  "sha256:269864368e034f25b9625db679b8bf284fcd83e6407b2d26ef5b88d36de9c611" -> "sha256:f09723f98f7479fef61c4830c4f96f361ccaeca2fdf442c87e75ff37a8c601fa" [label=""];
}

