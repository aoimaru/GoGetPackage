[app/sources/177317794.Dockerfile]
digraph {
  "sha256:24d3472d81629cb259462c4f169fcd9de99e558641bfc643a043fc59c2f1b6f6" [label="docker-image://docker.io/library/nginx:1.10.1-alpine" shape="ellipse"];
  "sha256:516a6717a3036902a04faaa9a9a17d95fb541fefa7c01878120c16d58fb006cf" [label="local://context" shape="ellipse"];
  "sha256:fe5edf6736af0203e41fe82c5f2697d4a3206bbbd2b3d537a4747e4a45215a2b" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:43c5455d846d693be0cbd91b8c814f56eb049e8aad5f23bf74ded6d5f7a2024e" [label="/bin/sh -c chmod +x /start.sh" shape="box"];
  "sha256:c36e1f5179d9c09b67d1a283be4748d6377a2a7ed2c6f87984cd90b1f5f9b15d" [label="sha256:c36e1f5179d9c09b67d1a283be4748d6377a2a7ed2c6f87984cd90b1f5f9b15d" shape="plaintext"];
  "sha256:24d3472d81629cb259462c4f169fcd9de99e558641bfc643a043fc59c2f1b6f6" -> "sha256:fe5edf6736af0203e41fe82c5f2697d4a3206bbbd2b3d537a4747e4a45215a2b" [label=""];
  "sha256:516a6717a3036902a04faaa9a9a17d95fb541fefa7c01878120c16d58fb006cf" -> "sha256:fe5edf6736af0203e41fe82c5f2697d4a3206bbbd2b3d537a4747e4a45215a2b" [label=""];
  "sha256:fe5edf6736af0203e41fe82c5f2697d4a3206bbbd2b3d537a4747e4a45215a2b" -> "sha256:43c5455d846d693be0cbd91b8c814f56eb049e8aad5f23bf74ded6d5f7a2024e" [label=""];
  "sha256:43c5455d846d693be0cbd91b8c814f56eb049e8aad5f23bf74ded6d5f7a2024e" -> "sha256:c36e1f5179d9c09b67d1a283be4748d6377a2a7ed2c6f87984cd90b1f5f9b15d" [label=""];
}

