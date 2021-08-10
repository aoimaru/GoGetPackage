[app/sources/252790714.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:b9d534e0f449c29d0477e3866b2861eede68546ed1f0e81d337f37e7baeb5843" [label="/bin/sh -c sudo apt-get update" shape="box"];
  "sha256:4aef8866bc3e4e0f2a2944e1eaa4e49baa196dee4532ed79eac9e56437d2a304" [label="/bin/sh -c sudo apt-get install -y git" shape="box"];
  "sha256:7fc5071a7c35a93c047c39331a19902748e90a00c7b5ca18726741ce234996d6" [label="sha256:7fc5071a7c35a93c047c39331a19902748e90a00c7b5ca18726741ce234996d6" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:b9d534e0f449c29d0477e3866b2861eede68546ed1f0e81d337f37e7baeb5843" [label=""];
  "sha256:b9d534e0f449c29d0477e3866b2861eede68546ed1f0e81d337f37e7baeb5843" -> "sha256:4aef8866bc3e4e0f2a2944e1eaa4e49baa196dee4532ed79eac9e56437d2a304" [label=""];
  "sha256:4aef8866bc3e4e0f2a2944e1eaa4e49baa196dee4532ed79eac9e56437d2a304" -> "sha256:7fc5071a7c35a93c047c39331a19902748e90a00c7b5ca18726741ce234996d6" [label=""];
}

