[app/sources/319416881.Dockerfile]
digraph {
  "sha256:8d6fd6ed4dc45cf1ce5e9134a6f9b7ed2723c48e159e0bee9b3dec780a189b3c" [label="docker-image://gcr.io/distroless/static:latest@sha256:c9320b754c2fa2cd2dea50993195f104a24f4c7ebe6e0297c6ddb40ce3679e7d" shape="ellipse"];
  "sha256:a857cf65881c15053cb8839e10c222fd58c5d8831e6628eaec128f7f05dfc035" [label="local://context" shape="ellipse"];
  "sha256:dba2c96310622fd28c7830eff7d24c8e717b5e5330e6be8851334ec5956ed275" [label="docker-image://docker.io/library/golang:1.12.5" shape="ellipse"];
  "sha256:2072f823e5cf8eb696e0f0d92e8e2e4eefdbe9e9f43bab2b1296b18544823d9b" [label="mkdir{path=/src/sigs.k8s.io/cluster-api}" shape="note"];
  "sha256:05ac8234b05a07c3a5ca7fa775f860bddf2fac274ab1df6cab86ff087793aa9b" [label="copy{src=/pkg, dest=/src/sigs.k8s.io/cluster-api/pkg/}" shape="note"];
  "sha256:1aff32d878a5f7e3e93fca7bf8d12acbea7a1c014b58d5ba2780941e56d38878" [label="copy{src=/cmd, dest=/src/sigs.k8s.io/cluster-api/cmd/}" shape="note"];
  "sha256:88af8ece79959ec8eacecf4a0587e2876c0e85b9a0da6d2bafb7100061cec1aa" [label="copy{src=/vendor, dest=/src/sigs.k8s.io/cluster-api/vendor/}" shape="note"];
  "sha256:61bcfcfd3571367fd5fc4e22dce52043325fb6ba713b39c8168f4cb2c28c1706" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -ldflags '-extldflags \"-static\"' -o manager sigs.k8s.io/cluster-api/cmd/manager" shape="box"];
  "sha256:5f68014a1e40cc319a220f3f286ee6091451118687fdc21092d3ff083312ea52" [label="copy{src=/go/src/sigs.k8s.io/cluster-api/manager, dest=/}" shape="note"];
  "sha256:1187e7c2263fd6936be1a8f6c9b5a32b87bafcf277a1fbbcb5c1cb5e1e938620" [label="sha256:1187e7c2263fd6936be1a8f6c9b5a32b87bafcf277a1fbbcb5c1cb5e1e938620" shape="plaintext"];
  "sha256:dba2c96310622fd28c7830eff7d24c8e717b5e5330e6be8851334ec5956ed275" -> "sha256:2072f823e5cf8eb696e0f0d92e8e2e4eefdbe9e9f43bab2b1296b18544823d9b" [label=""];
  "sha256:2072f823e5cf8eb696e0f0d92e8e2e4eefdbe9e9f43bab2b1296b18544823d9b" -> "sha256:05ac8234b05a07c3a5ca7fa775f860bddf2fac274ab1df6cab86ff087793aa9b" [label=""];
  "sha256:a857cf65881c15053cb8839e10c222fd58c5d8831e6628eaec128f7f05dfc035" -> "sha256:05ac8234b05a07c3a5ca7fa775f860bddf2fac274ab1df6cab86ff087793aa9b" [label=""];
  "sha256:05ac8234b05a07c3a5ca7fa775f860bddf2fac274ab1df6cab86ff087793aa9b" -> "sha256:1aff32d878a5f7e3e93fca7bf8d12acbea7a1c014b58d5ba2780941e56d38878" [label=""];
  "sha256:a857cf65881c15053cb8839e10c222fd58c5d8831e6628eaec128f7f05dfc035" -> "sha256:1aff32d878a5f7e3e93fca7bf8d12acbea7a1c014b58d5ba2780941e56d38878" [label=""];
  "sha256:1aff32d878a5f7e3e93fca7bf8d12acbea7a1c014b58d5ba2780941e56d38878" -> "sha256:88af8ece79959ec8eacecf4a0587e2876c0e85b9a0da6d2bafb7100061cec1aa" [label=""];
  "sha256:a857cf65881c15053cb8839e10c222fd58c5d8831e6628eaec128f7f05dfc035" -> "sha256:88af8ece79959ec8eacecf4a0587e2876c0e85b9a0da6d2bafb7100061cec1aa" [label=""];
  "sha256:88af8ece79959ec8eacecf4a0587e2876c0e85b9a0da6d2bafb7100061cec1aa" -> "sha256:61bcfcfd3571367fd5fc4e22dce52043325fb6ba713b39c8168f4cb2c28c1706" [label=""];
  "sha256:8d6fd6ed4dc45cf1ce5e9134a6f9b7ed2723c48e159e0bee9b3dec780a189b3c" -> "sha256:5f68014a1e40cc319a220f3f286ee6091451118687fdc21092d3ff083312ea52" [label=""];
  "sha256:61bcfcfd3571367fd5fc4e22dce52043325fb6ba713b39c8168f4cb2c28c1706" -> "sha256:5f68014a1e40cc319a220f3f286ee6091451118687fdc21092d3ff083312ea52" [label=""];
  "sha256:5f68014a1e40cc319a220f3f286ee6091451118687fdc21092d3ff083312ea52" -> "sha256:1187e7c2263fd6936be1a8f6c9b5a32b87bafcf277a1fbbcb5c1cb5e1e938620" [label=""];
}

