[app/sources/374759425.Dockerfile]
digraph {
  "sha256:bae97075a178a5cf9aa105ea13fc021a200941a70ccb4262ef22c9c641dee594" [label="docker-image://docker.io/dynorobotics/ros2:crystal" shape="ellipse"];
  "sha256:aee2516c4ce6e1058bd90991fccecb04d527772a9b7b55c3ad4ac5807488ac19" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && echo \"deb https://download.mono-project.com/repo/ubuntu stable-bionic main\" | tee /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y     apt-transport-https     mono-complete   && rm -rf /var/likb/apt/lists/*" shape="box"];
  "sha256:1d7ede9f3cd4b0d4b3c4b84a85c923c0a8636835b306f09257231654c7d43dd0" [label="/bin/sh -c apt-get update && apt-get install -y   python3-colcon-common-extensions   python-rosdep   python3-vcstool   && rm -rf /var/likb/apt/lists/*" shape="box"];
  "sha256:2cce217527cfea17624fdbe7db22f918cd84df1f10ce5c04bb1a8bb5214135bb" [label="sha256:2cce217527cfea17624fdbe7db22f918cd84df1f10ce5c04bb1a8bb5214135bb" shape="plaintext"];
  "sha256:bae97075a178a5cf9aa105ea13fc021a200941a70ccb4262ef22c9c641dee594" -> "sha256:aee2516c4ce6e1058bd90991fccecb04d527772a9b7b55c3ad4ac5807488ac19" [label=""];
  "sha256:aee2516c4ce6e1058bd90991fccecb04d527772a9b7b55c3ad4ac5807488ac19" -> "sha256:1d7ede9f3cd4b0d4b3c4b84a85c923c0a8636835b306f09257231654c7d43dd0" [label=""];
  "sha256:1d7ede9f3cd4b0d4b3c4b84a85c923c0a8636835b306f09257231654c7d43dd0" -> "sha256:2cce217527cfea17624fdbe7db22f918cd84df1f10ce5c04bb1a8bb5214135bb" [label=""];
}

