[app/sources/278078088.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:a5441419a27c3cf2ff4c886f85625d3b58917b85ea9d64111d3f16125896fb1e" [label="/bin/sh -c apk add --no-cache git make" shape="box"];
  "sha256:4e8f315a8589f9971c462fc04f2fed90a866bc0a9f6680038a7a04075ac11d12" [label="mkdir{path=/src}" shape="note"];
  "sha256:95e3db5d5a096361970e50d360a9d860360f4b3143198b3cc4f0bde0ba515c33" [label="local://context" shape="ellipse"];
  "sha256:0ea80ad66bc0df069e55f8c0be72c9671622687e02df8e46f3089da361d491bc" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:f8867ad5d12ed57f89c7eddd1e27f40293595de48ce696549603e771001a1410" [label="/bin/sh -c make doh-server/doh-server" shape="box"];
  "sha256:ebcf3899b74868f35e9c324022197022dd59427eb451745a6aa86a67b69b855a" [label="copy{src=/src/doh-server/doh-server, dest=/doh-server}" shape="note"];
  "sha256:cf2c702511c84755c917abb6808edd536eefdf3d03d05430391e9e34ed73077c" [label="copy{src=/doh-server/doh-server.conf, dest=/doh-server.conf}" shape="note"];
  "sha256:6cdf543a340bc446a0aacfa557916cb5c45dade1133e94f22cb8b8757759b1c7" [label="/bin/sh -c sed -i '$!N;s/\"127.0.0.1:8053\",\\s*\"\\[::1\\]:8053\",/\":8053\",/;P;D' /doh-server.conf" shape="box"];
  "sha256:2a96faf1ea869cfec15482258483ed2a025f4be7442e4c34704109ec8492391a" [label="sha256:2a96faf1ea869cfec15482258483ed2a025f4be7442e4c34704109ec8492391a" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:a5441419a27c3cf2ff4c886f85625d3b58917b85ea9d64111d3f16125896fb1e" [label=""];
  "sha256:a5441419a27c3cf2ff4c886f85625d3b58917b85ea9d64111d3f16125896fb1e" -> "sha256:4e8f315a8589f9971c462fc04f2fed90a866bc0a9f6680038a7a04075ac11d12" [label=""];
  "sha256:4e8f315a8589f9971c462fc04f2fed90a866bc0a9f6680038a7a04075ac11d12" -> "sha256:0ea80ad66bc0df069e55f8c0be72c9671622687e02df8e46f3089da361d491bc" [label=""];
  "sha256:95e3db5d5a096361970e50d360a9d860360f4b3143198b3cc4f0bde0ba515c33" -> "sha256:0ea80ad66bc0df069e55f8c0be72c9671622687e02df8e46f3089da361d491bc" [label=""];
  "sha256:0ea80ad66bc0df069e55f8c0be72c9671622687e02df8e46f3089da361d491bc" -> "sha256:f8867ad5d12ed57f89c7eddd1e27f40293595de48ce696549603e771001a1410" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:ebcf3899b74868f35e9c324022197022dd59427eb451745a6aa86a67b69b855a" [label=""];
  "sha256:f8867ad5d12ed57f89c7eddd1e27f40293595de48ce696549603e771001a1410" -> "sha256:ebcf3899b74868f35e9c324022197022dd59427eb451745a6aa86a67b69b855a" [label=""];
  "sha256:ebcf3899b74868f35e9c324022197022dd59427eb451745a6aa86a67b69b855a" -> "sha256:cf2c702511c84755c917abb6808edd536eefdf3d03d05430391e9e34ed73077c" [label=""];
  "sha256:95e3db5d5a096361970e50d360a9d860360f4b3143198b3cc4f0bde0ba515c33" -> "sha256:cf2c702511c84755c917abb6808edd536eefdf3d03d05430391e9e34ed73077c" [label=""];
  "sha256:cf2c702511c84755c917abb6808edd536eefdf3d03d05430391e9e34ed73077c" -> "sha256:6cdf543a340bc446a0aacfa557916cb5c45dade1133e94f22cb8b8757759b1c7" [label=""];
  "sha256:6cdf543a340bc446a0aacfa557916cb5c45dade1133e94f22cb8b8757759b1c7" -> "sha256:2a96faf1ea869cfec15482258483ed2a025f4be7442e4c34704109ec8492391a" [label=""];
}

