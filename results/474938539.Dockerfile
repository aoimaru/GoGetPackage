[app/sources/474938539.Dockerfile]
digraph {
  "sha256:1f6c890f8789a555640016188e3c6516280618b1f2423fd0a6a1df840bcba23a" [label="docker-image://docker.io/coinstac/coinstac-base-python-stream@sha256:169aacdaf1bc1e28a26b9fac92983f922d13e0cd70fa32bc43f6d3277ce4d19b" shape="ellipse"];
  "sha256:4ca0a3256bb6b02e1ff5b2c28cf6f373270efd2977609e2c6573f8e3ad971fd3" [label="mkdir{path=/computation}" shape="note"];
  "sha256:76ac497764a6f7969eb930d839ada350d188d915f72bcfa6cb1e3856d26895c8" [label="local://context" shape="ellipse"];
  "sha256:e93eb5614d37a3239afb47600f8280a4b84197d2d2ba616c7f884b6336b16ca1" [label="copy{src=/, dest=/computation}" shape="note"];
  "sha256:ba14f2a53f7597eb7daa2e519ed8c159818afa0d7bc3a5827cb62d36c2bb5583" [label="sha256:ba14f2a53f7597eb7daa2e519ed8c159818afa0d7bc3a5827cb62d36c2bb5583" shape="plaintext"];
  "sha256:1f6c890f8789a555640016188e3c6516280618b1f2423fd0a6a1df840bcba23a" -> "sha256:4ca0a3256bb6b02e1ff5b2c28cf6f373270efd2977609e2c6573f8e3ad971fd3" [label=""];
  "sha256:4ca0a3256bb6b02e1ff5b2c28cf6f373270efd2977609e2c6573f8e3ad971fd3" -> "sha256:e93eb5614d37a3239afb47600f8280a4b84197d2d2ba616c7f884b6336b16ca1" [label=""];
  "sha256:76ac497764a6f7969eb930d839ada350d188d915f72bcfa6cb1e3856d26895c8" -> "sha256:e93eb5614d37a3239afb47600f8280a4b84197d2d2ba616c7f884b6336b16ca1" [label=""];
  "sha256:e93eb5614d37a3239afb47600f8280a4b84197d2d2ba616c7f884b6336b16ca1" -> "sha256:ba14f2a53f7597eb7daa2e519ed8c159818afa0d7bc3a5827cb62d36c2bb5583" [label=""];
}

