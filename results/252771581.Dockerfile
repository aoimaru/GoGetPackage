[app/sources/252771581.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:c7fedeaea88e428d6fd930b3a0eb03aa54a796a1d57e23a48dfde96913ef2db9" [label="/bin/sh -c yum -y install java-1.7.0-openjdk-devel" shape="box"];
  "sha256:5f7a785b154d49c28f3be2940cfa97f2605ec0277600a939838fba33497d9251" [label="sha256:5f7a785b154d49c28f3be2940cfa97f2605ec0277600a939838fba33497d9251" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:c7fedeaea88e428d6fd930b3a0eb03aa54a796a1d57e23a48dfde96913ef2db9" [label=""];
  "sha256:c7fedeaea88e428d6fd930b3a0eb03aa54a796a1d57e23a48dfde96913ef2db9" -> "sha256:5f7a785b154d49c28f3be2940cfa97f2605ec0277600a939838fba33497d9251" [label=""];
}

