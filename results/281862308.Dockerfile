[app/sources/281862308.Dockerfile]
digraph {
  "sha256:3c6d7f06c89deb698b27c13da371d4714d2abb1c1f5a59e6d0347fb1042d938b" [label="docker-image://docker.io/library/golang:1.12.5-alpine" shape="ellipse"];
  "sha256:c970d3ed90b39b64d3de50ffb4aa919cbd2eb782e9e2a572919272e9455cf52c" [label="mkdir{path=/secretless}" shape="note"];
  "sha256:d5f22ad57b1eff3d63ac32ca7cc350b16243a8913be72e964ea518b924d9e36c" [label="/bin/sh -c apk add -u curl                gcc                git                mercurial                musl-dev" shape="box"];
  "sha256:2f83c5bfbc19ea0de269d332ebd56ee63f19f6934c38cefb72c05f2314466c6f" [label="local://context" shape="ellipse"];
  "sha256:6da855266f3d20c71f7518104216c269d8dfba8cb26d5d832aa204673e3ca4fb" [label="copy{src=/go.mod, dest=/secretless/},copy{src=/go.sum, dest=/secretless/}" shape="note"];
  "sha256:5254c8873812bfac4356d4f19ff514d78237c49a35f2c34fcebb32fe1e243455" [label="/bin/sh -c go mod download" shape="box"];
  "sha256:aca28b3bc276ff4c424fdd698245ee52d3d45c197afeda89fa0f5717d9472324" [label="copy{src=/, dest=/secretless/}" shape="note"];
  "sha256:2f5b48fcdaeff5cd884ce61bd0023dde9312c675af8c56d529af4ad861078152" [label="sha256:2f5b48fcdaeff5cd884ce61bd0023dde9312c675af8c56d529af4ad861078152" shape="plaintext"];
  "sha256:3c6d7f06c89deb698b27c13da371d4714d2abb1c1f5a59e6d0347fb1042d938b" -> "sha256:c970d3ed90b39b64d3de50ffb4aa919cbd2eb782e9e2a572919272e9455cf52c" [label=""];
  "sha256:c970d3ed90b39b64d3de50ffb4aa919cbd2eb782e9e2a572919272e9455cf52c" -> "sha256:d5f22ad57b1eff3d63ac32ca7cc350b16243a8913be72e964ea518b924d9e36c" [label=""];
  "sha256:d5f22ad57b1eff3d63ac32ca7cc350b16243a8913be72e964ea518b924d9e36c" -> "sha256:6da855266f3d20c71f7518104216c269d8dfba8cb26d5d832aa204673e3ca4fb" [label=""];
  "sha256:2f83c5bfbc19ea0de269d332ebd56ee63f19f6934c38cefb72c05f2314466c6f" -> "sha256:6da855266f3d20c71f7518104216c269d8dfba8cb26d5d832aa204673e3ca4fb" [label=""];
  "sha256:6da855266f3d20c71f7518104216c269d8dfba8cb26d5d832aa204673e3ca4fb" -> "sha256:5254c8873812bfac4356d4f19ff514d78237c49a35f2c34fcebb32fe1e243455" [label=""];
  "sha256:5254c8873812bfac4356d4f19ff514d78237c49a35f2c34fcebb32fe1e243455" -> "sha256:aca28b3bc276ff4c424fdd698245ee52d3d45c197afeda89fa0f5717d9472324" [label=""];
  "sha256:2f83c5bfbc19ea0de269d332ebd56ee63f19f6934c38cefb72c05f2314466c6f" -> "sha256:aca28b3bc276ff4c424fdd698245ee52d3d45c197afeda89fa0f5717d9472324" [label=""];
  "sha256:aca28b3bc276ff4c424fdd698245ee52d3d45c197afeda89fa0f5717d9472324" -> "sha256:2f5b48fcdaeff5cd884ce61bd0023dde9312c675af8c56d529af4ad861078152" [label=""];
}

