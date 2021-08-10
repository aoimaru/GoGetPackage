[app/sources/240176988.Dockerfile]
digraph {
  "sha256:414cd28b99837ee127173add3b2718a4d83d6ecc4b5f169a17d3c6bbd22a83a0" [label="docker-image://docker.io/egovio/apline-jre:8u121" shape="ellipse"];
  "sha256:15d952459cc5dc2f7e6d1baf4f85adea925af651c51d6671f46086ec40474e33" [label="local://context" shape="ellipse"];
  "sha256:f055420cea240a9e4065cb2b798be60639299662187b23fd9d81ca74d73335a9" [label="copy{src=/target/data-sync-task-0.0.1.jar, dest=/opt/egov/data-sync-task.jar}" shape="note"];
  "sha256:1d6dca70d81b56d011d2ed9a43223edd82936c7e231c37ad9e9fe4c16d2e1e55" [label="copy{src=/start.sh, dest=/usr/bin/start.sh}" shape="note"];
  "sha256:ad06606398ea58fe8427bf43a9d73c06b5373a47c3fc240ecddc0f50500157cd" [label="/bin/sh -c chmod +x /usr/bin/start.sh" shape="box"];
  "sha256:e98a8cf6b8b7f5e6b1fcfa1e9dfd510d964021456ae47c4a734ac392b7f9227c" [label="sha256:e98a8cf6b8b7f5e6b1fcfa1e9dfd510d964021456ae47c4a734ac392b7f9227c" shape="plaintext"];
  "sha256:414cd28b99837ee127173add3b2718a4d83d6ecc4b5f169a17d3c6bbd22a83a0" -> "sha256:f055420cea240a9e4065cb2b798be60639299662187b23fd9d81ca74d73335a9" [label=""];
  "sha256:15d952459cc5dc2f7e6d1baf4f85adea925af651c51d6671f46086ec40474e33" -> "sha256:f055420cea240a9e4065cb2b798be60639299662187b23fd9d81ca74d73335a9" [label=""];
  "sha256:f055420cea240a9e4065cb2b798be60639299662187b23fd9d81ca74d73335a9" -> "sha256:1d6dca70d81b56d011d2ed9a43223edd82936c7e231c37ad9e9fe4c16d2e1e55" [label=""];
  "sha256:15d952459cc5dc2f7e6d1baf4f85adea925af651c51d6671f46086ec40474e33" -> "sha256:1d6dca70d81b56d011d2ed9a43223edd82936c7e231c37ad9e9fe4c16d2e1e55" [label=""];
  "sha256:1d6dca70d81b56d011d2ed9a43223edd82936c7e231c37ad9e9fe4c16d2e1e55" -> "sha256:ad06606398ea58fe8427bf43a9d73c06b5373a47c3fc240ecddc0f50500157cd" [label=""];
  "sha256:ad06606398ea58fe8427bf43a9d73c06b5373a47c3fc240ecddc0f50500157cd" -> "sha256:e98a8cf6b8b7f5e6b1fcfa1e9dfd510d964021456ae47c4a734ac392b7f9227c" [label=""];
}

