[app/sources/477265629.Dockerfile]
digraph {
  "sha256:f5316ea388feb3ed0dd30ea7d4610f275cfdd4d41bdc4307eafac7981d5e7bd0" [label="docker-image://gcr.io/google_containers/hyperkube-amd64:v1.5.3@sha256:1c44cdd9526667e5b11b51151940824218a9ca97c6276f8f29830895907147cd" shape="ellipse"];
  "sha256:bf753a456482a2cefba1311e51a3b72c394984379c45e802a17d864cb8ff585e" [label="/bin/sh -c apt-get update && apt-get install -y make jq &&     cp /kubectl /usr/local/bin/kubectl &&     mkdir -p /opt/kube-yarn &&     apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:082ad0eefcba60e6afa2abfb79a0f2cd0de6211ed116c3d1a667c0a4f1c4cefe" [label="local://context" shape="ellipse"];
  "sha256:6309781b74ec883d2994eff2e8c5b2be89f2c9ed5c01e54cee7f59e97bdc627b" [label="copy{src=/, dest=/opt/kube-yarn/}" shape="note"];
  "sha256:67e7297e9927f1ab7b9989a0b3fd3e39f6cb283490bfa6a857d09e0c3c752f04" [label="mkdir{path=/opt/kube-yarn}" shape="note"];
  "sha256:263245d58ed70bb25c0beeeff440faa7f2d0a3d01e01a8935a315209788d38b1" [label="sha256:263245d58ed70bb25c0beeeff440faa7f2d0a3d01e01a8935a315209788d38b1" shape="plaintext"];
  "sha256:f5316ea388feb3ed0dd30ea7d4610f275cfdd4d41bdc4307eafac7981d5e7bd0" -> "sha256:bf753a456482a2cefba1311e51a3b72c394984379c45e802a17d864cb8ff585e" [label=""];
  "sha256:bf753a456482a2cefba1311e51a3b72c394984379c45e802a17d864cb8ff585e" -> "sha256:6309781b74ec883d2994eff2e8c5b2be89f2c9ed5c01e54cee7f59e97bdc627b" [label=""];
  "sha256:082ad0eefcba60e6afa2abfb79a0f2cd0de6211ed116c3d1a667c0a4f1c4cefe" -> "sha256:6309781b74ec883d2994eff2e8c5b2be89f2c9ed5c01e54cee7f59e97bdc627b" [label=""];
  "sha256:6309781b74ec883d2994eff2e8c5b2be89f2c9ed5c01e54cee7f59e97bdc627b" -> "sha256:67e7297e9927f1ab7b9989a0b3fd3e39f6cb283490bfa6a857d09e0c3c752f04" [label=""];
  "sha256:67e7297e9927f1ab7b9989a0b3fd3e39f6cb283490bfa6a857d09e0c3c752f04" -> "sha256:263245d58ed70bb25c0beeeff440faa7f2d0a3d01e01a8935a315209788d38b1" [label=""];
}

