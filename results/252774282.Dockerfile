[app/sources/252774282.Dockerfile]
digraph {
  "sha256:bd879171d30119d29428d4852e4e6407e8786157c36cafe0be828fcc0f266569" [label="docker-image://docker.io/frolvlad/alpine-bash:latest" shape="ellipse"];
  "sha256:1417421367634d6b2f1e29676b9847f43c362f27acc1955fa31a6d3bae4938f4" [label="local://context" shape="ellipse"];
  "sha256:99bea02874fd7ee57f74bf9168403e3ac7b08caa49c4a4fb61fb2aa676bc473f" [label="copy{src=/, dest=/tmp/src}" shape="note"];
  "sha256:ab074642c0937c26a977fd79d2e4b5bbc4bf0feeaa11324065e6942f53de9592" [label="/bin/sh -c cd /tmp/src && chmod +x build.sh && ./build.sh" shape="box"];
  "sha256:8025c03520ee9dcb23fc3e002601715d3e4411eb86dd4ebd9243e71eea443f16" [label="mkdir{path=/go}" shape="note"];
  "sha256:1cbb4286c397e5fc57e44a3bbb879e2eea433075b582d866e1404f21a60d94c2" [label="sha256:1cbb4286c397e5fc57e44a3bbb879e2eea433075b582d866e1404f21a60d94c2" shape="plaintext"];
  "sha256:bd879171d30119d29428d4852e4e6407e8786157c36cafe0be828fcc0f266569" -> "sha256:99bea02874fd7ee57f74bf9168403e3ac7b08caa49c4a4fb61fb2aa676bc473f" [label=""];
  "sha256:1417421367634d6b2f1e29676b9847f43c362f27acc1955fa31a6d3bae4938f4" -> "sha256:99bea02874fd7ee57f74bf9168403e3ac7b08caa49c4a4fb61fb2aa676bc473f" [label=""];
  "sha256:99bea02874fd7ee57f74bf9168403e3ac7b08caa49c4a4fb61fb2aa676bc473f" -> "sha256:ab074642c0937c26a977fd79d2e4b5bbc4bf0feeaa11324065e6942f53de9592" [label=""];
  "sha256:ab074642c0937c26a977fd79d2e4b5bbc4bf0feeaa11324065e6942f53de9592" -> "sha256:8025c03520ee9dcb23fc3e002601715d3e4411eb86dd4ebd9243e71eea443f16" [label=""];
  "sha256:8025c03520ee9dcb23fc3e002601715d3e4411eb86dd4ebd9243e71eea443f16" -> "sha256:1cbb4286c397e5fc57e44a3bbb879e2eea433075b582d866e1404f21a60d94c2" [label=""];
}

