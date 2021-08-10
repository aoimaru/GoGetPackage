[app/sources/468489955.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:752946bed353a5268c4950cb92e5739513e5ea5b6b690fa3aa67690147cfaf01" [label="mkdir{path=/root}" shape="note"];
  "sha256:341431261c8559bb25441fabd833436958a824aaf48a40cfd69877edbe4402ce" [label="docker-image://docker.io/library/golang:1.10.3" shape="ellipse"];
  "sha256:ed218ae3e636dc7f5fd29428a7979fbba3b5e204e20896b29612f1f7a2f0f7cc" [label="mkdir{path=/go/src/sigs.k8s.io/controller-tools/test}" shape="note"];
  "sha256:f3566be67c6352a57ec66a2b3bbedc223d912324e4b181bf4d9b6a0966b052a5" [label="local://context" shape="ellipse"];
  "sha256:95193092b9e5514cdea03abb2f456d4c31eb755bd95e52076c76551725ee5e27" [label="copy{src=/pkg, dest=/go/src/sigs.k8s.io/controller-tools/test/pkg/}" shape="note"];
  "sha256:946e004d69799ade7ea64a6164989b7f1d10c59f730a4245a924e44e96431ca5" [label="copy{src=/cmd, dest=/go/src/sigs.k8s.io/controller-tools/test/cmd/}" shape="note"];
  "sha256:64ad870be9d9be7da283acf76db99f0d5e83547cdccdf843c09fa45811100a2e" [label="copy{src=/vendor, dest=/go/src/sigs.k8s.io/controller-tools/test/vendor/}" shape="note"];
  "sha256:444049bc8c76e974d76e2ae706ab6f50e0e50707be0b9b632da7ede9d77bfbdc" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o manager sigs.k8s.io/controller-tools/test/cmd/manager" shape="box"];
  "sha256:9f9f267337936c6f881d6d64119e5c0c1a94f2a32bb4bd8ca6fa94e9f90d4074" [label="copy{src=/go/src/sigs.k8s.io/controller-tools/test/manager, dest=/root/}" shape="note"];
  "sha256:9ceafb1a5fe8eb8ae8c32ef54761b6cdd665c758f4784b041d898fb2891be534" [label="sha256:9ceafb1a5fe8eb8ae8c32ef54761b6cdd665c758f4784b041d898fb2891be534" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:752946bed353a5268c4950cb92e5739513e5ea5b6b690fa3aa67690147cfaf01" [label=""];
  "sha256:341431261c8559bb25441fabd833436958a824aaf48a40cfd69877edbe4402ce" -> "sha256:ed218ae3e636dc7f5fd29428a7979fbba3b5e204e20896b29612f1f7a2f0f7cc" [label=""];
  "sha256:ed218ae3e636dc7f5fd29428a7979fbba3b5e204e20896b29612f1f7a2f0f7cc" -> "sha256:95193092b9e5514cdea03abb2f456d4c31eb755bd95e52076c76551725ee5e27" [label=""];
  "sha256:f3566be67c6352a57ec66a2b3bbedc223d912324e4b181bf4d9b6a0966b052a5" -> "sha256:95193092b9e5514cdea03abb2f456d4c31eb755bd95e52076c76551725ee5e27" [label=""];
  "sha256:95193092b9e5514cdea03abb2f456d4c31eb755bd95e52076c76551725ee5e27" -> "sha256:946e004d69799ade7ea64a6164989b7f1d10c59f730a4245a924e44e96431ca5" [label=""];
  "sha256:f3566be67c6352a57ec66a2b3bbedc223d912324e4b181bf4d9b6a0966b052a5" -> "sha256:946e004d69799ade7ea64a6164989b7f1d10c59f730a4245a924e44e96431ca5" [label=""];
  "sha256:946e004d69799ade7ea64a6164989b7f1d10c59f730a4245a924e44e96431ca5" -> "sha256:64ad870be9d9be7da283acf76db99f0d5e83547cdccdf843c09fa45811100a2e" [label=""];
  "sha256:f3566be67c6352a57ec66a2b3bbedc223d912324e4b181bf4d9b6a0966b052a5" -> "sha256:64ad870be9d9be7da283acf76db99f0d5e83547cdccdf843c09fa45811100a2e" [label=""];
  "sha256:64ad870be9d9be7da283acf76db99f0d5e83547cdccdf843c09fa45811100a2e" -> "sha256:444049bc8c76e974d76e2ae706ab6f50e0e50707be0b9b632da7ede9d77bfbdc" [label=""];
  "sha256:752946bed353a5268c4950cb92e5739513e5ea5b6b690fa3aa67690147cfaf01" -> "sha256:9f9f267337936c6f881d6d64119e5c0c1a94f2a32bb4bd8ca6fa94e9f90d4074" [label=""];
  "sha256:444049bc8c76e974d76e2ae706ab6f50e0e50707be0b9b632da7ede9d77bfbdc" -> "sha256:9f9f267337936c6f881d6d64119e5c0c1a94f2a32bb4bd8ca6fa94e9f90d4074" [label=""];
  "sha256:9f9f267337936c6f881d6d64119e5c0c1a94f2a32bb4bd8ca6fa94e9f90d4074" -> "sha256:9ceafb1a5fe8eb8ae8c32ef54761b6cdd665c758f4784b041d898fb2891be534" [label=""];
}

