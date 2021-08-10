[app/sources/467571729.Dockerfile]
digraph {
  "sha256:56bd40041e666d4e73b7d73f47228939a8b9c7c4cb23441e3f1e5619b3dd0241" [label="docker-image://docker.io/library/fedora:21" shape="ellipse"];
  "sha256:51c577833d7563bb9bcc88f8d5ff0234d351113e4fc38e749e49b126c415865e" [label="/bin/sh -c yum install -y yum-plugin-ovl" shape="box"];
  "sha256:a339e80fc42fe9d691494c9dc122dac8ce4154709b7c90ac1a26d521f43210a5" [label="/bin/sh -c yum clean all && yum update -y && yum install -y ruby findutils" shape="box"];
  "sha256:157111d1d11a4f5e1ec392788a04a3cdac8de992662b1202bf610dc518753628" [label="/bin/sh -c gem install bundler" shape="box"];
  "sha256:ef5254ac8949330f108841c79786a869a4fbb36a6ec49e5ef2a79e1a7cc3106b" [label="sha256:ef5254ac8949330f108841c79786a869a4fbb36a6ec49e5ef2a79e1a7cc3106b" shape="plaintext"];
  "sha256:56bd40041e666d4e73b7d73f47228939a8b9c7c4cb23441e3f1e5619b3dd0241" -> "sha256:51c577833d7563bb9bcc88f8d5ff0234d351113e4fc38e749e49b126c415865e" [label=""];
  "sha256:51c577833d7563bb9bcc88f8d5ff0234d351113e4fc38e749e49b126c415865e" -> "sha256:a339e80fc42fe9d691494c9dc122dac8ce4154709b7c90ac1a26d521f43210a5" [label=""];
  "sha256:a339e80fc42fe9d691494c9dc122dac8ce4154709b7c90ac1a26d521f43210a5" -> "sha256:157111d1d11a4f5e1ec392788a04a3cdac8de992662b1202bf610dc518753628" [label=""];
  "sha256:157111d1d11a4f5e1ec392788a04a3cdac8de992662b1202bf610dc518753628" -> "sha256:ef5254ac8949330f108841c79786a869a4fbb36a6ec49e5ef2a79e1a7cc3106b" [label=""];
}

