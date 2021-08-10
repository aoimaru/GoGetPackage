[app/sources/440684213.Dockerfile]
digraph {
  "sha256:164b16239d000e1cefd20df71e30761fde1e8812e4f51d6b74c9c5eeccfa9ace" [label="docker-image://docker.io/library/openjdk:8u111@sha256:c1ff613e8ba25833d2e1940da0940c3824f03f802c449f3d1815a66b7f8c0e9d" shape="ellipse"];
  "sha256:fc718888117cfe07fb20d1d5647335826b63fea36aea26d2553255dcf96bd3fa" [label="/bin/sh -c apt-get update && apt-get install -y supervisor" shape="box"];
  "sha256:337013d910238808e8f92146746cf85cddb84c47de6db7ab368e09d3d42a42fb" [label="local://context" shape="ellipse"];
  "sha256:7e9d765b365d9542b60636dd146f4f47a5d82d97d8acf5f156caac1ab6d90a13" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:e91a3c570bec1fa30fb234c3ee86cbbf735440994014f96f9c19d1cb01910838" [label="copy{src=/horta-hell.jar, dest=/opt/codingteam/horta-hell/horta-hell.jar}" shape="note"];
  "sha256:7a7c12950ddea5c0ef0910e84ef56876edec671442f2a4d87ee80d11e7e7a8a6" [label="sha256:7a7c12950ddea5c0ef0910e84ef56876edec671442f2a4d87ee80d11e7e7a8a6" shape="plaintext"];
  "sha256:164b16239d000e1cefd20df71e30761fde1e8812e4f51d6b74c9c5eeccfa9ace" -> "sha256:fc718888117cfe07fb20d1d5647335826b63fea36aea26d2553255dcf96bd3fa" [label=""];
  "sha256:fc718888117cfe07fb20d1d5647335826b63fea36aea26d2553255dcf96bd3fa" -> "sha256:7e9d765b365d9542b60636dd146f4f47a5d82d97d8acf5f156caac1ab6d90a13" [label=""];
  "sha256:337013d910238808e8f92146746cf85cddb84c47de6db7ab368e09d3d42a42fb" -> "sha256:7e9d765b365d9542b60636dd146f4f47a5d82d97d8acf5f156caac1ab6d90a13" [label=""];
  "sha256:7e9d765b365d9542b60636dd146f4f47a5d82d97d8acf5f156caac1ab6d90a13" -> "sha256:e91a3c570bec1fa30fb234c3ee86cbbf735440994014f96f9c19d1cb01910838" [label=""];
  "sha256:337013d910238808e8f92146746cf85cddb84c47de6db7ab368e09d3d42a42fb" -> "sha256:e91a3c570bec1fa30fb234c3ee86cbbf735440994014f96f9c19d1cb01910838" [label=""];
  "sha256:e91a3c570bec1fa30fb234c3ee86cbbf735440994014f96f9c19d1cb01910838" -> "sha256:7a7c12950ddea5c0ef0910e84ef56876edec671442f2a4d87ee80d11e7e7a8a6" [label=""];
}

