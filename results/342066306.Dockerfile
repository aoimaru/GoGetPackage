[app/sources/342066306.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:28c270fa927b3ad3c866cdbed0b0f69cf1df81a6f063c9c4eaba195b922f5453" [label="local://context" shape="ellipse"];
  "sha256:7876509da69ad1086ef69cae74510d0145b2ddd8ed918255159e8752bb36acfa" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:fa1e0102ec16faf5e099f73d14f16bebbbcbe4a075146713fc55e67936aaf56e" [label="pip install watchdog" shape="box"];
  "sha256:3485499313e6e7cd050ead37bfaefc8ce2bd2fa745d712f494b3c75477ac8df7" [label="pip install watchdog" shape="box"];
  "sha256:eed8a9281f48da3cf15a63b6216c122215e7fef5a17e238fbc91b15137911c31" [label="sha256:eed8a9281f48da3cf15a63b6216c122215e7fef5a17e238fbc91b15137911c31" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:7876509da69ad1086ef69cae74510d0145b2ddd8ed918255159e8752bb36acfa" [label=""];
  "sha256:28c270fa927b3ad3c866cdbed0b0f69cf1df81a6f063c9c4eaba195b922f5453" -> "sha256:7876509da69ad1086ef69cae74510d0145b2ddd8ed918255159e8752bb36acfa" [label=""];
  "sha256:7876509da69ad1086ef69cae74510d0145b2ddd8ed918255159e8752bb36acfa" -> "sha256:fa1e0102ec16faf5e099f73d14f16bebbbcbe4a075146713fc55e67936aaf56e" [label=""];
  "sha256:fa1e0102ec16faf5e099f73d14f16bebbbcbe4a075146713fc55e67936aaf56e" -> "sha256:3485499313e6e7cd050ead37bfaefc8ce2bd2fa745d712f494b3c75477ac8df7" [label=""];
  "sha256:3485499313e6e7cd050ead37bfaefc8ce2bd2fa745d712f494b3c75477ac8df7" -> "sha256:eed8a9281f48da3cf15a63b6216c122215e7fef5a17e238fbc91b15137911c31" [label=""];
}

