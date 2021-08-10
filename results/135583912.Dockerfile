[app/sources/135583912.Dockerfile]
digraph {
  "sha256:13fe184a2936a81a30a69ae30eabe40fe64fec146b75a4f3a12fc1f5ce616423" [label="docker-image://docker.io/library/httpd:2.4.29" shape="ellipse"];
  "sha256:dc0639e48c7f272d0bdb98e87090cc018d27a4a9b2ad2368f282bb99c0a80e70" [label="/bin/sh -c apt-get update -y &&     apt-get install -y curl dos2unix &&     apt-get autoremove --purge -y &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c85d3f70eeadf5c8bd6c5420645c4e2fe129914bd95e01cecbcd963c355e9811" [label="sha256:c85d3f70eeadf5c8bd6c5420645c4e2fe129914bd95e01cecbcd963c355e9811" shape="plaintext"];
  "sha256:13fe184a2936a81a30a69ae30eabe40fe64fec146b75a4f3a12fc1f5ce616423" -> "sha256:dc0639e48c7f272d0bdb98e87090cc018d27a4a9b2ad2368f282bb99c0a80e70" [label=""];
  "sha256:dc0639e48c7f272d0bdb98e87090cc018d27a4a9b2ad2368f282bb99c0a80e70" -> "sha256:c85d3f70eeadf5c8bd6c5420645c4e2fe129914bd95e01cecbcd963c355e9811" [label=""];
}

