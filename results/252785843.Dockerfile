[app/sources/252785843.Dockerfile]
digraph {
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" [label="docker-image://docker.io/library/node:0.10" shape="ellipse"];
  "sha256:dfaf33e39dd339a8c813052373693c41fe9af0ec480a2df148da35d8efc9f166" [label="local://context" shape="ellipse"];
  "sha256:4739bff14ded0873d2eb7d2746e9bcbfac69443f6ac022e8a2b82747136b876b" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:48b04946f216f24dbe1129cce80fa0f347c28d8743eb8b77117ee30f22a3dda2" [label="mkdir{path=/app}" shape="note"];
  "sha256:22e1fff075eb1a778b55132989d9ec102f8204bddd769e6956f36f0917f9a34c" [label="/bin/sh -c npm install" shape="box"];
  "sha256:135b53ba5a93b19c2ce75770b63997318b56da551501f97dd940056d49c831b7" [label="sha256:135b53ba5a93b19c2ce75770b63997318b56da551501f97dd940056d49c831b7" shape="plaintext"];
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" -> "sha256:4739bff14ded0873d2eb7d2746e9bcbfac69443f6ac022e8a2b82747136b876b" [label=""];
  "sha256:dfaf33e39dd339a8c813052373693c41fe9af0ec480a2df148da35d8efc9f166" -> "sha256:4739bff14ded0873d2eb7d2746e9bcbfac69443f6ac022e8a2b82747136b876b" [label=""];
  "sha256:4739bff14ded0873d2eb7d2746e9bcbfac69443f6ac022e8a2b82747136b876b" -> "sha256:48b04946f216f24dbe1129cce80fa0f347c28d8743eb8b77117ee30f22a3dda2" [label=""];
  "sha256:48b04946f216f24dbe1129cce80fa0f347c28d8743eb8b77117ee30f22a3dda2" -> "sha256:22e1fff075eb1a778b55132989d9ec102f8204bddd769e6956f36f0917f9a34c" [label=""];
  "sha256:22e1fff075eb1a778b55132989d9ec102f8204bddd769e6956f36f0917f9a34c" -> "sha256:135b53ba5a93b19c2ce75770b63997318b56da551501f97dd940056d49c831b7" [label=""];
}

