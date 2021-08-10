[app/sources/361031706.Dockerfile]
digraph {
  "sha256:25c31dbde35564492dba5a65dea8ea74515ba31a00f792d9a6db2ad8e44f34a7" [label="local://context" shape="ellipse"];
  "sha256:01487ad1b36263eb3749a1a0f53484e07e603ca47b697ec4d55f128fc47b44ad" [label="docker-image://docker.io/armv7/armhf-ubuntu:16.04" shape="ellipse"];
  "sha256:68a94a6497e630bf478c6eda350d76f7b9835cff64126d34639236846b94e866" [label="/bin/sh -c useradd -d /home/worker -s /bin/bash -m worker" shape="box"];
  "sha256:9e18cc4aa30c9c4ae65f5565b19a71c8951d79728d9058898ff88edf4b6d6ba5" [label="mkdir{path=/home/worker}" shape="note"];
  "sha256:5039e20ea313203c9aeb4af24c389bbd8e63b53d2c45a2e1a3f2fafed22b24d2" [label="copy{src=/bin, dest=/home/worker/bin}" shape="note"];
  "sha256:672d66788c2e39adf64cb8fd538f385ecb8e9f3b93d1f6c6f1b3e073a12ce8dc" [label="/bin/sh -c chmod +x /home/worker/bin/*" shape="box"];
  "sha256:1d69b896aad861cdde64bf8b2c47c79bfab3cd45892c5d35b6ad30cc1114981d" [label="copy{src=/setup.sh, dest=/tmp/setup.sh}" shape="note"];
  "sha256:65d39255bc83e53c0f1dec3398ad2a586d36a02539f2ed617bca5a83ba68f5fd" [label="/bin/sh -c bash /tmp/setup.sh" shape="box"];
  "sha256:2479397f81590534d589aa85e7c0f16b27615dba450f1640fcf9766d43d58047" [label="sha256:2479397f81590534d589aa85e7c0f16b27615dba450f1640fcf9766d43d58047" shape="plaintext"];
  "sha256:01487ad1b36263eb3749a1a0f53484e07e603ca47b697ec4d55f128fc47b44ad" -> "sha256:68a94a6497e630bf478c6eda350d76f7b9835cff64126d34639236846b94e866" [label=""];
  "sha256:68a94a6497e630bf478c6eda350d76f7b9835cff64126d34639236846b94e866" -> "sha256:9e18cc4aa30c9c4ae65f5565b19a71c8951d79728d9058898ff88edf4b6d6ba5" [label=""];
  "sha256:9e18cc4aa30c9c4ae65f5565b19a71c8951d79728d9058898ff88edf4b6d6ba5" -> "sha256:5039e20ea313203c9aeb4af24c389bbd8e63b53d2c45a2e1a3f2fafed22b24d2" [label=""];
  "sha256:25c31dbde35564492dba5a65dea8ea74515ba31a00f792d9a6db2ad8e44f34a7" -> "sha256:5039e20ea313203c9aeb4af24c389bbd8e63b53d2c45a2e1a3f2fafed22b24d2" [label=""];
  "sha256:5039e20ea313203c9aeb4af24c389bbd8e63b53d2c45a2e1a3f2fafed22b24d2" -> "sha256:672d66788c2e39adf64cb8fd538f385ecb8e9f3b93d1f6c6f1b3e073a12ce8dc" [label=""];
  "sha256:672d66788c2e39adf64cb8fd538f385ecb8e9f3b93d1f6c6f1b3e073a12ce8dc" -> "sha256:1d69b896aad861cdde64bf8b2c47c79bfab3cd45892c5d35b6ad30cc1114981d" [label=""];
  "sha256:25c31dbde35564492dba5a65dea8ea74515ba31a00f792d9a6db2ad8e44f34a7" -> "sha256:1d69b896aad861cdde64bf8b2c47c79bfab3cd45892c5d35b6ad30cc1114981d" [label=""];
  "sha256:1d69b896aad861cdde64bf8b2c47c79bfab3cd45892c5d35b6ad30cc1114981d" -> "sha256:65d39255bc83e53c0f1dec3398ad2a586d36a02539f2ed617bca5a83ba68f5fd" [label=""];
  "sha256:65d39255bc83e53c0f1dec3398ad2a586d36a02539f2ed617bca5a83ba68f5fd" -> "sha256:2479397f81590534d589aa85e7c0f16b27615dba450f1640fcf9766d43d58047" [label=""];
}

