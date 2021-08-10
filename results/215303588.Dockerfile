[app/sources/215303588.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:7784bbf35b17f30f155d6e7886e949fd180bae31ee149b387cb1fa66b0a69aa0" [label="/bin/sh -c apt-get update && apt-get install -y openjdk-7-jdk build-essential git curl unzip nodejs vim python gyp" shape="box"];
  "sha256:245737c817cdb262e0b8da973b602a0f8e15c9190f8249e3c1d1460bbcaca5a2" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -" shape="box"];
  "sha256:1b5a29bfd221e1656a26bb646d71885753f04f73111b5563890679f34230e21d" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:f4d8ea313f8b0b5531107581f9bc6f1df05673dbda3f3a53e0239df7c7d005e5" [label="/bin/sh -c npm install -g npm" shape="box"];
  "sha256:3afb908a6e9cec6b16300368de63bd9b744102ec4a6a0db3887f9fbbc0022f14" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:2531db36e709ad92ce8ac95c9f0d5c40242a5b6309fcbc93fa936a8e412e5430" [label="/bin/sh -c useradd -ms /bin/bash foo" shape="box"];
  "sha256:bbf6f0efb553933cd6cf67b610610e35b4c920db68c1780af38526d2ff09fe43" [label="mkdir{path=/home/foo}" shape="note"];
  "sha256:0926283335c212e3a962c40f841d6c4c4228ffbf9276f4c8a09afbb0b0f5c78c" [label="/bin/sh -c git clone https://github.com/lucidsoftware/closure-typescript-example.git" shape="box"];
  "sha256:fcb78cc70fa3fde379afe6109e5c5f55cb0f28d4805c40fdea16807fedebf318" [label="/bin/sh -c cd closure-typescript-example && make all -j 8" shape="box"];
  "sha256:47133ac906d542cb2b78ece7e6b290620cb1316d5bb3e4f05aa83e2f1d2d60b8" [label="sha256:47133ac906d542cb2b78ece7e6b290620cb1316d5bb3e4f05aa83e2f1d2d60b8" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:7784bbf35b17f30f155d6e7886e949fd180bae31ee149b387cb1fa66b0a69aa0" [label=""];
  "sha256:7784bbf35b17f30f155d6e7886e949fd180bae31ee149b387cb1fa66b0a69aa0" -> "sha256:245737c817cdb262e0b8da973b602a0f8e15c9190f8249e3c1d1460bbcaca5a2" [label=""];
  "sha256:245737c817cdb262e0b8da973b602a0f8e15c9190f8249e3c1d1460bbcaca5a2" -> "sha256:1b5a29bfd221e1656a26bb646d71885753f04f73111b5563890679f34230e21d" [label=""];
  "sha256:1b5a29bfd221e1656a26bb646d71885753f04f73111b5563890679f34230e21d" -> "sha256:f4d8ea313f8b0b5531107581f9bc6f1df05673dbda3f3a53e0239df7c7d005e5" [label=""];
  "sha256:f4d8ea313f8b0b5531107581f9bc6f1df05673dbda3f3a53e0239df7c7d005e5" -> "sha256:3afb908a6e9cec6b16300368de63bd9b744102ec4a6a0db3887f9fbbc0022f14" [label=""];
  "sha256:3afb908a6e9cec6b16300368de63bd9b744102ec4a6a0db3887f9fbbc0022f14" -> "sha256:2531db36e709ad92ce8ac95c9f0d5c40242a5b6309fcbc93fa936a8e412e5430" [label=""];
  "sha256:2531db36e709ad92ce8ac95c9f0d5c40242a5b6309fcbc93fa936a8e412e5430" -> "sha256:bbf6f0efb553933cd6cf67b610610e35b4c920db68c1780af38526d2ff09fe43" [label=""];
  "sha256:bbf6f0efb553933cd6cf67b610610e35b4c920db68c1780af38526d2ff09fe43" -> "sha256:0926283335c212e3a962c40f841d6c4c4228ffbf9276f4c8a09afbb0b0f5c78c" [label=""];
  "sha256:0926283335c212e3a962c40f841d6c4c4228ffbf9276f4c8a09afbb0b0f5c78c" -> "sha256:fcb78cc70fa3fde379afe6109e5c5f55cb0f28d4805c40fdea16807fedebf318" [label=""];
  "sha256:fcb78cc70fa3fde379afe6109e5c5f55cb0f28d4805c40fdea16807fedebf318" -> "sha256:47133ac906d542cb2b78ece7e6b290620cb1316d5bb3e4f05aa83e2f1d2d60b8" [label=""];
}

