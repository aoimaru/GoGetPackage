[app/sources/459838873.Dockerfile]
digraph {
  "sha256:cc1ee859890fd154efddaaa3c7114d3ea5c4b37b08f55dfd222550993af930e8" [label="local://context" shape="ellipse"];
  "sha256:6374a0f7406f455edcd0bc4570d519724608f4db40f90b7eb3e1736ea8d927b4" [label="docker-image://docker.io/envoyproxy/envoy:v1.9.0@sha256:36fa7662386ed6db1d3fe7bcfab7cdeb9d2aeceabe0f0e96f5af202e9e3db556" shape="ellipse"];
  "sha256:f34a615a55e58b3f9908d223345a9a68db05f28615dd56a119bf7c11b24c9c8e" [label="/bin/sh -c apt-get update && apt-get install -y software-properties-common curl" shape="box"];
  "sha256:a1ddceaa4c4d723df3c85da051794caef69ffefb266d337c429cbc33d5a1784f" [label="/bin/sh -c apt-add-repository ppa:brightbox/ruby-ng" shape="box"];
  "sha256:8d8d53ae1fda44696d513e98d85da137f008b5a34db94d551b06744fa163a9f7" [label="/bin/sh -c apt-get update && apt-get install -y ruby2.4" shape="box"];
  "sha256:1ad1d5b075d39547604aca6d7c4f9c52666f1e8a5a095969803b902cebaef053" [label="copy{src=/run.rb, dest=/run.rb}" shape="note"];
  "sha256:c5d0a5fa9bc3e7511f0366eb3d8251dcbd88dc77e281e2d78e948ef6d3662a1f" [label="sha256:c5d0a5fa9bc3e7511f0366eb3d8251dcbd88dc77e281e2d78e948ef6d3662a1f" shape="plaintext"];
  "sha256:6374a0f7406f455edcd0bc4570d519724608f4db40f90b7eb3e1736ea8d927b4" -> "sha256:f34a615a55e58b3f9908d223345a9a68db05f28615dd56a119bf7c11b24c9c8e" [label=""];
  "sha256:f34a615a55e58b3f9908d223345a9a68db05f28615dd56a119bf7c11b24c9c8e" -> "sha256:a1ddceaa4c4d723df3c85da051794caef69ffefb266d337c429cbc33d5a1784f" [label=""];
  "sha256:a1ddceaa4c4d723df3c85da051794caef69ffefb266d337c429cbc33d5a1784f" -> "sha256:8d8d53ae1fda44696d513e98d85da137f008b5a34db94d551b06744fa163a9f7" [label=""];
  "sha256:8d8d53ae1fda44696d513e98d85da137f008b5a34db94d551b06744fa163a9f7" -> "sha256:1ad1d5b075d39547604aca6d7c4f9c52666f1e8a5a095969803b902cebaef053" [label=""];
  "sha256:cc1ee859890fd154efddaaa3c7114d3ea5c4b37b08f55dfd222550993af930e8" -> "sha256:1ad1d5b075d39547604aca6d7c4f9c52666f1e8a5a095969803b902cebaef053" [label=""];
  "sha256:1ad1d5b075d39547604aca6d7c4f9c52666f1e8a5a095969803b902cebaef053" -> "sha256:c5d0a5fa9bc3e7511f0366eb3d8251dcbd88dc77e281e2d78e948ef6d3662a1f" [label=""];
}

