[app/sources/476428480.Dockerfile]
digraph {
  "sha256:0d287aa86d76f6876254f411425670408e29a67cd6f2dbd8e7c40084a16f6d20" [label="docker-image://docker.io/siebel/sai:17.0" shape="ellipse"];
  "sha256:c1c376e0c87b250fb0b45928f919eb8e6ea6e8f4645a4e8ae6423e21a5facdf6" [label="local://context" shape="ellipse"];
  "sha256:00cff34e25c265b119eec8eed26d95cef0c6d91b3e4157e3deb9994dc5c06c6d" [label="copy{src=/sai/sai_update.rsp, dest=/config/},copy{src=/sai/sai_update.sh, dest=/config/}" shape="note"];
  "sha256:8dd702f5768b10ef20f1d46df089fef8a6d37b9d188e84287f0c8ba7bb103b36" [label="copy{src=/Siebel_Enterprise_Server, dest=/mnt/Siebel_Enterprise_Server/}" shape="note"];
  "sha256:dd92b8240d91cd650b3c0736a2837b294467861b2a75e827c967dcc04e5e3289" [label="/bin/sh -c bash /config/sai_update.sh && rm -rf /mnt/Siebel_Enterprise_Server/ && rm -rf /siebel/sai/ps_backup && echo Waiting for deployment of web archive ... && sleep 30" shape="box"];
  "sha256:369979f1243d7c5caf59c51ce074c9b12c838ef8b4df6c80641a8b5fb9a89b3f" [label="sha256:369979f1243d7c5caf59c51ce074c9b12c838ef8b4df6c80641a8b5fb9a89b3f" shape="plaintext"];
  "sha256:0d287aa86d76f6876254f411425670408e29a67cd6f2dbd8e7c40084a16f6d20" -> "sha256:00cff34e25c265b119eec8eed26d95cef0c6d91b3e4157e3deb9994dc5c06c6d" [label=""];
  "sha256:c1c376e0c87b250fb0b45928f919eb8e6ea6e8f4645a4e8ae6423e21a5facdf6" -> "sha256:00cff34e25c265b119eec8eed26d95cef0c6d91b3e4157e3deb9994dc5c06c6d" [label=""];
  "sha256:00cff34e25c265b119eec8eed26d95cef0c6d91b3e4157e3deb9994dc5c06c6d" -> "sha256:8dd702f5768b10ef20f1d46df089fef8a6d37b9d188e84287f0c8ba7bb103b36" [label=""];
  "sha256:c1c376e0c87b250fb0b45928f919eb8e6ea6e8f4645a4e8ae6423e21a5facdf6" -> "sha256:8dd702f5768b10ef20f1d46df089fef8a6d37b9d188e84287f0c8ba7bb103b36" [label=""];
  "sha256:8dd702f5768b10ef20f1d46df089fef8a6d37b9d188e84287f0c8ba7bb103b36" -> "sha256:dd92b8240d91cd650b3c0736a2837b294467861b2a75e827c967dcc04e5e3289" [label=""];
  "sha256:dd92b8240d91cd650b3c0736a2837b294467861b2a75e827c967dcc04e5e3289" -> "sha256:369979f1243d7c5caf59c51ce074c9b12c838ef8b4df6c80641a8b5fb9a89b3f" [label=""];
}

