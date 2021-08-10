[app/sources/307918969.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:f8acaa9652ba9b350ceb46d3c2b5a2e16007f16afaa33daa2f454cb53db5dfe4" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev libseccomp-dev pkg-config vim-common libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d786d9598b4fa897070fc7ef545692025c486368fdd2e1d03cb95258cf86c516" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:5f0cec71275b3a71d013acb43e75ea9dde3b9b901ad7d9c575f16690844ab01b" [label="sha256:5f0cec71275b3a71d013acb43e75ea9dde3b9b901ad7d9c575f16690844ab01b" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:f8acaa9652ba9b350ceb46d3c2b5a2e16007f16afaa33daa2f454cb53db5dfe4" [label=""];
  "sha256:f8acaa9652ba9b350ceb46d3c2b5a2e16007f16afaa33daa2f454cb53db5dfe4" -> "sha256:d786d9598b4fa897070fc7ef545692025c486368fdd2e1d03cb95258cf86c516" [label=""];
  "sha256:d786d9598b4fa897070fc7ef545692025c486368fdd2e1d03cb95258cf86c516" -> "sha256:5f0cec71275b3a71d013acb43e75ea9dde3b9b901ad7d9c575f16690844ab01b" [label=""];
}

