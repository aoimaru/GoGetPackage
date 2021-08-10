[app/sources/174653419.Dockerfile]
digraph {
  "sha256:506789c30c6c90ee9b1ab907a954cb2ccf8ca8518af27a170a35283dc05a423b" [label="docker-image://docker.io/qgis/qgis:latest" shape="ellipse"];
  "sha256:e5d0aa65ba14f140cdc27b79631e4cc6b2906da2bbad7915fc83c17cc55820c2" [label="/bin/sh -c apt-get update &&     apt-get -y install       libqt5sensors5-dev       qtquickcontrols2-5-dev &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3b3804c71035ea84a432da309a193d97ddd7ef358da3f1f2a710bd2a6ff6d624" [label="sha256:3b3804c71035ea84a432da309a193d97ddd7ef358da3f1f2a710bd2a6ff6d624" shape="plaintext"];
  "sha256:506789c30c6c90ee9b1ab907a954cb2ccf8ca8518af27a170a35283dc05a423b" -> "sha256:e5d0aa65ba14f140cdc27b79631e4cc6b2906da2bbad7915fc83c17cc55820c2" [label=""];
  "sha256:e5d0aa65ba14f140cdc27b79631e4cc6b2906da2bbad7915fc83c17cc55820c2" -> "sha256:3b3804c71035ea84a432da309a193d97ddd7ef358da3f1f2a710bd2a6ff6d624" [label=""];
}

