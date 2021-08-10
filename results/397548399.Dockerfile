[app/sources/397548399.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:db9d68b03fcffa1e2827c490b7287da8d709018a845e5ba7f883b8d9376829d7" [label="/bin/sh -c apt-get update       && apt-get install -y --no-install-recommends         tzdata         ca-certificates         unzip         zip       && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b33e44adcf34311ab2fa0d2a17fd254bdabd1d9181e31b6d073c00b89df72f01" [label="docker-image://docker.io/concourse/golang-builder:latest" shape="ellipse"];
  "sha256:8cb47e017a334d50336b7fb9a30f1cd32fdd272188b8e6e138199fcac4c90e7c" [label="local://context" shape="ellipse"];
  "sha256:864b909c4527a1ac8131321df709c9d63ebe9c7b5d35ebcd1d3a6e7390879353" [label="copy{src=/, dest=/go/src/github.com/concourse/s3-resource}" shape="note"];
  "sha256:006311ca84bc3ce71bb08cfb83e4f8e865344d6622b770562aca3080f9434da0" [label="/bin/sh -c go build -o /assets/in github.com/concourse/s3-resource/cmd/in" shape="box"];
  "sha256:b4c48210bc346735278d841a32caecc1395f40e77833f95b6a6c6606283574e9" [label="/bin/sh -c go build -o /assets/out github.com/concourse/s3-resource/cmd/out" shape="box"];
  "sha256:bee2d7228225978d98980b63df6cbe6ced4b1bb8476994a57e2c4d8e17fd321e" [label="/bin/sh -c go build -o /assets/check github.com/concourse/s3-resource/cmd/check" shape="box"];
  "sha256:5bac3e3ad0341b2bb6c7ce767504f12f4abfb14da3ba7c1e306c272ec96bdd54" [label="mkdir{path=/go/src/github.com/concourse/s3-resource}" shape="note"];
  "sha256:192a4864d184cb89cc96b777711861a9d34d5441bc14577cd362ee757f77196e" [label="/bin/sh -c set -e; for pkg in $(go list ./...); do \t\tgo test -o \"/tests/$(basename $pkg).test\" -c $pkg; \tdone" shape="box"];
  "sha256:2243a6b0dfd1a4f4b860ae827176dfc290cbc74d22c154423a1e695a1b327c94" [label="copy{src=/go/src/github.com/concourse/s3-resource/assets, dest=/opt/resource/}" shape="note"];
  "sha256:b3d99bde537ef4d694221fbc070194786934d75f651607cac32d36d36d4bc038" [label="/bin/sh -c chmod +x /opt/resource/*" shape="box"];
  "sha256:e99fe5a81f5bc824f1f6f942572d012eaf74119f6a5eb43ad2a837710dded1e2" [label="sha256:e99fe5a81f5bc824f1f6f942572d012eaf74119f6a5eb43ad2a837710dded1e2" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:db9d68b03fcffa1e2827c490b7287da8d709018a845e5ba7f883b8d9376829d7" [label=""];
  "sha256:b33e44adcf34311ab2fa0d2a17fd254bdabd1d9181e31b6d073c00b89df72f01" -> "sha256:864b909c4527a1ac8131321df709c9d63ebe9c7b5d35ebcd1d3a6e7390879353" [label=""];
  "sha256:8cb47e017a334d50336b7fb9a30f1cd32fdd272188b8e6e138199fcac4c90e7c" -> "sha256:864b909c4527a1ac8131321df709c9d63ebe9c7b5d35ebcd1d3a6e7390879353" [label=""];
  "sha256:864b909c4527a1ac8131321df709c9d63ebe9c7b5d35ebcd1d3a6e7390879353" -> "sha256:006311ca84bc3ce71bb08cfb83e4f8e865344d6622b770562aca3080f9434da0" [label=""];
  "sha256:006311ca84bc3ce71bb08cfb83e4f8e865344d6622b770562aca3080f9434da0" -> "sha256:b4c48210bc346735278d841a32caecc1395f40e77833f95b6a6c6606283574e9" [label=""];
  "sha256:b4c48210bc346735278d841a32caecc1395f40e77833f95b6a6c6606283574e9" -> "sha256:bee2d7228225978d98980b63df6cbe6ced4b1bb8476994a57e2c4d8e17fd321e" [label=""];
  "sha256:bee2d7228225978d98980b63df6cbe6ced4b1bb8476994a57e2c4d8e17fd321e" -> "sha256:5bac3e3ad0341b2bb6c7ce767504f12f4abfb14da3ba7c1e306c272ec96bdd54" [label=""];
  "sha256:5bac3e3ad0341b2bb6c7ce767504f12f4abfb14da3ba7c1e306c272ec96bdd54" -> "sha256:192a4864d184cb89cc96b777711861a9d34d5441bc14577cd362ee757f77196e" [label=""];
  "sha256:db9d68b03fcffa1e2827c490b7287da8d709018a845e5ba7f883b8d9376829d7" -> "sha256:2243a6b0dfd1a4f4b860ae827176dfc290cbc74d22c154423a1e695a1b327c94" [label=""];
  "sha256:192a4864d184cb89cc96b777711861a9d34d5441bc14577cd362ee757f77196e" -> "sha256:2243a6b0dfd1a4f4b860ae827176dfc290cbc74d22c154423a1e695a1b327c94" [label=""];
  "sha256:2243a6b0dfd1a4f4b860ae827176dfc290cbc74d22c154423a1e695a1b327c94" -> "sha256:b3d99bde537ef4d694221fbc070194786934d75f651607cac32d36d36d4bc038" [label=""];
  "sha256:b3d99bde537ef4d694221fbc070194786934d75f651607cac32d36d36d4bc038" -> "sha256:e99fe5a81f5bc824f1f6f942572d012eaf74119f6a5eb43ad2a837710dded1e2" [label=""];
}

