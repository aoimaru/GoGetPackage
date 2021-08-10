[app/sources/252786020.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:b1bb5435c9c21a52e74578ed9a02d9f9e694e7730f5ed0e8a9c84a5a58f12e41" [label="/bin/sh -c apk upgrade \\--update-cache --available" shape="box"];
  "sha256:6a3d97d5a8842e854ca5de443a04a28ecf7688c48615091ab1058e458c511819" [label="/bin/sh -c apk add py2-pip=9.0.1-r1" shape="box"];
  "sha256:7f70f8edd1546dd156b43751ed6d939af363ac301132e83b55006a025c38134a" [label="/bin/sh -c umask 022 && pip install awscli==1.11.109" shape="box"];
  "sha256:90846cbf971b0096d22fb8a69e037475d1e73ba6c8ef4e052882165098ecbcf7" [label="sha256:90846cbf971b0096d22fb8a69e037475d1e73ba6c8ef4e052882165098ecbcf7" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:b1bb5435c9c21a52e74578ed9a02d9f9e694e7730f5ed0e8a9c84a5a58f12e41" [label=""];
  "sha256:b1bb5435c9c21a52e74578ed9a02d9f9e694e7730f5ed0e8a9c84a5a58f12e41" -> "sha256:6a3d97d5a8842e854ca5de443a04a28ecf7688c48615091ab1058e458c511819" [label=""];
  "sha256:6a3d97d5a8842e854ca5de443a04a28ecf7688c48615091ab1058e458c511819" -> "sha256:7f70f8edd1546dd156b43751ed6d939af363ac301132e83b55006a025c38134a" [label=""];
  "sha256:7f70f8edd1546dd156b43751ed6d939af363ac301132e83b55006a025c38134a" -> "sha256:90846cbf971b0096d22fb8a69e037475d1e73ba6c8ef4e052882165098ecbcf7" [label=""];
}

