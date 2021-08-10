[app/sources/284583088.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:989ac7d0fb852a1bdee3e0e190e9e9087c94a7c169aa012c059a8c99967ec79c" [label="local://context" shape="ellipse"];
  "sha256:9fcdc7e45067c344f4c59f82ea3a50617c6c51d710c24da275aca927dd9956a9" [label="copy{src=/httpserver, dest=/}" shape="note"];
  "sha256:e38e9e14588c1eacb5ee6781cfd4a54d5ef0a6866d55752a9568c150c119fae1" [label="sha256:e38e9e14588c1eacb5ee6781cfd4a54d5ef0a6866d55752a9568c150c119fae1" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:9fcdc7e45067c344f4c59f82ea3a50617c6c51d710c24da275aca927dd9956a9" [label=""];
  "sha256:989ac7d0fb852a1bdee3e0e190e9e9087c94a7c169aa012c059a8c99967ec79c" -> "sha256:9fcdc7e45067c344f4c59f82ea3a50617c6c51d710c24da275aca927dd9956a9" [label=""];
  "sha256:9fcdc7e45067c344f4c59f82ea3a50617c6c51d710c24da275aca927dd9956a9" -> "sha256:e38e9e14588c1eacb5ee6781cfd4a54d5ef0a6866d55752a9568c150c119fae1" [label=""];
}

