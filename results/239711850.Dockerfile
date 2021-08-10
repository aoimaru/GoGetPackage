[app/sources/239711850.Dockerfile]
digraph {
  "sha256:f68c557b7aa32081efd6591229f6ba80295acd8a81979eb79ba1a4d162d3335c" [label="local://context" shape="ellipse"];
  "sha256:414cd28b99837ee127173add3b2718a4d83d6ecc4b5f169a17d3c6bbd22a83a0" [label="docker-image://docker.io/egovio/apline-jre:8u121" shape="ellipse"];
  "sha256:5d35095985427f58bf43a6400b5b0c6877412a1563294a1af616f0618454006e" [label="copy{src=/target/egov-localization-0.0.1-SNAPSHOT.jar, dest=/opt/egov/egov-localization.jar}" shape="note"];
  "sha256:a4450fe1adacd9293ad0b23e6825a12e9f94b3b5ab62d312176c594a6529bf27" [label="copy{src=/start.sh, dest=/usr/bin/start.sh}" shape="note"];
  "sha256:6fe9eb3d879af5ce49d6de28d2027ba7d85c7ac3cb007c740a4f2b452b032c3f" [label="/bin/sh -c chmod +x /usr/bin/start.sh" shape="box"];
  "sha256:9460c290e7bbf17e3687b6dfd3fa6a9dc398051d1d53eb8076f245d352092a79" [label="sha256:9460c290e7bbf17e3687b6dfd3fa6a9dc398051d1d53eb8076f245d352092a79" shape="plaintext"];
  "sha256:414cd28b99837ee127173add3b2718a4d83d6ecc4b5f169a17d3c6bbd22a83a0" -> "sha256:5d35095985427f58bf43a6400b5b0c6877412a1563294a1af616f0618454006e" [label=""];
  "sha256:f68c557b7aa32081efd6591229f6ba80295acd8a81979eb79ba1a4d162d3335c" -> "sha256:5d35095985427f58bf43a6400b5b0c6877412a1563294a1af616f0618454006e" [label=""];
  "sha256:5d35095985427f58bf43a6400b5b0c6877412a1563294a1af616f0618454006e" -> "sha256:a4450fe1adacd9293ad0b23e6825a12e9f94b3b5ab62d312176c594a6529bf27" [label=""];
  "sha256:f68c557b7aa32081efd6591229f6ba80295acd8a81979eb79ba1a4d162d3335c" -> "sha256:a4450fe1adacd9293ad0b23e6825a12e9f94b3b5ab62d312176c594a6529bf27" [label=""];
  "sha256:a4450fe1adacd9293ad0b23e6825a12e9f94b3b5ab62d312176c594a6529bf27" -> "sha256:6fe9eb3d879af5ce49d6de28d2027ba7d85c7ac3cb007c740a4f2b452b032c3f" [label=""];
  "sha256:6fe9eb3d879af5ce49d6de28d2027ba7d85c7ac3cb007c740a4f2b452b032c3f" -> "sha256:9460c290e7bbf17e3687b6dfd3fa6a9dc398051d1d53eb8076f245d352092a79" [label=""];
}

