[app/sources/341899068.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:cdda83aaf4ec9754b5fc461866a90c1f2fca30d689116b582e805bb34cef523c" [label="local://context" shape="ellipse"];
  "sha256:7147480b657f047b131a00f653f74b5fe89def0e7fb2038e948448c1c6bcec71" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:546a22ec112b793378528ecaec0ab73fac0de546212242f9149b5a53a50b745b" [label="pip install gevent" shape="box"];
  "sha256:6b176f9a203a73eb3cc78abf7b37b2ffb2cdf9f3a4eaf4ec9096be81250e0cb2" [label="pip install gevent" shape="box"];
  "sha256:dff3ddc6d29a9815ba9ccf80b0739e9c3f8d39948434e90f49dffd69050b6585" [label="sha256:dff3ddc6d29a9815ba9ccf80b0739e9c3f8d39948434e90f49dffd69050b6585" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:7147480b657f047b131a00f653f74b5fe89def0e7fb2038e948448c1c6bcec71" [label=""];
  "sha256:cdda83aaf4ec9754b5fc461866a90c1f2fca30d689116b582e805bb34cef523c" -> "sha256:7147480b657f047b131a00f653f74b5fe89def0e7fb2038e948448c1c6bcec71" [label=""];
  "sha256:7147480b657f047b131a00f653f74b5fe89def0e7fb2038e948448c1c6bcec71" -> "sha256:546a22ec112b793378528ecaec0ab73fac0de546212242f9149b5a53a50b745b" [label=""];
  "sha256:546a22ec112b793378528ecaec0ab73fac0de546212242f9149b5a53a50b745b" -> "sha256:6b176f9a203a73eb3cc78abf7b37b2ffb2cdf9f3a4eaf4ec9096be81250e0cb2" [label=""];
  "sha256:6b176f9a203a73eb3cc78abf7b37b2ffb2cdf9f3a4eaf4ec9096be81250e0cb2" -> "sha256:dff3ddc6d29a9815ba9ccf80b0739e9c3f8d39948434e90f49dffd69050b6585" [label=""];
}

