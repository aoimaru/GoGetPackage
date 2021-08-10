[app/sources/231287882.Dockerfile]
digraph {
  "sha256:a582998c16d728aeda3beafbe0c7ecbc39c767b6ec1a1cbcc4864593507a6615" [label="docker-image://docker.io/library/strato-build:latest" shape="ellipse"];
  "sha256:90ce63ff40da65ca1096ef985a791f6ce952312834e8ea0b6e5871ff3e1bd557" [label="/bin/sh -c wget -P /usr/src/ http://zlib.net/zlib-1.2.11.tar.gz" shape="box"];
  "sha256:d06aa751669c567f4e32fa360d85d5aff6ecad8f89bb852f5f0730d192024b84" [label="/bin/sh -c cd /usr/src/ && tar xf zlib*" shape="box"];
  "sha256:4f23944139b8101d76cf42c7fac0e151ff3cba2568f2a8311634a31fce08272c" [label="/bin/sh -c cd /usr/src/zlib*     && ./configure     --prefix=/usr     --libdir=/lib     --shared     && make" shape="box"];
  "sha256:b57a34b9871e0ccd6ee45cd5e20bb68a511db5fd7c76a314ea19e379a9afdbe9" [label="/bin/sh -c cd /usr/src/zlib*     && make install" shape="box"];
  "sha256:ea6f68d6d2c7da013db223142eb26ea91ae08f4616a0cd8cb1fc1e4b83a47a7f" [label="sha256:ea6f68d6d2c7da013db223142eb26ea91ae08f4616a0cd8cb1fc1e4b83a47a7f" shape="plaintext"];
  "sha256:a582998c16d728aeda3beafbe0c7ecbc39c767b6ec1a1cbcc4864593507a6615" -> "sha256:90ce63ff40da65ca1096ef985a791f6ce952312834e8ea0b6e5871ff3e1bd557" [label=""];
  "sha256:90ce63ff40da65ca1096ef985a791f6ce952312834e8ea0b6e5871ff3e1bd557" -> "sha256:d06aa751669c567f4e32fa360d85d5aff6ecad8f89bb852f5f0730d192024b84" [label=""];
  "sha256:d06aa751669c567f4e32fa360d85d5aff6ecad8f89bb852f5f0730d192024b84" -> "sha256:4f23944139b8101d76cf42c7fac0e151ff3cba2568f2a8311634a31fce08272c" [label=""];
  "sha256:4f23944139b8101d76cf42c7fac0e151ff3cba2568f2a8311634a31fce08272c" -> "sha256:b57a34b9871e0ccd6ee45cd5e20bb68a511db5fd7c76a314ea19e379a9afdbe9" [label=""];
  "sha256:b57a34b9871e0ccd6ee45cd5e20bb68a511db5fd7c76a314ea19e379a9afdbe9" -> "sha256:ea6f68d6d2c7da013db223142eb26ea91ae08f4616a0cd8cb1fc1e4b83a47a7f" [label=""];
}

