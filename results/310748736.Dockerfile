[app/sources/310748736.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:042c1d4ddcb71c3cec897b3d03f1f57ec51fb1257dcde65bd8988d0acbfc7790" [label="mkdir{path=/app}" shape="note"];
  "sha256:ce49214a19d6ca48569349fc23c3eadb2dbee1f3f0205ead4ff0ec75d4f0755c" [label="/bin/sh -c apk --no-cache add git" shape="box"];
  "sha256:d2ad6663583f215bc937eeee694f296718ce40fa319d847e1ab8280dd041127b" [label="local://context" shape="ellipse"];
  "sha256:ed21b86e1144adda30d866968b7dce54418434424ceed75e63a346468f66a69d" [label="copy{src=/entrypoint, dest=/}" shape="note"];
  "sha256:39233b8b6c74ba940e12c6ffee391947b0f93b1177fa42c766f70a892ebc17e7" [label="sha256:39233b8b6c74ba940e12c6ffee391947b0f93b1177fa42c766f70a892ebc17e7" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:042c1d4ddcb71c3cec897b3d03f1f57ec51fb1257dcde65bd8988d0acbfc7790" [label=""];
  "sha256:042c1d4ddcb71c3cec897b3d03f1f57ec51fb1257dcde65bd8988d0acbfc7790" -> "sha256:ce49214a19d6ca48569349fc23c3eadb2dbee1f3f0205ead4ff0ec75d4f0755c" [label=""];
  "sha256:ce49214a19d6ca48569349fc23c3eadb2dbee1f3f0205ead4ff0ec75d4f0755c" -> "sha256:ed21b86e1144adda30d866968b7dce54418434424ceed75e63a346468f66a69d" [label=""];
  "sha256:d2ad6663583f215bc937eeee694f296718ce40fa319d847e1ab8280dd041127b" -> "sha256:ed21b86e1144adda30d866968b7dce54418434424ceed75e63a346468f66a69d" [label=""];
  "sha256:ed21b86e1144adda30d866968b7dce54418434424ceed75e63a346468f66a69d" -> "sha256:39233b8b6c74ba940e12c6ffee391947b0f93b1177fa42c766f70a892ebc17e7" [label=""];
}

