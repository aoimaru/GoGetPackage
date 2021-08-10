[app/sources/194834801.Dockerfile]
digraph {
  "sha256:b8026cece649bc966c668ef62dd7ac580da60bf9c953e0c9f8eaf4ced6d6e18c" [label="docker-image://docker.io/alleninstitute/anaconda_neuron_1370:latest" shape="ellipse"];
  "sha256:7ca9d39bd5bfcb3a67df2636c85dd2ad8215c48e3ba48391553744ecb6705a16" [label="local://context" shape="ellipse"];
  "sha256:de3f1cf27917cb8215752a9ac22e7b1006d69d0f990d6800a0705bb05f152315" [label="copy{src=/, dest=/allensdk/}" shape="note"];
  "sha256:54eb7053f98969bfd93781b7e0a762d0f150c0f159bba6aef7bbd72b767fd88e" [label="/bin/sh -c pip install ./allensdk" shape="box"];
  "sha256:d6da94227b7c09f346e43cb2a1b70598c7b547a7a84e87e5643f423f69fd1d65" [label="sha256:d6da94227b7c09f346e43cb2a1b70598c7b547a7a84e87e5643f423f69fd1d65" shape="plaintext"];
  "sha256:b8026cece649bc966c668ef62dd7ac580da60bf9c953e0c9f8eaf4ced6d6e18c" -> "sha256:de3f1cf27917cb8215752a9ac22e7b1006d69d0f990d6800a0705bb05f152315" [label=""];
  "sha256:7ca9d39bd5bfcb3a67df2636c85dd2ad8215c48e3ba48391553744ecb6705a16" -> "sha256:de3f1cf27917cb8215752a9ac22e7b1006d69d0f990d6800a0705bb05f152315" [label=""];
  "sha256:de3f1cf27917cb8215752a9ac22e7b1006d69d0f990d6800a0705bb05f152315" -> "sha256:54eb7053f98969bfd93781b7e0a762d0f150c0f159bba6aef7bbd72b767fd88e" [label=""];
  "sha256:54eb7053f98969bfd93781b7e0a762d0f150c0f159bba6aef7bbd72b767fd88e" -> "sha256:d6da94227b7c09f346e43cb2a1b70598c7b547a7a84e87e5643f423f69fd1d65" [label=""];
}

