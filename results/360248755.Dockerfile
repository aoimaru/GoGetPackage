[app/sources/360248755.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:721fbeeca19ce37bfea8d9780c2a17c3cda23bf2feff470d33c7978b68b6438c" [label="/bin/sh -c apt-get update  && apt-get install -y         curl         git         lsb-release         openssh-client         gnupg2  && export CLOUD_SDK_REPO=\"cloud-sdk-$(lsb_release -c -s)\"  && echo \"deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main\" > /etc/apt/sources.list.d/google-cloud-sdk.list  && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -  && apt-get update  && apt-get install -y google-cloud-sdk  && gcloud config set core/disable_usage_reporting true  && gcloud config set component_manager/disable_update_check true  && gcloud --version  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d1df6de1ee065311e26df46d62d509aee7a89b5936766c9591b8b51be8849e63" [label="/bin/sh -c useradd --create-home --user-group --shell /bin/bash gitsync" shape="box"];
  "sha256:4aa40f3e1b6449eaaa07235d5ffcab29cfd9fb900b13fbf437b3edb882e67c05" [label="/bin/sh -c mkdir -p /home/gitsync/.ssh" shape="box"];
  "sha256:b179bae92b81139d05f9e6c0102bd2147263fc73816fe18005108369f4d7cff5" [label="local://context" shape="ellipse"];
  "sha256:24c5f8268873aad2b38a5ca3b82d7e331a51b0b64c04b3ff4f823130bad77df6" [label="copy{src=/ssh_config, dest=/home/gitsync/.ssh/config}" shape="note"];
  "sha256:4bb07c1d795291fb4705ca72b0d23bd06eca34dcbfae30b5c4e220d33cd3dae0" [label="copy{src=/known_hosts, dest=/home/gitsync/.ssh/known_hosts}" shape="note"];
  "sha256:7707392605e4d8e0fd54f1c689e6897ecc85584255b69db4ef0dcc5122e6bed3" [label="copy{src=/gitsync.sh, dest=/home/gitsync/gitsync.sh}" shape="note"];
  "sha256:51a40b21acf21f15a1c41ed0a78529ff27698684db54c50e8dcacd8ceda7da27" [label="/bin/sh -c chown -R gitsync:gitsync /home/gitsync" shape="box"];
  "sha256:9ce8740d47cc58b342a15361c4f8f7e270dcc77680c80707693d2fec3f4e0d78" [label="/bin/sh -c git config --global http.cookiefile /home/gitsync/.gitcookies" shape="box"];
  "sha256:1ce3309650ce952729e2ee6c0e8a246b1ecfa2d328d8a9e39a57072e342b4185" [label="mkdir{path=/home/gitsync}" shape="note"];
  "sha256:a0c96d2e1ea9d5440880f0979a00027ffd32bd50acb5fc80113709a9648e5862" [label="sha256:a0c96d2e1ea9d5440880f0979a00027ffd32bd50acb5fc80113709a9648e5862" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:721fbeeca19ce37bfea8d9780c2a17c3cda23bf2feff470d33c7978b68b6438c" [label=""];
  "sha256:721fbeeca19ce37bfea8d9780c2a17c3cda23bf2feff470d33c7978b68b6438c" -> "sha256:d1df6de1ee065311e26df46d62d509aee7a89b5936766c9591b8b51be8849e63" [label=""];
  "sha256:d1df6de1ee065311e26df46d62d509aee7a89b5936766c9591b8b51be8849e63" -> "sha256:4aa40f3e1b6449eaaa07235d5ffcab29cfd9fb900b13fbf437b3edb882e67c05" [label=""];
  "sha256:4aa40f3e1b6449eaaa07235d5ffcab29cfd9fb900b13fbf437b3edb882e67c05" -> "sha256:24c5f8268873aad2b38a5ca3b82d7e331a51b0b64c04b3ff4f823130bad77df6" [label=""];
  "sha256:b179bae92b81139d05f9e6c0102bd2147263fc73816fe18005108369f4d7cff5" -> "sha256:24c5f8268873aad2b38a5ca3b82d7e331a51b0b64c04b3ff4f823130bad77df6" [label=""];
  "sha256:24c5f8268873aad2b38a5ca3b82d7e331a51b0b64c04b3ff4f823130bad77df6" -> "sha256:4bb07c1d795291fb4705ca72b0d23bd06eca34dcbfae30b5c4e220d33cd3dae0" [label=""];
  "sha256:b179bae92b81139d05f9e6c0102bd2147263fc73816fe18005108369f4d7cff5" -> "sha256:4bb07c1d795291fb4705ca72b0d23bd06eca34dcbfae30b5c4e220d33cd3dae0" [label=""];
  "sha256:4bb07c1d795291fb4705ca72b0d23bd06eca34dcbfae30b5c4e220d33cd3dae0" -> "sha256:7707392605e4d8e0fd54f1c689e6897ecc85584255b69db4ef0dcc5122e6bed3" [label=""];
  "sha256:b179bae92b81139d05f9e6c0102bd2147263fc73816fe18005108369f4d7cff5" -> "sha256:7707392605e4d8e0fd54f1c689e6897ecc85584255b69db4ef0dcc5122e6bed3" [label=""];
  "sha256:7707392605e4d8e0fd54f1c689e6897ecc85584255b69db4ef0dcc5122e6bed3" -> "sha256:51a40b21acf21f15a1c41ed0a78529ff27698684db54c50e8dcacd8ceda7da27" [label=""];
  "sha256:51a40b21acf21f15a1c41ed0a78529ff27698684db54c50e8dcacd8ceda7da27" -> "sha256:9ce8740d47cc58b342a15361c4f8f7e270dcc77680c80707693d2fec3f4e0d78" [label=""];
  "sha256:9ce8740d47cc58b342a15361c4f8f7e270dcc77680c80707693d2fec3f4e0d78" -> "sha256:1ce3309650ce952729e2ee6c0e8a246b1ecfa2d328d8a9e39a57072e342b4185" [label=""];
  "sha256:1ce3309650ce952729e2ee6c0e8a246b1ecfa2d328d8a9e39a57072e342b4185" -> "sha256:a0c96d2e1ea9d5440880f0979a00027ffd32bd50acb5fc80113709a9648e5862" [label=""];
}

