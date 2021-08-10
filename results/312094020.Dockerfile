[app/sources/312094020.Dockerfile]
digraph {
  "sha256:7bc76fa9139846c4007a5eab91bd62165ba92ee1b772e37a9085126246db145d" [label="docker-image://docker.io/wearedevelopers/alpine-ml:v0.6" shape="ellipse"];
  "sha256:98d0261e2fd12f258f8010ed0c166b43d0f9baf6256c7073a31442063162aaec" [label="mkdir{path=/usr/local/bin}" shape="note"];
  "sha256:3885eacd4ec7ceae40ec3bc30c8ef653496076fa6678cd568ce75cd7bc7ed67f" [label="mkdir{path=/usr/local/engine}" shape="note"];
  "sha256:0be40fab6b6f4f434c707dcedf3b0fc44a2fe5a9e6abd582b9b26f52c785f1ec" [label="local://context" shape="ellipse"];
  "sha256:f9ccce100fb90be9f162b9302f436e2cb436f1cff133dac56ff925b0b00cb289" [label="copy{src=/requirements.txt, dest=/usr/local/engine/}" shape="note"];
  "sha256:503ecdaaad6237fb84cf937b77ec0f21d6e71c59e722fac8b7cb79c331b4b939" [label="/bin/sh -c apk update &&     apk --no-cache add libstdc++ openssl libressl-dev ca-certificates &&     apk --no-cache add --virtual builddeps g++ gfortran musl-dev lapack-dev gcc make &&     pip install -r requirements.txt &&     apk del builddeps     &&     rm -rf /root/.cache" shape="box"];
  "sha256:5db4954bf762744cdad2272bd8156040992e63412a0ede7dacafd2e41f98552c" [label="copy{src=/, dest=/usr/local/engine/}" shape="note"];
  "sha256:6c6533b595350f6c35c4fb47f3fb8674dee566224e1e6947ba2a69e425544cb7" [label="sha256:6c6533b595350f6c35c4fb47f3fb8674dee566224e1e6947ba2a69e425544cb7" shape="plaintext"];
  "sha256:7bc76fa9139846c4007a5eab91bd62165ba92ee1b772e37a9085126246db145d" -> "sha256:98d0261e2fd12f258f8010ed0c166b43d0f9baf6256c7073a31442063162aaec" [label=""];
  "sha256:98d0261e2fd12f258f8010ed0c166b43d0f9baf6256c7073a31442063162aaec" -> "sha256:3885eacd4ec7ceae40ec3bc30c8ef653496076fa6678cd568ce75cd7bc7ed67f" [label=""];
  "sha256:3885eacd4ec7ceae40ec3bc30c8ef653496076fa6678cd568ce75cd7bc7ed67f" -> "sha256:f9ccce100fb90be9f162b9302f436e2cb436f1cff133dac56ff925b0b00cb289" [label=""];
  "sha256:0be40fab6b6f4f434c707dcedf3b0fc44a2fe5a9e6abd582b9b26f52c785f1ec" -> "sha256:f9ccce100fb90be9f162b9302f436e2cb436f1cff133dac56ff925b0b00cb289" [label=""];
  "sha256:f9ccce100fb90be9f162b9302f436e2cb436f1cff133dac56ff925b0b00cb289" -> "sha256:503ecdaaad6237fb84cf937b77ec0f21d6e71c59e722fac8b7cb79c331b4b939" [label=""];
  "sha256:503ecdaaad6237fb84cf937b77ec0f21d6e71c59e722fac8b7cb79c331b4b939" -> "sha256:5db4954bf762744cdad2272bd8156040992e63412a0ede7dacafd2e41f98552c" [label=""];
  "sha256:0be40fab6b6f4f434c707dcedf3b0fc44a2fe5a9e6abd582b9b26f52c785f1ec" -> "sha256:5db4954bf762744cdad2272bd8156040992e63412a0ede7dacafd2e41f98552c" [label=""];
  "sha256:5db4954bf762744cdad2272bd8156040992e63412a0ede7dacafd2e41f98552c" -> "sha256:6c6533b595350f6c35c4fb47f3fb8674dee566224e1e6947ba2a69e425544cb7" [label=""];
}

