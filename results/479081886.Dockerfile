[app/sources/479081886.Dockerfile]
digraph {
  "sha256:14d3dfa3ecd7a5d0508623b1c915b562e88d2b0c16ba69cd661ef0979e1bf07a" [label="docker-image://docker.io/microsoft/aspnetcore:2.0-jessie" shape="ellipse"];
  "sha256:f33efabcbb24b183f8ebbaa90c67076361f3e970127fee9859fb6e0b2ffaaeeb" [label="mkdir{path=/app}" shape="note"];
  "sha256:b59e58972463d0c143c7de4a555fd40330538370bacf3947e7661040e7cedfc5" [label="local://context" shape="ellipse"];
  "sha256:4ec74155f7c44acf1ecf6d8c7473d374f2cba66594f7d92a1120ae4ed44e0e60" [label="copy{src=/obj/Docker/publish, dest=/app/}" shape="note"];
  "sha256:ca77d6c396fecb0dd2b6f0dd6838569e832a5312f25fbcb2386ac006424cf9b1" [label="sha256:ca77d6c396fecb0dd2b6f0dd6838569e832a5312f25fbcb2386ac006424cf9b1" shape="plaintext"];
  "sha256:14d3dfa3ecd7a5d0508623b1c915b562e88d2b0c16ba69cd661ef0979e1bf07a" -> "sha256:f33efabcbb24b183f8ebbaa90c67076361f3e970127fee9859fb6e0b2ffaaeeb" [label=""];
  "sha256:f33efabcbb24b183f8ebbaa90c67076361f3e970127fee9859fb6e0b2ffaaeeb" -> "sha256:4ec74155f7c44acf1ecf6d8c7473d374f2cba66594f7d92a1120ae4ed44e0e60" [label=""];
  "sha256:b59e58972463d0c143c7de4a555fd40330538370bacf3947e7661040e7cedfc5" -> "sha256:4ec74155f7c44acf1ecf6d8c7473d374f2cba66594f7d92a1120ae4ed44e0e60" [label=""];
  "sha256:4ec74155f7c44acf1ecf6d8c7473d374f2cba66594f7d92a1120ae4ed44e0e60" -> "sha256:ca77d6c396fecb0dd2b6f0dd6838569e832a5312f25fbcb2386ac006424cf9b1" [label=""];
}

