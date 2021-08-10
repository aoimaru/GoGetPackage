[app/sources/283247420.Dockerfile]
digraph {
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" [label="docker-image://docker.io/library/openjdk:8-jdk" shape="ellipse"];
  "sha256:0de25b4ed2f09fb9e9b98f1209de2bdfa52bd1daee29410deeec9cb0d3a637a1" [label="local://context" shape="ellipse"];
  "sha256:112be549f0058e2f1fb976fac64d07c0556ef16fe4d397238d898a995dccfa50" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:31b495055858b90cf9cb1c2ca3564dd731db4df6831fdc13d6c8dbdb58bf623c" [label="/bin/sh -c mv openmessaging-benchmark-* /benchmark" shape="box"];
  "sha256:2944e4267a71e1a42bf22e4f97144f1ad694281c41125e72c9aa0d9322b28321" [label="mkdir{path=/benchmark}" shape="note"];
  "sha256:1d542d08a8f596b4f750e43fb1cfd02d89ed6fd5bbb0014337927f685ebf2bb4" [label="sha256:1d542d08a8f596b4f750e43fb1cfd02d89ed6fd5bbb0014337927f685ebf2bb4" shape="plaintext"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" -> "sha256:112be549f0058e2f1fb976fac64d07c0556ef16fe4d397238d898a995dccfa50" [label=""];
  "sha256:0de25b4ed2f09fb9e9b98f1209de2bdfa52bd1daee29410deeec9cb0d3a637a1" -> "sha256:112be549f0058e2f1fb976fac64d07c0556ef16fe4d397238d898a995dccfa50" [label=""];
  "sha256:112be549f0058e2f1fb976fac64d07c0556ef16fe4d397238d898a995dccfa50" -> "sha256:31b495055858b90cf9cb1c2ca3564dd731db4df6831fdc13d6c8dbdb58bf623c" [label=""];
  "sha256:31b495055858b90cf9cb1c2ca3564dd731db4df6831fdc13d6c8dbdb58bf623c" -> "sha256:2944e4267a71e1a42bf22e4f97144f1ad694281c41125e72c9aa0d9322b28321" [label=""];
  "sha256:2944e4267a71e1a42bf22e4f97144f1ad694281c41125e72c9aa0d9322b28321" -> "sha256:1d542d08a8f596b4f750e43fb1cfd02d89ed6fd5bbb0014337927f685ebf2bb4" [label=""];
}

