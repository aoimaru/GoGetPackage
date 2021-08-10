[app/sources/202622576.Dockerfile]
digraph {
  "sha256:4690ab629aa3ce1f43c103d40e7b6ae344123959b323b59d62fd2c6e09bff706" [label="local://context" shape="ellipse"];
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" [label="docker-image://docker.io/library/node:argon" shape="ellipse"];
  "sha256:65345f6cc3e99fbbe476c7ae6a3fcb539d4cb73316ce02f9232974d0778033dd" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:89ab4e8ce8bb6d3b45815405971de93ff4e7db36ca73a767f5cc3172831c389a" [label="copy{src=/public, dest=/app/public}" shape="note"];
  "sha256:6c99be59d601640da5f84aca936ff24117ea35d1a055a3ab5ecc4fbe6b8199aa" [label="copy{src=/src, dest=/app/src}" shape="note"];
  "sha256:7f61cf114fa95a4fb50eefea39d2fff84b30315e5c878e0039b94d6b3f98b08d" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:1dcc759fac49b0e8a71f4bc28cb73398734f3fa7eacfa7e50c05aa6c3c8f7a67" [label="copy{src=/server.js, dest=/app/server.js}" shape="note"];
  "sha256:fd56e2a52927b60380a4e8cafabe3141b60bb6c8d04ec213dc8d6a098497d512" [label="mkdir{path=/app}" shape="note"];
  "sha256:7afb72f91824ca9b6913a5574fc4dce5896ea612e1139317b74ef1482f899280" [label="/bin/sh -c npm install" shape="box"];
  "sha256:e9c0054adbb32eb4dd1fb5aabb0a80f216c3b47b013f6f0d134c6a36ce60c45f" [label="sha256:e9c0054adbb32eb4dd1fb5aabb0a80f216c3b47b013f6f0d134c6a36ce60c45f" shape="plaintext"];
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" -> "sha256:65345f6cc3e99fbbe476c7ae6a3fcb539d4cb73316ce02f9232974d0778033dd" [label=""];
  "sha256:65345f6cc3e99fbbe476c7ae6a3fcb539d4cb73316ce02f9232974d0778033dd" -> "sha256:89ab4e8ce8bb6d3b45815405971de93ff4e7db36ca73a767f5cc3172831c389a" [label=""];
  "sha256:4690ab629aa3ce1f43c103d40e7b6ae344123959b323b59d62fd2c6e09bff706" -> "sha256:89ab4e8ce8bb6d3b45815405971de93ff4e7db36ca73a767f5cc3172831c389a" [label=""];
  "sha256:89ab4e8ce8bb6d3b45815405971de93ff4e7db36ca73a767f5cc3172831c389a" -> "sha256:6c99be59d601640da5f84aca936ff24117ea35d1a055a3ab5ecc4fbe6b8199aa" [label=""];
  "sha256:4690ab629aa3ce1f43c103d40e7b6ae344123959b323b59d62fd2c6e09bff706" -> "sha256:6c99be59d601640da5f84aca936ff24117ea35d1a055a3ab5ecc4fbe6b8199aa" [label=""];
  "sha256:6c99be59d601640da5f84aca936ff24117ea35d1a055a3ab5ecc4fbe6b8199aa" -> "sha256:7f61cf114fa95a4fb50eefea39d2fff84b30315e5c878e0039b94d6b3f98b08d" [label=""];
  "sha256:4690ab629aa3ce1f43c103d40e7b6ae344123959b323b59d62fd2c6e09bff706" -> "sha256:7f61cf114fa95a4fb50eefea39d2fff84b30315e5c878e0039b94d6b3f98b08d" [label=""];
  "sha256:7f61cf114fa95a4fb50eefea39d2fff84b30315e5c878e0039b94d6b3f98b08d" -> "sha256:1dcc759fac49b0e8a71f4bc28cb73398734f3fa7eacfa7e50c05aa6c3c8f7a67" [label=""];
  "sha256:4690ab629aa3ce1f43c103d40e7b6ae344123959b323b59d62fd2c6e09bff706" -> "sha256:1dcc759fac49b0e8a71f4bc28cb73398734f3fa7eacfa7e50c05aa6c3c8f7a67" [label=""];
  "sha256:1dcc759fac49b0e8a71f4bc28cb73398734f3fa7eacfa7e50c05aa6c3c8f7a67" -> "sha256:fd56e2a52927b60380a4e8cafabe3141b60bb6c8d04ec213dc8d6a098497d512" [label=""];
  "sha256:fd56e2a52927b60380a4e8cafabe3141b60bb6c8d04ec213dc8d6a098497d512" -> "sha256:7afb72f91824ca9b6913a5574fc4dce5896ea612e1139317b74ef1482f899280" [label=""];
  "sha256:7afb72f91824ca9b6913a5574fc4dce5896ea612e1139317b74ef1482f899280" -> "sha256:e9c0054adbb32eb4dd1fb5aabb0a80f216c3b47b013f6f0d134c6a36ce60c45f" [label=""];
}

