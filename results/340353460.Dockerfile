[app/sources/340353460.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:effdc3dae35ada0a327ce5fd8c9a83381edfc35c764e780963f9f6da243928b6" [label="/bin/sh -c echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7e374df25f3dd0c441e5e7d0683194c3ba3a9809f920dcf2541f2faa97d9916c" [label="/bin/sh -c apt-get update && apt-get install -q -y     bash-completion     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a99d3897d5ec25404d084d4e894ec5b258c42bff8c876b6b9714722a13c66e2c" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654" shape="box"];
  "sha256:47bca7742588f51caaaaba5a4e91970ee3ad5ef091d5a449fa3af5f50f34ba3f" [label="/bin/sh -c echo \"deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main\" > /etc/apt/sources.list.d/ros2-latest.list" shape="box"];
  "sha256:a5d036626c3cedb13ff923207316d448f35b9d524580780abfa15ed1721f2c1c" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y     git     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:088292afc6453f7bdfc523d7e39b487b528d4ae329edb9c417b0702653a107a7" [label="/bin/sh -c pip3 install -U     argcomplete     colcon-common-extensions     flake8     flake8-blind-except     flake8-builtins     flake8-class-newline     flake8-comprehensions     flake8-deprecated     flake8-docstrings     flake8-import-order     flake8-quotes     pytest-repeat     pytest-rerunfailures" shape="box"];
  "sha256:594e2910f546baeb6e75a136c79539f7c8d66f1a61b50009a2d4467c281b1006" [label="/bin/sh -c pip3 freeze | grep pytest     && python3 -m pytest --version" shape="box"];
  "sha256:d3b163aecbd19be98c44047ebc3027555d7cebb27e824959fc988661bb322a9a" [label="/bin/sh -c rosdep init     && rosdep update" shape="box"];
  "sha256:c5e3a2b7c2a583106e915803dce14d36c501b60284eabbec30fd7ec937af2cf3" [label="/bin/sh -c mkdir -p $ROS2_WS/src" shape="box"];
  "sha256:0510532c6df413d1b4baee85f614f96732f221a47289a37786ba3f9d082c3d39" [label="mkdir{path=/opt/ros2_ws}" shape="note"];
  "sha256:44471caa962b70505a560eaab7e7ec773b408bf9cde4d4bbd6181796893a0fa5" [label="/bin/sh -c colcon     build     --cmake-args       -DSECURITY=ON --no-warn-unused-cli     --symlink-install" shape="box"];
  "sha256:b558dcd7ebbeb42a073a0fc30b4e4da8664a524914325b59d50f1a570e5ae1c4" [label="/bin/sh -c cp /etc/skel/.bashrc ~/" shape="box"];
  "sha256:ea3bfa99980bf5e960177ddc85d7ba6b1ecda39b2ce819277f959ad4d20ec512" [label="local://context" shape="ellipse"];
  "sha256:ba71afb8772d32f77fde2ce49e9429e42050d63088f1fe9aa1beb444cd496fe1" [label="copy{src=/ros_entrypoint.sh, dest=/}" shape="note"];
  "sha256:814b324a2a3051561d1a8fa19619b571457e1075ecd718ae31ab2debf248e0b3" [label="sha256:814b324a2a3051561d1a8fa19619b571457e1075ecd718ae31ab2debf248e0b3" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:effdc3dae35ada0a327ce5fd8c9a83381edfc35c764e780963f9f6da243928b6" [label=""];
  "sha256:effdc3dae35ada0a327ce5fd8c9a83381edfc35c764e780963f9f6da243928b6" -> "sha256:7e374df25f3dd0c441e5e7d0683194c3ba3a9809f920dcf2541f2faa97d9916c" [label=""];
  "sha256:7e374df25f3dd0c441e5e7d0683194c3ba3a9809f920dcf2541f2faa97d9916c" -> "sha256:a99d3897d5ec25404d084d4e894ec5b258c42bff8c876b6b9714722a13c66e2c" [label=""];
  "sha256:a99d3897d5ec25404d084d4e894ec5b258c42bff8c876b6b9714722a13c66e2c" -> "sha256:47bca7742588f51caaaaba5a4e91970ee3ad5ef091d5a449fa3af5f50f34ba3f" [label=""];
  "sha256:47bca7742588f51caaaaba5a4e91970ee3ad5ef091d5a449fa3af5f50f34ba3f" -> "sha256:a5d036626c3cedb13ff923207316d448f35b9d524580780abfa15ed1721f2c1c" [label=""];
  "sha256:a5d036626c3cedb13ff923207316d448f35b9d524580780abfa15ed1721f2c1c" -> "sha256:088292afc6453f7bdfc523d7e39b487b528d4ae329edb9c417b0702653a107a7" [label=""];
  "sha256:088292afc6453f7bdfc523d7e39b487b528d4ae329edb9c417b0702653a107a7" -> "sha256:594e2910f546baeb6e75a136c79539f7c8d66f1a61b50009a2d4467c281b1006" [label=""];
  "sha256:594e2910f546baeb6e75a136c79539f7c8d66f1a61b50009a2d4467c281b1006" -> "sha256:d3b163aecbd19be98c44047ebc3027555d7cebb27e824959fc988661bb322a9a" [label=""];
  "sha256:d3b163aecbd19be98c44047ebc3027555d7cebb27e824959fc988661bb322a9a" -> "sha256:c5e3a2b7c2a583106e915803dce14d36c501b60284eabbec30fd7ec937af2cf3" [label=""];
  "sha256:c5e3a2b7c2a583106e915803dce14d36c501b60284eabbec30fd7ec937af2cf3" -> "sha256:0510532c6df413d1b4baee85f614f96732f221a47289a37786ba3f9d082c3d39" [label=""];
  "sha256:0510532c6df413d1b4baee85f614f96732f221a47289a37786ba3f9d082c3d39" -> "sha256:44471caa962b70505a560eaab7e7ec773b408bf9cde4d4bbd6181796893a0fa5" [label=""];
  "sha256:44471caa962b70505a560eaab7e7ec773b408bf9cde4d4bbd6181796893a0fa5" -> "sha256:b558dcd7ebbeb42a073a0fc30b4e4da8664a524914325b59d50f1a570e5ae1c4" [label=""];
  "sha256:b558dcd7ebbeb42a073a0fc30b4e4da8664a524914325b59d50f1a570e5ae1c4" -> "sha256:ba71afb8772d32f77fde2ce49e9429e42050d63088f1fe9aa1beb444cd496fe1" [label=""];
  "sha256:ea3bfa99980bf5e960177ddc85d7ba6b1ecda39b2ce819277f959ad4d20ec512" -> "sha256:ba71afb8772d32f77fde2ce49e9429e42050d63088f1fe9aa1beb444cd496fe1" [label=""];
  "sha256:ba71afb8772d32f77fde2ce49e9429e42050d63088f1fe9aa1beb444cd496fe1" -> "sha256:814b324a2a3051561d1a8fa19619b571457e1075ecd718ae31ab2debf248e0b3" [label=""];
}

