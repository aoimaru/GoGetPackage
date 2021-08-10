[app/sources/208271527.Dockerfile]
digraph {
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" [label="docker-image://docker.io/library/python:2.7-alpine" shape="ellipse"];
  "sha256:13094d2bd85cbe243062cd13a87240ce899eb734e954a199caba3753bfb97e83" [label="/bin/sh -c apk update && apk add libsodium git" shape="box"];
  "sha256:570bae87dec701f0af817e17f3c6782c10c25c08531f41c1ae74c8bf94acb851" [label="local://context" shape="ellipse"];
  "sha256:658132bfb67bb0e71c609e63638183abea66aa5f046aae0bc5315baaee4d6852" [label="copy{src=/, dest=/shadowsocks}" shape="note"];
  "sha256:f2b32c82e66f28a89c1ea09eebd7be9c22053e8c9ef8908c44c8eac2d8908393" [label="mkdir{path=/shadowsocks/shadowsocks}" shape="note"];
  "sha256:f2c65dce6b3d4522c90712221cd9f87792075b4e5552934a3ffac6d8ad32ecb9" [label="/bin/sh -c pip install cymysql" shape="box"];
  "sha256:328ebc3156458cdc2eaa514207eab6595e79d6beb89b886ec55880c1c315ef88" [label="sha256:328ebc3156458cdc2eaa514207eab6595e79d6beb89b886ec55880c1c315ef88" shape="plaintext"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" -> "sha256:13094d2bd85cbe243062cd13a87240ce899eb734e954a199caba3753bfb97e83" [label=""];
  "sha256:13094d2bd85cbe243062cd13a87240ce899eb734e954a199caba3753bfb97e83" -> "sha256:658132bfb67bb0e71c609e63638183abea66aa5f046aae0bc5315baaee4d6852" [label=""];
  "sha256:570bae87dec701f0af817e17f3c6782c10c25c08531f41c1ae74c8bf94acb851" -> "sha256:658132bfb67bb0e71c609e63638183abea66aa5f046aae0bc5315baaee4d6852" [label=""];
  "sha256:658132bfb67bb0e71c609e63638183abea66aa5f046aae0bc5315baaee4d6852" -> "sha256:f2b32c82e66f28a89c1ea09eebd7be9c22053e8c9ef8908c44c8eac2d8908393" [label=""];
  "sha256:f2b32c82e66f28a89c1ea09eebd7be9c22053e8c9ef8908c44c8eac2d8908393" -> "sha256:f2c65dce6b3d4522c90712221cd9f87792075b4e5552934a3ffac6d8ad32ecb9" [label=""];
  "sha256:f2c65dce6b3d4522c90712221cd9f87792075b4e5552934a3ffac6d8ad32ecb9" -> "sha256:328ebc3156458cdc2eaa514207eab6595e79d6beb89b886ec55880c1c315ef88" [label=""];
}

