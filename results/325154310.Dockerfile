[app/sources/325154310.Dockerfile]
digraph {
  "sha256:d13815940ce1c289c5a23299b351a1450fdf6785c97bf0e4b92b71fa50b1ab18" [label="docker-image://docker.io/circleci/node:10-browsers@sha256:f6e04fb16889bc6c91eda5aeaa62bfa2c995bb1a6f7124db358a148fd05418b5" shape="ellipse"];
  "sha256:f15fe17a6ae71b9585eb24d4ed9a0170565a000c3b05b0663cbd78ceada930b0" [label="/bin/sh -c sudo apt-get install xvfb libgtk2.0-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2" shape="box"];
  "sha256:aff7f34f02d8c127acc13747439b20e5964c0ea4df86c8e29130fc520b5b5e45" [label="mkdir{path=/home/circleci/temp}" shape="note"];
  "sha256:1250c934550c5445c7458f250b3f21a64f2901728c2b87c3e7c93d5826701401" [label="/bin/sh -c sudo chown -R circleci:circleci /home/circleci/temp" shape="box"];
  "sha256:ff376d00258b6b9f1ce7a694ee33f96ea6178303e7f08a887ac73f6b8bbb4177" [label="/bin/sh -c echo \"{}\" > package.json && npm install cypress &&   cd .. && rm -rf ~/temp/" shape="box"];
  "sha256:a70d7ef2d456adf9270a5fcd76c49e743bff9c862368465541e99b225fe75a74" [label="sha256:a70d7ef2d456adf9270a5fcd76c49e743bff9c862368465541e99b225fe75a74" shape="plaintext"];
  "sha256:d13815940ce1c289c5a23299b351a1450fdf6785c97bf0e4b92b71fa50b1ab18" -> "sha256:f15fe17a6ae71b9585eb24d4ed9a0170565a000c3b05b0663cbd78ceada930b0" [label=""];
  "sha256:f15fe17a6ae71b9585eb24d4ed9a0170565a000c3b05b0663cbd78ceada930b0" -> "sha256:aff7f34f02d8c127acc13747439b20e5964c0ea4df86c8e29130fc520b5b5e45" [label=""];
  "sha256:aff7f34f02d8c127acc13747439b20e5964c0ea4df86c8e29130fc520b5b5e45" -> "sha256:1250c934550c5445c7458f250b3f21a64f2901728c2b87c3e7c93d5826701401" [label=""];
  "sha256:1250c934550c5445c7458f250b3f21a64f2901728c2b87c3e7c93d5826701401" -> "sha256:ff376d00258b6b9f1ce7a694ee33f96ea6178303e7f08a887ac73f6b8bbb4177" [label=""];
  "sha256:ff376d00258b6b9f1ce7a694ee33f96ea6178303e7f08a887ac73f6b8bbb4177" -> "sha256:a70d7ef2d456adf9270a5fcd76c49e743bff9c862368465541e99b225fe75a74" [label=""];
}

