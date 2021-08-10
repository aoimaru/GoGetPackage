[app/sources/236128267.Dockerfile]
digraph {
  "sha256:a3276fe69ac7458d24e82562d80d405c37f8c34787d85f25183d27eb3030fcdf" [label="docker-image://docker.io/fffaraz/web/php7nginx:latest" shape="ellipse"];
  "sha256:5bea529422932e1b27ed8d5d6c1f2f7cf65cd9b99af1252b38735a39de88bd28" [label="local://context" shape="ellipse"];
  "sha256:46fd40faa7d67d1c648bd7d414c5894dbd7c3c6b917521e37ed151f21e244a1a" [label="copy{src=/script_*.sh, dest=/}" shape="note"];
  "sha256:e00d9da6ffd399727aac4e93602a0a5732df186087bc002e9d0103b5364d4435" [label="/bin/sh -c chown root:root /script_*.sh && chmod 540 /script_*.sh && sync && /script_init.sh" shape="box"];
  "sha256:3a902effb2e8513497a16e77a03ee6a855c002bc9e3a977ba69d5945b34f4d2a" [label="sha256:3a902effb2e8513497a16e77a03ee6a855c002bc9e3a977ba69d5945b34f4d2a" shape="plaintext"];
  "sha256:a3276fe69ac7458d24e82562d80d405c37f8c34787d85f25183d27eb3030fcdf" -> "sha256:46fd40faa7d67d1c648bd7d414c5894dbd7c3c6b917521e37ed151f21e244a1a" [label=""];
  "sha256:5bea529422932e1b27ed8d5d6c1f2f7cf65cd9b99af1252b38735a39de88bd28" -> "sha256:46fd40faa7d67d1c648bd7d414c5894dbd7c3c6b917521e37ed151f21e244a1a" [label=""];
  "sha256:46fd40faa7d67d1c648bd7d414c5894dbd7c3c6b917521e37ed151f21e244a1a" -> "sha256:e00d9da6ffd399727aac4e93602a0a5732df186087bc002e9d0103b5364d4435" [label=""];
  "sha256:e00d9da6ffd399727aac4e93602a0a5732df186087bc002e9d0103b5364d4435" -> "sha256:3a902effb2e8513497a16e77a03ee6a855c002bc9e3a977ba69d5945b34f4d2a" [label=""];
}

