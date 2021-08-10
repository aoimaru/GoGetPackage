[app/sources/290969113.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:ad0ce50418ab8c4ae06ef53b166f8c3f1d18dc6f552a5d2abbcfa06db0fa9ae7" [label="/bin/sh -c adduser  -h /var/github-summary  -D -u 1000  ghsum ghsum" shape="box"];
  "sha256:059ad02cf50d61ba816f72a6c07b7c1df954a31a945a44658008d1bfa69bd310" [label="mkdir{path=/var/github-summary}" shape="note"];
  "sha256:d230c5f28133bd24eb3e2ff0e3ac494cb7db4bc823f30eb39fdc7203f8ca8548" [label="docker-image://docker.io/library/maven:3.5.2-jdk-8-alpine" shape="ellipse"];
  "sha256:952d66eb273b2c6d48087dcc98edace75b7d685ccffe0e02981bd310f6fc756d" [label="mkdir{path=/app}" shape="note"];
  "sha256:b7b026e4222e350ab76c453625515bdafd1102dffdd52c7ebd5fe712cc9d45a9" [label="local://context" shape="ellipse"];
  "sha256:ee57a76915a0bac808a1398ff1abb5e06aaed4597346cd4e584d5dc051e7e6ae" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:76f32d08709f825bee943028f99b63afce06ec322d8e4e4a649d398ed4c3b16c" [label="/bin/sh -c mvn verify" shape="box"];
  "sha256:1a95fd54977d5a5713b00d5ba440ed866974a73f4d2d96e0697815d2f4b66b6a" [label="copy{src=/app/target/profile-summary-for-github-jar-with-dependencies.jar, dest=/var/github-summary/profile-summary-for-github.jar}" shape="note"];
  "sha256:ff204689ee0cfeb0afedfdfe9a7e69142153e304e8cf839cf90a20bcbcb87ed6" [label="sha256:ff204689ee0cfeb0afedfdfe9a7e69142153e304e8cf839cf90a20bcbcb87ed6" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:ad0ce50418ab8c4ae06ef53b166f8c3f1d18dc6f552a5d2abbcfa06db0fa9ae7" [label=""];
  "sha256:ad0ce50418ab8c4ae06ef53b166f8c3f1d18dc6f552a5d2abbcfa06db0fa9ae7" -> "sha256:059ad02cf50d61ba816f72a6c07b7c1df954a31a945a44658008d1bfa69bd310" [label=""];
  "sha256:d230c5f28133bd24eb3e2ff0e3ac494cb7db4bc823f30eb39fdc7203f8ca8548" -> "sha256:952d66eb273b2c6d48087dcc98edace75b7d685ccffe0e02981bd310f6fc756d" [label=""];
  "sha256:952d66eb273b2c6d48087dcc98edace75b7d685ccffe0e02981bd310f6fc756d" -> "sha256:ee57a76915a0bac808a1398ff1abb5e06aaed4597346cd4e584d5dc051e7e6ae" [label=""];
  "sha256:b7b026e4222e350ab76c453625515bdafd1102dffdd52c7ebd5fe712cc9d45a9" -> "sha256:ee57a76915a0bac808a1398ff1abb5e06aaed4597346cd4e584d5dc051e7e6ae" [label=""];
  "sha256:ee57a76915a0bac808a1398ff1abb5e06aaed4597346cd4e584d5dc051e7e6ae" -> "sha256:76f32d08709f825bee943028f99b63afce06ec322d8e4e4a649d398ed4c3b16c" [label=""];
  "sha256:059ad02cf50d61ba816f72a6c07b7c1df954a31a945a44658008d1bfa69bd310" -> "sha256:1a95fd54977d5a5713b00d5ba440ed866974a73f4d2d96e0697815d2f4b66b6a" [label=""];
  "sha256:76f32d08709f825bee943028f99b63afce06ec322d8e4e4a649d398ed4c3b16c" -> "sha256:1a95fd54977d5a5713b00d5ba440ed866974a73f4d2d96e0697815d2f4b66b6a" [label=""];
  "sha256:1a95fd54977d5a5713b00d5ba440ed866974a73f4d2d96e0697815d2f4b66b6a" -> "sha256:ff204689ee0cfeb0afedfdfe9a7e69142153e304e8cf839cf90a20bcbcb87ed6" [label=""];
}

