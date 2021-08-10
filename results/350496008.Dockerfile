[app/sources/350496008.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:62469760a99261f00bc1f727bfe860516c940b9cc70140faaf1760ddb4aa0219" [label="/bin/sh -c dnf update -y;   dnf install -y which git unzip vim vim-minimal       java-1.?.0-openjdk       java-1.?.0-openjdk-devel" shape="box"];
  "sha256:0adec3da7a3212b1158623fba7f3b57caaf3ec589fd70b17604e9b2da533b818" [label="sha256:0adec3da7a3212b1158623fba7f3b57caaf3ec589fd70b17604e9b2da533b818" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:62469760a99261f00bc1f727bfe860516c940b9cc70140faaf1760ddb4aa0219" [label=""];
  "sha256:62469760a99261f00bc1f727bfe860516c940b9cc70140faaf1760ddb4aa0219" -> "sha256:0adec3da7a3212b1158623fba7f3b57caaf3ec589fd70b17604e9b2da533b818" [label=""];
}

