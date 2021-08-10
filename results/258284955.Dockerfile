[app/sources/258284955.Dockerfile]
digraph {
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:336c8a14223117cbafd30f9ce6b5aca7f10c141b53103b281b43499a50791537" [label="local://context" shape="ellipse"];
  "sha256:3621497f875c8cb219abd55a8de7ea4110be7a706582dc976e5060c12aa71931" [label="copy{src=/, dest=/go/src/github.com/ryotarai/spotscaler}" shape="note"];
  "sha256:0a7dc0020544ba18686237622640048f705c7b6fbb2f1b946b0f8149e4c33233" [label="mkdir{path=/go/src/github.com/ryotarai/spotscaler}" shape="note"];
  "sha256:945f62740936942dfda165a05a3ff7f5d03dc1717b62d02ed217bb9fda2397b3" [label="/bin/sh -c make install" shape="box"];
  "sha256:3480007a895557a6b51ee7b865d9d986ab722650a8a87e6604b9b3f7e6cdc622" [label="sha256:3480007a895557a6b51ee7b865d9d986ab722650a8a87e6604b9b3f7e6cdc622" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:3621497f875c8cb219abd55a8de7ea4110be7a706582dc976e5060c12aa71931" [label=""];
  "sha256:336c8a14223117cbafd30f9ce6b5aca7f10c141b53103b281b43499a50791537" -> "sha256:3621497f875c8cb219abd55a8de7ea4110be7a706582dc976e5060c12aa71931" [label=""];
  "sha256:3621497f875c8cb219abd55a8de7ea4110be7a706582dc976e5060c12aa71931" -> "sha256:0a7dc0020544ba18686237622640048f705c7b6fbb2f1b946b0f8149e4c33233" [label=""];
  "sha256:0a7dc0020544ba18686237622640048f705c7b6fbb2f1b946b0f8149e4c33233" -> "sha256:945f62740936942dfda165a05a3ff7f5d03dc1717b62d02ed217bb9fda2397b3" [label=""];
  "sha256:945f62740936942dfda165a05a3ff7f5d03dc1717b62d02ed217bb9fda2397b3" -> "sha256:3480007a895557a6b51ee7b865d9d986ab722650a8a87e6604b9b3f7e6cdc622" [label=""];
}

