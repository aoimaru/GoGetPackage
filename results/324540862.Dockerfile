[app/sources/324540862.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:91927b465f88edf47caac2f11615a8bc221167d087822c696696acde716a202f" [label="local://context" shape="ellipse"];
  "sha256:2b56ee82485b97b197f3d78ac8f67f0b979b136c311f43497bbc15767935ced8" [label="copy{src=/tmp/_output/bin/kubedirector, dest=/root/kubedirector}" shape="note"];
  "sha256:3b36b112adb6f43617e43d27d6734d58892c95839b11cfba4792a44c4b76e667" [label="/bin/sh -c chmod +x /root/kubedirector" shape="box"];
  "sha256:88cadc8851f672cbb75f31e0116a3065dcd3aa0c9c5355982b55564710df15bc" [label="copy{src=/tmp/_output/configcli.tgz, dest=/root/configcli.tgz}" shape="note"];
  "sha256:2ac270efe0da89fa0285454fcc540aaa8bcef07d5ace0263f4e2f5cda22d2db7" [label="sha256:2ac270efe0da89fa0285454fcc540aaa8bcef07d5ace0263f4e2f5cda22d2db7" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:2b56ee82485b97b197f3d78ac8f67f0b979b136c311f43497bbc15767935ced8" [label=""];
  "sha256:91927b465f88edf47caac2f11615a8bc221167d087822c696696acde716a202f" -> "sha256:2b56ee82485b97b197f3d78ac8f67f0b979b136c311f43497bbc15767935ced8" [label=""];
  "sha256:2b56ee82485b97b197f3d78ac8f67f0b979b136c311f43497bbc15767935ced8" -> "sha256:3b36b112adb6f43617e43d27d6734d58892c95839b11cfba4792a44c4b76e667" [label=""];
  "sha256:3b36b112adb6f43617e43d27d6734d58892c95839b11cfba4792a44c4b76e667" -> "sha256:88cadc8851f672cbb75f31e0116a3065dcd3aa0c9c5355982b55564710df15bc" [label=""];
  "sha256:91927b465f88edf47caac2f11615a8bc221167d087822c696696acde716a202f" -> "sha256:88cadc8851f672cbb75f31e0116a3065dcd3aa0c9c5355982b55564710df15bc" [label=""];
  "sha256:88cadc8851f672cbb75f31e0116a3065dcd3aa0c9c5355982b55564710df15bc" -> "sha256:2ac270efe0da89fa0285454fcc540aaa8bcef07d5ace0263f4e2f5cda22d2db7" [label=""];
}

