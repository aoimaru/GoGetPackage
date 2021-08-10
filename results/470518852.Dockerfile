[app/sources/470518852.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label="/bin/sh -c apk update" shape="box"];
  "sha256:312d5ded8b67f92997bc0d28d3a9e232be9e8642662bf6f973de21ad88d78216" [label="/bin/sh -c apk add -v iptables sudo" shape="box"];
  "sha256:2334b45be9acef156d543cb7d93baa851eb3dd4d54ad45dccc6a1be6b48fcb4a" [label="local://context" shape="ellipse"];
  "sha256:96faed2e65894be0df76fe45990edbc0d9cbf7e5adf8c701c68d565fe956d236" [label="copy{src=/bin/etcd-agent, dest=/}" shape="note"];
  "sha256:b3ece5cd60359a1e5dd20dd283c56dc377e9472a28814adc44d4b8006e0da238" [label="copy{src=/bin/etcd, dest=/}" shape="note"];
  "sha256:daa6152634a1e988c66ff9b189c079312b7bfdb0fc3572b2bc25d9f02823e98f" [label="copy{src=/bin/etcd-tester, dest=/}" shape="note"];
  "sha256:f3bbaadc7d25b96e553be313ddd9f1cd7ee81e315c60617f0891876826f8c1e2" [label="/bin/sh -c mkdir /failure_archive" shape="box"];
  "sha256:ec6f050b7cb98d06db7bcd1214483eabbb409c18f3f90c4c160934e938c8e64f" [label="sha256:ec6f050b7cb98d06db7bcd1214483eabbb409c18f3f90c4c160934e938c8e64f" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label=""];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" -> "sha256:312d5ded8b67f92997bc0d28d3a9e232be9e8642662bf6f973de21ad88d78216" [label=""];
  "sha256:312d5ded8b67f92997bc0d28d3a9e232be9e8642662bf6f973de21ad88d78216" -> "sha256:96faed2e65894be0df76fe45990edbc0d9cbf7e5adf8c701c68d565fe956d236" [label=""];
  "sha256:2334b45be9acef156d543cb7d93baa851eb3dd4d54ad45dccc6a1be6b48fcb4a" -> "sha256:96faed2e65894be0df76fe45990edbc0d9cbf7e5adf8c701c68d565fe956d236" [label=""];
  "sha256:96faed2e65894be0df76fe45990edbc0d9cbf7e5adf8c701c68d565fe956d236" -> "sha256:b3ece5cd60359a1e5dd20dd283c56dc377e9472a28814adc44d4b8006e0da238" [label=""];
  "sha256:2334b45be9acef156d543cb7d93baa851eb3dd4d54ad45dccc6a1be6b48fcb4a" -> "sha256:b3ece5cd60359a1e5dd20dd283c56dc377e9472a28814adc44d4b8006e0da238" [label=""];
  "sha256:b3ece5cd60359a1e5dd20dd283c56dc377e9472a28814adc44d4b8006e0da238" -> "sha256:daa6152634a1e988c66ff9b189c079312b7bfdb0fc3572b2bc25d9f02823e98f" [label=""];
  "sha256:2334b45be9acef156d543cb7d93baa851eb3dd4d54ad45dccc6a1be6b48fcb4a" -> "sha256:daa6152634a1e988c66ff9b189c079312b7bfdb0fc3572b2bc25d9f02823e98f" [label=""];
  "sha256:daa6152634a1e988c66ff9b189c079312b7bfdb0fc3572b2bc25d9f02823e98f" -> "sha256:f3bbaadc7d25b96e553be313ddd9f1cd7ee81e315c60617f0891876826f8c1e2" [label=""];
  "sha256:f3bbaadc7d25b96e553be313ddd9f1cd7ee81e315c60617f0891876826f8c1e2" -> "sha256:ec6f050b7cb98d06db7bcd1214483eabbb409c18f3f90c4c160934e938c8e64f" [label=""];
}

