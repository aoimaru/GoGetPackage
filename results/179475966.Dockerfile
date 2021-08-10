[app/sources/179475966.Dockerfile]
digraph {
  "sha256:ae7e6e7e561065e1b3497dd046af14f9f43e659f99e6f5c81a29177c07804ebe" [label="docker-image://docker.io/library/node:4.2" shape="ellipse"];
  "sha256:42aef243ac8666cf8eb0e3ae38c930599c54d3913ead130e24a82f5a9e8dafb9" [label="/bin/sh -c npm install -g gulp@3.8.10 bower@1.3.12 node-sass@3.4.2" shape="box"];
  "sha256:253f0c1ce04526b72b6b19c9e1d6820e7f111920a79a79893663986204c4c7bd" [label="mkdir{path=/code}" shape="note"];
  "sha256:983bf418182d2a2dff32813c5ee264dc4c68032075b4e614f6b1324f4b3ae631" [label="local://context" shape="ellipse"];
  "sha256:3ea02c335aa4f2a17877eb7265ad201083dd50041a841939de291efe1ac16338" [label="copy{src=/run, dest=/usr/local/bin/run}" shape="note"];
  "sha256:9afa160ffc635895c8b8465778f28a26070a9bb725df2f3099af21fc25611c8b" [label="/bin/sh -c chmod +x /usr/local/bin/run" shape="box"];
  "sha256:11c8e87ab6fe7246e4a839bb19e1a27190b0cd5135b9b2a272c1ca05e4b9032c" [label="sha256:11c8e87ab6fe7246e4a839bb19e1a27190b0cd5135b9b2a272c1ca05e4b9032c" shape="plaintext"];
  "sha256:ae7e6e7e561065e1b3497dd046af14f9f43e659f99e6f5c81a29177c07804ebe" -> "sha256:42aef243ac8666cf8eb0e3ae38c930599c54d3913ead130e24a82f5a9e8dafb9" [label=""];
  "sha256:42aef243ac8666cf8eb0e3ae38c930599c54d3913ead130e24a82f5a9e8dafb9" -> "sha256:253f0c1ce04526b72b6b19c9e1d6820e7f111920a79a79893663986204c4c7bd" [label=""];
  "sha256:253f0c1ce04526b72b6b19c9e1d6820e7f111920a79a79893663986204c4c7bd" -> "sha256:3ea02c335aa4f2a17877eb7265ad201083dd50041a841939de291efe1ac16338" [label=""];
  "sha256:983bf418182d2a2dff32813c5ee264dc4c68032075b4e614f6b1324f4b3ae631" -> "sha256:3ea02c335aa4f2a17877eb7265ad201083dd50041a841939de291efe1ac16338" [label=""];
  "sha256:3ea02c335aa4f2a17877eb7265ad201083dd50041a841939de291efe1ac16338" -> "sha256:9afa160ffc635895c8b8465778f28a26070a9bb725df2f3099af21fc25611c8b" [label=""];
  "sha256:9afa160ffc635895c8b8465778f28a26070a9bb725df2f3099af21fc25611c8b" -> "sha256:11c8e87ab6fe7246e4a839bb19e1a27190b0cd5135b9b2a272c1ca05e4b9032c" [label=""];
}

