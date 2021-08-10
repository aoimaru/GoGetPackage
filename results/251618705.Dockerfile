[app/sources/251618705.Dockerfile]
digraph {
  "sha256:f00f722e98b66be9feac3fe566ff41c692f17e9353a63440d275b98d826a0439" [label="docker-image://docker.io/clearlinux/os-core:latest" shape="ellipse"];
  "sha256:6f842b3f26962cc80120b439541e2e4e0578f84c4ab52d5112d8a8574a8b0cd5" [label="docker-image://docker.io/library/clearlinux:latest" shape="ellipse"];
  "sha256:d9db0edca059bbddb492d367d1ce9f9eaf1e987f898cd27b8e1c9cd3c806c189" [label="/bin/sh -c swupd update --no-boot-update $swupd_args" shape="box"];
  "sha256:59d496c75753217454e4136ee03b5b223a7e1e79b437b72339be16d3c4aa26e5" [label="copy{src=/usr/lib/os-release, dest=/}" shape="note"];
  "sha256:656082460d2f4033088dd338d3a2dadcaf9acc64529981a9e975b671cc8f5490" [label="/bin/sh -c source /os-release &&     mkdir /install_root     && swupd os-install -V ${VERSION_ID}     --path /install_root --statedir /swupd-state     --bundles=os-core-update,perl-extras --no-scripts" shape="box"];
  "sha256:6b4ccf8ba17a803c5662bbfc16101bf966034e547780aa8651981839d7103bde" [label="/bin/sh -c mkdir /os_core_install" shape="box"];
  "sha256:f50ccd1940758b1d247c3eb293d340727767d27526e58adb12a696bf5a4a824a" [label="copy{src=/, dest=/os_core_install/}" shape="note"];
  "sha256:dae4376a9cc7723f1857b60ce0029c6bebcbf5722d81f23a5919023e86a60783" [label="/bin/sh -c cd / &&     find os_core_install | sed -e 's/os_core_install/install_root/' | xargs rm -d || true" shape="box"];
  "sha256:fa91b695188c21bf6eaf338f0129a9430bca22a137f1f62732cdefd28df9496a" [label="copy{src=/install_root, dest=/}" shape="note"];
  "sha256:5fecc4619b5cd3106e927abe734e10f5fd3cfa3875a00d0c6c126cf578a06638" [label="mkdir{path=/root}" shape="note"];
  "sha256:1cbd8f548d6e1d35cf5adf0cde101998459d105a3472385ee2f70033d13b4357" [label="sha256:1cbd8f548d6e1d35cf5adf0cde101998459d105a3472385ee2f70033d13b4357" shape="plaintext"];
  "sha256:6f842b3f26962cc80120b439541e2e4e0578f84c4ab52d5112d8a8574a8b0cd5" -> "sha256:d9db0edca059bbddb492d367d1ce9f9eaf1e987f898cd27b8e1c9cd3c806c189" [label=""];
  "sha256:d9db0edca059bbddb492d367d1ce9f9eaf1e987f898cd27b8e1c9cd3c806c189" -> "sha256:59d496c75753217454e4136ee03b5b223a7e1e79b437b72339be16d3c4aa26e5" [label=""];
  "sha256:f00f722e98b66be9feac3fe566ff41c692f17e9353a63440d275b98d826a0439" -> "sha256:59d496c75753217454e4136ee03b5b223a7e1e79b437b72339be16d3c4aa26e5" [label=""];
  "sha256:59d496c75753217454e4136ee03b5b223a7e1e79b437b72339be16d3c4aa26e5" -> "sha256:656082460d2f4033088dd338d3a2dadcaf9acc64529981a9e975b671cc8f5490" [label=""];
  "sha256:656082460d2f4033088dd338d3a2dadcaf9acc64529981a9e975b671cc8f5490" -> "sha256:6b4ccf8ba17a803c5662bbfc16101bf966034e547780aa8651981839d7103bde" [label=""];
  "sha256:6b4ccf8ba17a803c5662bbfc16101bf966034e547780aa8651981839d7103bde" -> "sha256:f50ccd1940758b1d247c3eb293d340727767d27526e58adb12a696bf5a4a824a" [label=""];
  "sha256:f00f722e98b66be9feac3fe566ff41c692f17e9353a63440d275b98d826a0439" -> "sha256:f50ccd1940758b1d247c3eb293d340727767d27526e58adb12a696bf5a4a824a" [label=""];
  "sha256:f50ccd1940758b1d247c3eb293d340727767d27526e58adb12a696bf5a4a824a" -> "sha256:dae4376a9cc7723f1857b60ce0029c6bebcbf5722d81f23a5919023e86a60783" [label=""];
  "sha256:f00f722e98b66be9feac3fe566ff41c692f17e9353a63440d275b98d826a0439" -> "sha256:fa91b695188c21bf6eaf338f0129a9430bca22a137f1f62732cdefd28df9496a" [label=""];
  "sha256:dae4376a9cc7723f1857b60ce0029c6bebcbf5722d81f23a5919023e86a60783" -> "sha256:fa91b695188c21bf6eaf338f0129a9430bca22a137f1f62732cdefd28df9496a" [label=""];
  "sha256:fa91b695188c21bf6eaf338f0129a9430bca22a137f1f62732cdefd28df9496a" -> "sha256:5fecc4619b5cd3106e927abe734e10f5fd3cfa3875a00d0c6c126cf578a06638" [label=""];
  "sha256:5fecc4619b5cd3106e927abe734e10f5fd3cfa3875a00d0c6c126cf578a06638" -> "sha256:1cbd8f548d6e1d35cf5adf0cde101998459d105a3472385ee2f70033d13b4357" [label=""];
}

