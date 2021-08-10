[app/sources/240469209.Dockerfile]
digraph {
  "sha256:6892cb6709fdcb545072ada5d677f686510c2e4d07393a2a96f706899dcf4321" [label="docker-image://docker.io/bigtruedata/scala:2.11.2" shape="ellipse"];
  "sha256:0329b1e7002c5834b8c79efa4db10b81b2008225b4a1d1c97659ab01e83421a6" [label="/bin/sh -c wget -O- \"https://github.com/sbt/sbt/releases/download/v0.13.16/sbt-0.13.16.tgz\"     |  tar xzf - -C /usr/local --strip-components=1     && sbt exit" shape="box"];
  "sha256:8e1bc3b384212e0a666d57cff6c73763eb2d14d72f63583ee68513d3104443c1" [label="mkdir{path=/app}" shape="note"];
  "sha256:861cc6d120d359c75d1a0ba6ce7729034583cdec6ec4c021ceb857ff643173c8" [label="sha256:861cc6d120d359c75d1a0ba6ce7729034583cdec6ec4c021ceb857ff643173c8" shape="plaintext"];
  "sha256:6892cb6709fdcb545072ada5d677f686510c2e4d07393a2a96f706899dcf4321" -> "sha256:0329b1e7002c5834b8c79efa4db10b81b2008225b4a1d1c97659ab01e83421a6" [label=""];
  "sha256:0329b1e7002c5834b8c79efa4db10b81b2008225b4a1d1c97659ab01e83421a6" -> "sha256:8e1bc3b384212e0a666d57cff6c73763eb2d14d72f63583ee68513d3104443c1" [label=""];
  "sha256:8e1bc3b384212e0a666d57cff6c73763eb2d14d72f63583ee68513d3104443c1" -> "sha256:861cc6d120d359c75d1a0ba6ce7729034583cdec6ec4c021ceb857ff643173c8" [label=""];
}

