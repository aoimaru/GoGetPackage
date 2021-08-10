[app/sources/471071994.Dockerfile]
digraph {
  "sha256:c83814ff370debd36c87a82e7a13e0691a9429c0ad3e840764d3ec5075da35f4" [label="docker-image://docker.io/bitnami/php-fpm@sha256:23a87cc9a92af7f2d25827178c3c9bef803b97b3817df497763cd7ec6e60881b" shape="ellipse"];
  "sha256:221516e14709353eb51fd598a3b7a4366f2a9d8379ee53e0ee457c173872aea5" [label="local://context" shape="ellipse"];
  "sha256:5f9b1b70bf791c6925135bd6f50abd16c041ebda5ad10c6cfaefa9580c8750af" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:d268cf0c1b408a35b749311a3f0df131d6ea36dbc73d7106c974853074d0762d" [label="sha256:d268cf0c1b408a35b749311a3f0df131d6ea36dbc73d7106c974853074d0762d" shape="plaintext"];
  "sha256:c83814ff370debd36c87a82e7a13e0691a9429c0ad3e840764d3ec5075da35f4" -> "sha256:5f9b1b70bf791c6925135bd6f50abd16c041ebda5ad10c6cfaefa9580c8750af" [label=""];
  "sha256:221516e14709353eb51fd598a3b7a4366f2a9d8379ee53e0ee457c173872aea5" -> "sha256:5f9b1b70bf791c6925135bd6f50abd16c041ebda5ad10c6cfaefa9580c8750af" [label=""];
  "sha256:5f9b1b70bf791c6925135bd6f50abd16c041ebda5ad10c6cfaefa9580c8750af" -> "sha256:d268cf0c1b408a35b749311a3f0df131d6ea36dbc73d7106c974853074d0762d" [label=""];
}

