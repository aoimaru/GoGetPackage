[app/sources/251314240.Dockerfile]
digraph {
  "sha256:8c2d0c99b6f495285b79e465e82f62a7df1502ff2efce32a751e8a589c8f418c" [label="docker-image://gcr.io/google_appengine/golang@sha256:d01a3252f0f104c6ecb156f495dbd924684a6946d48f2bec39ad1e7280a9f412" shape="ellipse"];
  "sha256:c8f3b5495a4f781e97be951e26fae57d05d9d9d7aacbdaf6bc99ff157a0561e6" [label="local://context" shape="ellipse"];
  "sha256:de7713e8974ccf2b1ea8bee91f4c437025b7da93180c7a0342b873193a2b32c1" [label="copy{src=/, dest=/go/src/app}" shape="note"];
  "sha256:dcf836e5d9d5f6d591660748896bed03821eef4304c8f0ccbc9549f629db0e94" [label="/bin/sh -c go-wrapper download" shape="box"];
  "sha256:c052d05f004971f5d951d42f50dfdd1eb75fb01804029935c8cce9b98700a70f" [label="/bin/sh -c go-wrapper install -tags appenginevm" shape="box"];
  "sha256:9dcc892eba39673f650066bff07991b05b97ea52b296c18e54d8901cebde17f2" [label="sha256:9dcc892eba39673f650066bff07991b05b97ea52b296c18e54d8901cebde17f2" shape="plaintext"];
  "sha256:8c2d0c99b6f495285b79e465e82f62a7df1502ff2efce32a751e8a589c8f418c" -> "sha256:de7713e8974ccf2b1ea8bee91f4c437025b7da93180c7a0342b873193a2b32c1" [label=""];
  "sha256:c8f3b5495a4f781e97be951e26fae57d05d9d9d7aacbdaf6bc99ff157a0561e6" -> "sha256:de7713e8974ccf2b1ea8bee91f4c437025b7da93180c7a0342b873193a2b32c1" [label=""];
  "sha256:de7713e8974ccf2b1ea8bee91f4c437025b7da93180c7a0342b873193a2b32c1" -> "sha256:dcf836e5d9d5f6d591660748896bed03821eef4304c8f0ccbc9549f629db0e94" [label=""];
  "sha256:dcf836e5d9d5f6d591660748896bed03821eef4304c8f0ccbc9549f629db0e94" -> "sha256:c052d05f004971f5d951d42f50dfdd1eb75fb01804029935c8cce9b98700a70f" [label=""];
  "sha256:c052d05f004971f5d951d42f50dfdd1eb75fb01804029935c8cce9b98700a70f" -> "sha256:9dcc892eba39673f650066bff07991b05b97ea52b296c18e54d8901cebde17f2" [label=""];
}

