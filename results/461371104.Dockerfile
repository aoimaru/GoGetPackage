[app/sources/461371104.Dockerfile]
digraph {
  "sha256:c61e76c1fa604c4a947beb90f9e79dc4a28729a98e81d34ec24dfb02e4cf09cd" [label="local://context" shape="ellipse"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" [label="mkdir{path=/app}" shape="note"];
  "sha256:7c27154d001182a892f7f839f6fd07c0f131d6385e52e2fb1f5af563288cb3d1" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:402c38368ec20d4dfda4698e1aea0038bfdec442cef9247238e182d05cdca1b8" [label="copy{src=/yarn.lock, dest=/app/}" shape="note"];
  "sha256:63916a6b5f29da332fc004ef7599ec125e218473dc7da62b753e37b185b258b4" [label="/bin/sh -c yarn" shape="box"];
  "sha256:28be75b9662454b686ba1cd6bba62c6f0f5feab6d86195fa7a400627890df36b" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:77d26a0f556a472a1a751fd2d3c430c2d2eaf7330e14a316528e9cf007f3f15c" [label="sha256:77d26a0f556a472a1a751fd2d3c430c2d2eaf7330e14a316528e9cf007f3f15c" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" [label=""];
  "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" -> "sha256:7c27154d001182a892f7f839f6fd07c0f131d6385e52e2fb1f5af563288cb3d1" [label=""];
  "sha256:c61e76c1fa604c4a947beb90f9e79dc4a28729a98e81d34ec24dfb02e4cf09cd" -> "sha256:7c27154d001182a892f7f839f6fd07c0f131d6385e52e2fb1f5af563288cb3d1" [label=""];
  "sha256:7c27154d001182a892f7f839f6fd07c0f131d6385e52e2fb1f5af563288cb3d1" -> "sha256:402c38368ec20d4dfda4698e1aea0038bfdec442cef9247238e182d05cdca1b8" [label=""];
  "sha256:c61e76c1fa604c4a947beb90f9e79dc4a28729a98e81d34ec24dfb02e4cf09cd" -> "sha256:402c38368ec20d4dfda4698e1aea0038bfdec442cef9247238e182d05cdca1b8" [label=""];
  "sha256:402c38368ec20d4dfda4698e1aea0038bfdec442cef9247238e182d05cdca1b8" -> "sha256:63916a6b5f29da332fc004ef7599ec125e218473dc7da62b753e37b185b258b4" [label=""];
  "sha256:63916a6b5f29da332fc004ef7599ec125e218473dc7da62b753e37b185b258b4" -> "sha256:28be75b9662454b686ba1cd6bba62c6f0f5feab6d86195fa7a400627890df36b" [label=""];
  "sha256:c61e76c1fa604c4a947beb90f9e79dc4a28729a98e81d34ec24dfb02e4cf09cd" -> "sha256:28be75b9662454b686ba1cd6bba62c6f0f5feab6d86195fa7a400627890df36b" [label=""];
  "sha256:28be75b9662454b686ba1cd6bba62c6f0f5feab6d86195fa7a400627890df36b" -> "sha256:77d26a0f556a472a1a751fd2d3c430c2d2eaf7330e14a316528e9cf007f3f15c" [label=""];
}

