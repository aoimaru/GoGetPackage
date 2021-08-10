[app/sources/482305835.Dockerfile]
digraph {
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" [label="docker-image://docker.io/library/python:2.7-alpine" shape="ellipse"];
  "sha256:09c60ac75c7dd31d63958a1e21ea39549037aef357c3b59bb3adde4f976067e1" [label="mkdir{path=/app}" shape="note"];
  "sha256:0444d299d5717768ac16c6a93dcb092e1eae36b3bb81a8a2200eaa183636cc1a" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:c329c24ca852a89fbf407fc857d2c59b8863b81dbcdbdd25ec3a3971853f8f35" [label="local://context" shape="ellipse"];
  "sha256:ecdeb637c2baab0ab6c7ca6779c5dd3beed1819fb3a2943a23c992483ccfb702" [label="copy{src=/requirements.txt, dest=/app/}" shape="note"];
  "sha256:dd499b8f0098010df76e50310868ab61f072f27931d7044459528e987d068aff" [label="/bin/sh -c apk add --no-cache build-base git curl-dev openssl-dev  && PYCURL_SSL_LIBRARY=openssl pip install --no-cache-dir -r requirements.txt  && apk del build-base" shape="box"];
  "sha256:b04bb458f3ac58f9b654ea13e59cd277909e8fa3fca78cb8777571a9d0536ec6" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:d4617c247aa3924609914444e316303d8fc8def21e80bf92a6a08efb86e41924" [label="sha256:d4617c247aa3924609914444e316303d8fc8def21e80bf92a6a08efb86e41924" shape="plaintext"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" -> "sha256:09c60ac75c7dd31d63958a1e21ea39549037aef357c3b59bb3adde4f976067e1" [label=""];
  "sha256:09c60ac75c7dd31d63958a1e21ea39549037aef357c3b59bb3adde4f976067e1" -> "sha256:0444d299d5717768ac16c6a93dcb092e1eae36b3bb81a8a2200eaa183636cc1a" [label=""];
  "sha256:0444d299d5717768ac16c6a93dcb092e1eae36b3bb81a8a2200eaa183636cc1a" -> "sha256:ecdeb637c2baab0ab6c7ca6779c5dd3beed1819fb3a2943a23c992483ccfb702" [label=""];
  "sha256:c329c24ca852a89fbf407fc857d2c59b8863b81dbcdbdd25ec3a3971853f8f35" -> "sha256:ecdeb637c2baab0ab6c7ca6779c5dd3beed1819fb3a2943a23c992483ccfb702" [label=""];
  "sha256:ecdeb637c2baab0ab6c7ca6779c5dd3beed1819fb3a2943a23c992483ccfb702" -> "sha256:dd499b8f0098010df76e50310868ab61f072f27931d7044459528e987d068aff" [label=""];
  "sha256:dd499b8f0098010df76e50310868ab61f072f27931d7044459528e987d068aff" -> "sha256:b04bb458f3ac58f9b654ea13e59cd277909e8fa3fca78cb8777571a9d0536ec6" [label=""];
  "sha256:c329c24ca852a89fbf407fc857d2c59b8863b81dbcdbdd25ec3a3971853f8f35" -> "sha256:b04bb458f3ac58f9b654ea13e59cd277909e8fa3fca78cb8777571a9d0536ec6" [label=""];
  "sha256:b04bb458f3ac58f9b654ea13e59cd277909e8fa3fca78cb8777571a9d0536ec6" -> "sha256:d4617c247aa3924609914444e316303d8fc8def21e80bf92a6a08efb86e41924" [label=""];
}

