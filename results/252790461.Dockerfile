[app/sources/252790461.Dockerfile]
digraph {
  "sha256:4231e3382d340d6845f7aaaa1d0a20624a185162b83af0383b2e1117ba7f62cb" [label="docker-image://docker.io/ethereum/client-go:v1.7.1@sha256:83620623b66e59feefae0b0926ec1c1a139b61f7fe6c33c99ae4a517921d78ad" shape="ellipse"];
  "sha256:6156abe685e26ec9eae2564e393fd0b35366690d3ed29c1ade6e9bb869dbbfbb" [label="local://context" shape="ellipse"];
  "sha256:3d3d721ac7f2785d3d63ca6523d082ce023d98b786bd3db7f22e3d867d3ec74a" [label="copy{src=/start.sh, dest=/}" shape="note"];
  "sha256:36b24e2217e3d00985e11733c9f243e8995fbb42bf01404545afb68508603360" [label="copy{src=/config.toml, dest=/}" shape="note"];
  "sha256:d4218777bf375d6b213ffbb46b70ac2e2eb3cf79162a25f44a23b7ff0a4831ca" [label="/bin/sh -c chmod a+rx /start.sh" shape="box"];
  "sha256:8f64f544e7a7ede35f6bc80e0d34c046b72faac5023b8014d02f0d3b2fc643ff" [label="sha256:8f64f544e7a7ede35f6bc80e0d34c046b72faac5023b8014d02f0d3b2fc643ff" shape="plaintext"];
  "sha256:4231e3382d340d6845f7aaaa1d0a20624a185162b83af0383b2e1117ba7f62cb" -> "sha256:3d3d721ac7f2785d3d63ca6523d082ce023d98b786bd3db7f22e3d867d3ec74a" [label=""];
  "sha256:6156abe685e26ec9eae2564e393fd0b35366690d3ed29c1ade6e9bb869dbbfbb" -> "sha256:3d3d721ac7f2785d3d63ca6523d082ce023d98b786bd3db7f22e3d867d3ec74a" [label=""];
  "sha256:3d3d721ac7f2785d3d63ca6523d082ce023d98b786bd3db7f22e3d867d3ec74a" -> "sha256:36b24e2217e3d00985e11733c9f243e8995fbb42bf01404545afb68508603360" [label=""];
  "sha256:6156abe685e26ec9eae2564e393fd0b35366690d3ed29c1ade6e9bb869dbbfbb" -> "sha256:36b24e2217e3d00985e11733c9f243e8995fbb42bf01404545afb68508603360" [label=""];
  "sha256:36b24e2217e3d00985e11733c9f243e8995fbb42bf01404545afb68508603360" -> "sha256:d4218777bf375d6b213ffbb46b70ac2e2eb3cf79162a25f44a23b7ff0a4831ca" [label=""];
  "sha256:d4218777bf375d6b213ffbb46b70ac2e2eb3cf79162a25f44a23b7ff0a4831ca" -> "sha256:8f64f544e7a7ede35f6bc80e0d34c046b72faac5023b8014d02f0d3b2fc643ff" [label=""];
}

