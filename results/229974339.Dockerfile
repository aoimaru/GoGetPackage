[app/sources/229974339.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:b078d7bb02768d9a57d2db23e2b96cc53a0d26cb60081312ef435e87ea9ab85b" [label="/bin/sh -c set -x \t&& yum install -y \thttpd \t&& yum clean all" shape="box"];
  "sha256:0face6247e7a99216ac64b5b395c1bdfefcc80c4604f8b6e419390639f172aad" [label="local://context" shape="ellipse"];
  "sha256:f0c4a8dcd8bfe8a68dbcf368c96944fffecf62514f5c0e7a30936dfe5d916fee" [label="copy{src=/assets/alfresco.conf, dest=/etc/httpd/conf.d/alfresco.conf}" shape="note"];
  "sha256:4d450c8d279730b09a866f03d92ba7c93c48238c80b43a2f4c9a3cbcca04fccf" [label="sha256:4d450c8d279730b09a866f03d92ba7c93c48238c80b43a2f4c9a3cbcca04fccf" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:b078d7bb02768d9a57d2db23e2b96cc53a0d26cb60081312ef435e87ea9ab85b" [label=""];
  "sha256:b078d7bb02768d9a57d2db23e2b96cc53a0d26cb60081312ef435e87ea9ab85b" -> "sha256:f0c4a8dcd8bfe8a68dbcf368c96944fffecf62514f5c0e7a30936dfe5d916fee" [label=""];
  "sha256:0face6247e7a99216ac64b5b395c1bdfefcc80c4604f8b6e419390639f172aad" -> "sha256:f0c4a8dcd8bfe8a68dbcf368c96944fffecf62514f5c0e7a30936dfe5d916fee" [label=""];
  "sha256:f0c4a8dcd8bfe8a68dbcf368c96944fffecf62514f5c0e7a30936dfe5d916fee" -> "sha256:4d450c8d279730b09a866f03d92ba7c93c48238c80b43a2f4c9a3cbcca04fccf" [label=""];
}

