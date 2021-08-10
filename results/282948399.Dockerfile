[app/sources/282948399.Dockerfile]
digraph {
  "sha256:c3b5679b0f0082d01340a8e7e89ab257ccba3f2206776de923bd7f99e5a32729" [label="local://context" shape="ellipse"];
  "sha256:ed8db306833bb5e2f06c75c848a950fe89a853f37a6a46ab84256de6ff52ff31" [label="docker-image://docker.io/library/php:5-apache" shape="ellipse"];
  "sha256:87ac11be09fab3e21c86baaf0f7846deb9b02fe87610e094ae3a87872fecec35" [label="copy{src=/index.php, dest=/var/www/html/index.php}" shape="note"];
  "sha256:ce366ac0ecd94b733d84623ae3d3a1d1ce4785fd5cb99d78b2283c823b66156a" [label="/bin/sh -c chmod a+rx index.php" shape="box"];
  "sha256:69f2e0ed2fc5eed6e7e05915911054f8fcb0c27e4e06704eaf616406ffdc4ec0" [label="sha256:69f2e0ed2fc5eed6e7e05915911054f8fcb0c27e4e06704eaf616406ffdc4ec0" shape="plaintext"];
  "sha256:ed8db306833bb5e2f06c75c848a950fe89a853f37a6a46ab84256de6ff52ff31" -> "sha256:87ac11be09fab3e21c86baaf0f7846deb9b02fe87610e094ae3a87872fecec35" [label=""];
  "sha256:c3b5679b0f0082d01340a8e7e89ab257ccba3f2206776de923bd7f99e5a32729" -> "sha256:87ac11be09fab3e21c86baaf0f7846deb9b02fe87610e094ae3a87872fecec35" [label=""];
  "sha256:87ac11be09fab3e21c86baaf0f7846deb9b02fe87610e094ae3a87872fecec35" -> "sha256:ce366ac0ecd94b733d84623ae3d3a1d1ce4785fd5cb99d78b2283c823b66156a" [label=""];
  "sha256:ce366ac0ecd94b733d84623ae3d3a1d1ce4785fd5cb99d78b2283c823b66156a" -> "sha256:69f2e0ed2fc5eed6e7e05915911054f8fcb0c27e4e06704eaf616406ffdc4ec0" [label=""];
}

