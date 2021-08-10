[app/sources/252777032.Dockerfile]
digraph {
  "sha256:c3e118d5c335506a85704557b34b3f125e5a134a592c7e791408e570e4c0af17" [label="docker-image://docker.io/cenote/xenial-base:latest" shape="ellipse"];
  "sha256:2b93c45ca7c112b1d9707844cef181330e5d4406d8257baac1cff14656d38eac" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends openjdk-9-jdk-headless && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:fa7990f5f57aff5d81e45981b99963aa8ca2f1e09b2a0485b54e5d53130b1280" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends ant maven && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:407a3643fd2231a456a549eb6795e017125034bfd4e95fa73219afcc341c513f" [label="sha256:407a3643fd2231a456a549eb6795e017125034bfd4e95fa73219afcc341c513f" shape="plaintext"];
  "sha256:c3e118d5c335506a85704557b34b3f125e5a134a592c7e791408e570e4c0af17" -> "sha256:2b93c45ca7c112b1d9707844cef181330e5d4406d8257baac1cff14656d38eac" [label=""];
  "sha256:2b93c45ca7c112b1d9707844cef181330e5d4406d8257baac1cff14656d38eac" -> "sha256:fa7990f5f57aff5d81e45981b99963aa8ca2f1e09b2a0485b54e5d53130b1280" [label=""];
  "sha256:fa7990f5f57aff5d81e45981b99963aa8ca2f1e09b2a0485b54e5d53130b1280" -> "sha256:407a3643fd2231a456a549eb6795e017125034bfd4e95fa73219afcc341c513f" [label=""];
}

