[app/sources/252774851.Dockerfile]
digraph {
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:f48c389b08fc3a843e54c79e7a32eccc6bd6410993ea967ccd58cb0814f72ab7" [label="/bin/sh -c mkdir /data" shape="box"];
  "sha256:dc9f8958a6a5daebc3d2653cc65aee5ce693985bc57c6ea41ea158374aecfa19" [label="/bin/sh -c mkdir -p /go/src/app" shape="box"];
  "sha256:912aa6777794d34476788c7a6de7f3750b9346978495259790bcb05720aa95ca" [label="mkdir{path=/go/src/app}" shape="note"];
  "sha256:98c8fa435bf8b06f4c0f1f6524bea790799a28315fb2855920b87a128fbe7eb6" [label="local://context" shape="ellipse"];
  "sha256:c9bf72640844b6638a0104bcc721629cfdb333e24e245e3e26e3df9a8cf56213" [label="copy{src=/, dest=/go/src/app}" shape="note"];
  "sha256:2f8cdc8f46510fba4ec83149c0d626a67fcd4021ea0f542e3a0a226eba326050" [label="/bin/sh -c go-wrapper download" shape="box"];
  "sha256:c15840e8ddd24c485657c6087cd285b24cc62a79422f272d93684b1fb1e3b653" [label="/bin/sh -c go-wrapper install" shape="box"];
  "sha256:c820afffcb7a08b53186bfba235d2e1997cb8a91e0428bb7b12369b04a543477" [label="sha256:c820afffcb7a08b53186bfba235d2e1997cb8a91e0428bb7b12369b04a543477" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:f48c389b08fc3a843e54c79e7a32eccc6bd6410993ea967ccd58cb0814f72ab7" [label=""];
  "sha256:f48c389b08fc3a843e54c79e7a32eccc6bd6410993ea967ccd58cb0814f72ab7" -> "sha256:dc9f8958a6a5daebc3d2653cc65aee5ce693985bc57c6ea41ea158374aecfa19" [label=""];
  "sha256:dc9f8958a6a5daebc3d2653cc65aee5ce693985bc57c6ea41ea158374aecfa19" -> "sha256:912aa6777794d34476788c7a6de7f3750b9346978495259790bcb05720aa95ca" [label=""];
  "sha256:912aa6777794d34476788c7a6de7f3750b9346978495259790bcb05720aa95ca" -> "sha256:c9bf72640844b6638a0104bcc721629cfdb333e24e245e3e26e3df9a8cf56213" [label=""];
  "sha256:98c8fa435bf8b06f4c0f1f6524bea790799a28315fb2855920b87a128fbe7eb6" -> "sha256:c9bf72640844b6638a0104bcc721629cfdb333e24e245e3e26e3df9a8cf56213" [label=""];
  "sha256:c9bf72640844b6638a0104bcc721629cfdb333e24e245e3e26e3df9a8cf56213" -> "sha256:2f8cdc8f46510fba4ec83149c0d626a67fcd4021ea0f542e3a0a226eba326050" [label=""];
  "sha256:2f8cdc8f46510fba4ec83149c0d626a67fcd4021ea0f542e3a0a226eba326050" -> "sha256:c15840e8ddd24c485657c6087cd285b24cc62a79422f272d93684b1fb1e3b653" [label=""];
  "sha256:c15840e8ddd24c485657c6087cd285b24cc62a79422f272d93684b1fb1e3b653" -> "sha256:c820afffcb7a08b53186bfba235d2e1997cb8a91e0428bb7b12369b04a543477" [label=""];
}

