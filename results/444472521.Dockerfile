[app/sources/444472521.Dockerfile]
digraph {
  "sha256:6a6ffa4d142fd184fe4c48cf1a5afac23c8883d1c2a4968ef58cb244999fd7d2" [label="docker-image://docker.io/library/fedora:24" shape="ellipse"];
  "sha256:3c8a667d4678d80c4996aa7d63b572583b993ee49953ffde8915c579438ac05c" [label="/bin/sh -c dnf install -y rpm-ostree git polipo python;     dnf clean all" shape="box"];
  "sha256:39a8ad878df037cc5b21a97c834bf708e4b6fb8c6463617c9ff68ddb9991880f" [label="/bin/sh -c mkdir -p /home/working;     cd /home/working;     git clone https://github.com/CentOS/sig-atomic-buildscripts;     cd sig-atomic-buildscripts;     git checkout downstream;     cd ..;     git clone https://pagure.io/fedora-atomic.git;     cd fedora-atomic;     git checkout f24;     sed -i 's/\\\"fedora-24\\\"/\\\"fedora-24\\\", \\\"fedora-24-updates\\\"/g' fedora-atomic-docker-host.json;     mkdir -p /srv/repo &&     ostree --repo=/srv/repo init --mode=archive-z2" shape="box"];
  "sha256:407aaf1727b5efa70f48d8c7b489e5063954cf6646250a1bd80efe305b84b9fb" [label="mkdir{path=/home/working}" shape="note"];
  "sha256:c752a27a43b351b645433cb91e6a0690c3a45ba9ea9620a510ec576f85e6161b" [label="sha256:c752a27a43b351b645433cb91e6a0690c3a45ba9ea9620a510ec576f85e6161b" shape="plaintext"];
  "sha256:6a6ffa4d142fd184fe4c48cf1a5afac23c8883d1c2a4968ef58cb244999fd7d2" -> "sha256:3c8a667d4678d80c4996aa7d63b572583b993ee49953ffde8915c579438ac05c" [label=""];
  "sha256:3c8a667d4678d80c4996aa7d63b572583b993ee49953ffde8915c579438ac05c" -> "sha256:39a8ad878df037cc5b21a97c834bf708e4b6fb8c6463617c9ff68ddb9991880f" [label=""];
  "sha256:39a8ad878df037cc5b21a97c834bf708e4b6fb8c6463617c9ff68ddb9991880f" -> "sha256:407aaf1727b5efa70f48d8c7b489e5063954cf6646250a1bd80efe305b84b9fb" [label=""];
  "sha256:407aaf1727b5efa70f48d8c7b489e5063954cf6646250a1bd80efe305b84b9fb" -> "sha256:c752a27a43b351b645433cb91e6a0690c3a45ba9ea9620a510ec576f85e6161b" [label=""];
}

