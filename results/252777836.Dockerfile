[app/sources/252777836.Dockerfile]
digraph {
  "sha256:c4432c5dc91556ddfebcfc70c6767952b14ba1b81fe3e387918376d95cefa7be" [label="docker-image://docker.io/library/node:0.10.40" shape="ellipse"];
  "sha256:f767a2a06048c11c28a198261392b55e675ea73998f861e2bb3aa8a6c3983c72" [label="/bin/sh -c mkdir -p /opt/app" shape="box"];
  "sha256:732ebf35ea1212c9fe923a57f0918e7cbfa01514ff07e71ba3f4a620cb77a611" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:afa5686f5cc4eeb0b8ea0c11b30d08e58209a8ec32771b15f42f557250328d59" [label="local://context" shape="ellipse"];
  "sha256:8fb8df55b1ec28f0a4f7b660c2ef9852c5c003b8ba21c6e35218c709dce4e2b4" [label="copy{src=/, dest=/opt/app}" shape="note"];
  "sha256:c0cdaaf4eae23e5295aafefd0142b8790269f8bbfc0a0725d947cae0fff39597" [label="/bin/sh -c /usr/local/bin/npm install" shape="box"];
  "sha256:bb421edc5e5eb07aeb38afd6c4942a31621533cc0316a89471df1e7e5d61616e" [label="sha256:bb421edc5e5eb07aeb38afd6c4942a31621533cc0316a89471df1e7e5d61616e" shape="plaintext"];
  "sha256:c4432c5dc91556ddfebcfc70c6767952b14ba1b81fe3e387918376d95cefa7be" -> "sha256:f767a2a06048c11c28a198261392b55e675ea73998f861e2bb3aa8a6c3983c72" [label=""];
  "sha256:f767a2a06048c11c28a198261392b55e675ea73998f861e2bb3aa8a6c3983c72" -> "sha256:732ebf35ea1212c9fe923a57f0918e7cbfa01514ff07e71ba3f4a620cb77a611" [label=""];
  "sha256:732ebf35ea1212c9fe923a57f0918e7cbfa01514ff07e71ba3f4a620cb77a611" -> "sha256:8fb8df55b1ec28f0a4f7b660c2ef9852c5c003b8ba21c6e35218c709dce4e2b4" [label=""];
  "sha256:afa5686f5cc4eeb0b8ea0c11b30d08e58209a8ec32771b15f42f557250328d59" -> "sha256:8fb8df55b1ec28f0a4f7b660c2ef9852c5c003b8ba21c6e35218c709dce4e2b4" [label=""];
  "sha256:8fb8df55b1ec28f0a4f7b660c2ef9852c5c003b8ba21c6e35218c709dce4e2b4" -> "sha256:c0cdaaf4eae23e5295aafefd0142b8790269f8bbfc0a0725d947cae0fff39597" [label=""];
  "sha256:c0cdaaf4eae23e5295aafefd0142b8790269f8bbfc0a0725d947cae0fff39597" -> "sha256:bb421edc5e5eb07aeb38afd6c4942a31621533cc0316a89471df1e7e5d61616e" [label=""];
}

