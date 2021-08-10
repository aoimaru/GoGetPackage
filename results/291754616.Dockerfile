[app/sources/291754616.Dockerfile]
digraph {
  "sha256:a6e5ba6182e77f66337e95c280336b2a5449df99986ceb16717743956144a6f4" [label="docker-image://docker.io/library/node:8.9.3" shape="ellipse"];
  "sha256:ec45222ba97b1168cc29c8762ceef439f5a3be33291663a3ae1b651dc5ca6bbf" [label="local://context" shape="ellipse"];
  "sha256:3ce56fb9451d400061880debd1e87c848a66621800680fe488362ffaae86a94d" [label="copy{src=/, dest=/home/disqus-proxy-server}" shape="note"];
  "sha256:b5664ea6c0e205898ef20a7bd2c99ecece3c8b3633a75660d7de5d241ac19086" [label="mkdir{path=/home/disqus-proxy-server}" shape="note"];
  "sha256:66212868cd0a6e9e67a396f37a85bcbc94894493ea5f8cd9049324590e268645" [label="/bin/sh -c npm install &&     npm install pm2 -g" shape="box"];
  "sha256:d9b93aaf56c1477769e030a8b59c740a3f3868471e8a0d45861e14f70adec62d" [label="sha256:d9b93aaf56c1477769e030a8b59c740a3f3868471e8a0d45861e14f70adec62d" shape="plaintext"];
  "sha256:a6e5ba6182e77f66337e95c280336b2a5449df99986ceb16717743956144a6f4" -> "sha256:3ce56fb9451d400061880debd1e87c848a66621800680fe488362ffaae86a94d" [label=""];
  "sha256:ec45222ba97b1168cc29c8762ceef439f5a3be33291663a3ae1b651dc5ca6bbf" -> "sha256:3ce56fb9451d400061880debd1e87c848a66621800680fe488362ffaae86a94d" [label=""];
  "sha256:3ce56fb9451d400061880debd1e87c848a66621800680fe488362ffaae86a94d" -> "sha256:b5664ea6c0e205898ef20a7bd2c99ecece3c8b3633a75660d7de5d241ac19086" [label=""];
  "sha256:b5664ea6c0e205898ef20a7bd2c99ecece3c8b3633a75660d7de5d241ac19086" -> "sha256:66212868cd0a6e9e67a396f37a85bcbc94894493ea5f8cd9049324590e268645" [label=""];
  "sha256:66212868cd0a6e9e67a396f37a85bcbc94894493ea5f8cd9049324590e268645" -> "sha256:d9b93aaf56c1477769e030a8b59c740a3f3868471e8a0d45861e14f70adec62d" [label=""];
}

