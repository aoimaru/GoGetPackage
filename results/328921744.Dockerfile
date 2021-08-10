[app/sources/328921744.Dockerfile]
digraph {
  "sha256:13ae81c9434774ac05447878c3d7df69d2e6a1c4417e0c39759c5caad5ba6bcb" [label="docker-image://docker.io/library/python:3-alpine@sha256:853365cd7245aec1580879933f2c5ea1a45c1ceb868c05480a58cba443ffb1e5" shape="ellipse"];
  "sha256:e7a686ae20952b6a5f8e628c11c26968440efbc60471628cf065e8af870bd78d" [label="/bin/sh -c apk add --no-cache gcc python3-dev musl-dev" shape="box"];
  "sha256:1819a76a9e79f734fdb62b8d4ce67d66f8a78f05b9629152d4b6bc911a7a29ae" [label="local://context" shape="ellipse"];
  "sha256:bebb7fed98b7c811a501b76c07f79c3739c44ca7566543a0ed8cb9917dc45902" [label="copy{src=/app, dest=/usr/local/web}" shape="note"];
  "sha256:da53888035e7fc7af58ed3698d3c97e2778ae9d23a0a151027163298be8cdf00" [label="/bin/sh -c pip install -r /usr/local/web/requirements.txt" shape="box"];
  "sha256:7a43e3d7edfbf33548c7dcb4d51ff4ec7a797eef63dadb678504f867656f2293" [label="copy{src=/ca.naum.crt, dest=/etc/ssl/ca.naum.crt}" shape="note"];
  "sha256:ac34b833c78fae091783089eca1e8bdbe5d0c753c6e0532e5ff1cea96b94304d" [label="mkdir{path=/usr/local}" shape="note"];
  "sha256:115c2a703666202caa1175fed47e13a44d597b3f7f08376a06e945e212e9b8b2" [label="sha256:115c2a703666202caa1175fed47e13a44d597b3f7f08376a06e945e212e9b8b2" shape="plaintext"];
  "sha256:13ae81c9434774ac05447878c3d7df69d2e6a1c4417e0c39759c5caad5ba6bcb" -> "sha256:e7a686ae20952b6a5f8e628c11c26968440efbc60471628cf065e8af870bd78d" [label=""];
  "sha256:e7a686ae20952b6a5f8e628c11c26968440efbc60471628cf065e8af870bd78d" -> "sha256:bebb7fed98b7c811a501b76c07f79c3739c44ca7566543a0ed8cb9917dc45902" [label=""];
  "sha256:1819a76a9e79f734fdb62b8d4ce67d66f8a78f05b9629152d4b6bc911a7a29ae" -> "sha256:bebb7fed98b7c811a501b76c07f79c3739c44ca7566543a0ed8cb9917dc45902" [label=""];
  "sha256:bebb7fed98b7c811a501b76c07f79c3739c44ca7566543a0ed8cb9917dc45902" -> "sha256:da53888035e7fc7af58ed3698d3c97e2778ae9d23a0a151027163298be8cdf00" [label=""];
  "sha256:da53888035e7fc7af58ed3698d3c97e2778ae9d23a0a151027163298be8cdf00" -> "sha256:7a43e3d7edfbf33548c7dcb4d51ff4ec7a797eef63dadb678504f867656f2293" [label=""];
  "sha256:1819a76a9e79f734fdb62b8d4ce67d66f8a78f05b9629152d4b6bc911a7a29ae" -> "sha256:7a43e3d7edfbf33548c7dcb4d51ff4ec7a797eef63dadb678504f867656f2293" [label=""];
  "sha256:7a43e3d7edfbf33548c7dcb4d51ff4ec7a797eef63dadb678504f867656f2293" -> "sha256:ac34b833c78fae091783089eca1e8bdbe5d0c753c6e0532e5ff1cea96b94304d" [label=""];
  "sha256:ac34b833c78fae091783089eca1e8bdbe5d0c753c6e0532e5ff1cea96b94304d" -> "sha256:115c2a703666202caa1175fed47e13a44d597b3f7f08376a06e945e212e9b8b2" [label=""];
}

