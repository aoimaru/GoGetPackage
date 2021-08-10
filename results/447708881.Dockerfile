[app/sources/447708881.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:a82391f33ea25a5f9f6ab9e30d55d95d39bb4a78ef6859bb93a35c71a960281c" [label="/bin/sh -c mkdir -p /output" shape="box"];
  "sha256:f2b61074fe5927612c0c3c68c056c216de1324fc37186cec302368b438f0e6e1" [label="local://context" shape="ellipse"];
  "sha256:3be7c9ca33ceeb1f4229ce3b3437117ead3cdbc154da659cc596925ad73c7076" [label="copy{src=/fakeSMTP-2.1-SNAPSHOT.jar, dest=/fakeSMTP.jar}" shape="note"];
  "sha256:2d2ee635a2c6bab75bfd91ad283bc6ec8e7dda0749adca7a926aa22c0065b806" [label="sha256:2d2ee635a2c6bab75bfd91ad283bc6ec8e7dda0749adca7a926aa22c0065b806" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:a82391f33ea25a5f9f6ab9e30d55d95d39bb4a78ef6859bb93a35c71a960281c" [label=""];
  "sha256:a82391f33ea25a5f9f6ab9e30d55d95d39bb4a78ef6859bb93a35c71a960281c" -> "sha256:3be7c9ca33ceeb1f4229ce3b3437117ead3cdbc154da659cc596925ad73c7076" [label=""];
  "sha256:f2b61074fe5927612c0c3c68c056c216de1324fc37186cec302368b438f0e6e1" -> "sha256:3be7c9ca33ceeb1f4229ce3b3437117ead3cdbc154da659cc596925ad73c7076" [label=""];
  "sha256:3be7c9ca33ceeb1f4229ce3b3437117ead3cdbc154da659cc596925ad73c7076" -> "sha256:2d2ee635a2c6bab75bfd91ad283bc6ec8e7dda0749adca7a926aa22c0065b806" [label=""];
}

