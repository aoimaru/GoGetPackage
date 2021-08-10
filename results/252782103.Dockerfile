[app/sources/252782103.Dockerfile]
digraph {
  "sha256:5d81a7558f0516d1c4f4dea976870c368db5fff2a6c7b2b5f905c2686dad375c" [label="local://context" shape="ellipse"];
  "sha256:0fc2061b5029799c39b93c743625782c473eddf378f52a0633b0412dc1e74048" [label="docker-image://docker.io/frolvlad/alpine-gcc:latest" shape="ellipse"];
  "sha256:e0f1feec7514eac465c0da89d88fc26e1bc0af00f7218f5c282bea803bab7574" [label="copy{src=/, dest=/cfg}" shape="note"];
  "sha256:4b9522cb7d8f5d49eb0131a0d4f29b5a5d4b0a7e12d657b5a908969ef09d6de3" [label="/bin/sh -c sh /cfg/build.sh" shape="box"];
  "sha256:a3ea255b193bda60c5a725cdd0065ff471cd5fcccc960583f6f64e82eac0a276" [label="sha256:a3ea255b193bda60c5a725cdd0065ff471cd5fcccc960583f6f64e82eac0a276" shape="plaintext"];
  "sha256:0fc2061b5029799c39b93c743625782c473eddf378f52a0633b0412dc1e74048" -> "sha256:e0f1feec7514eac465c0da89d88fc26e1bc0af00f7218f5c282bea803bab7574" [label=""];
  "sha256:5d81a7558f0516d1c4f4dea976870c368db5fff2a6c7b2b5f905c2686dad375c" -> "sha256:e0f1feec7514eac465c0da89d88fc26e1bc0af00f7218f5c282bea803bab7574" [label=""];
  "sha256:e0f1feec7514eac465c0da89d88fc26e1bc0af00f7218f5c282bea803bab7574" -> "sha256:4b9522cb7d8f5d49eb0131a0d4f29b5a5d4b0a7e12d657b5a908969ef09d6de3" [label=""];
  "sha256:4b9522cb7d8f5d49eb0131a0d4f29b5a5d4b0a7e12d657b5a908969ef09d6de3" -> "sha256:a3ea255b193bda60c5a725cdd0065ff471cd5fcccc960583f6f64e82eac0a276" [label=""];
}

