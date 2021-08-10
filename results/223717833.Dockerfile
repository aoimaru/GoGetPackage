[app/sources/223717833.Dockerfile]
digraph {
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" [label="docker-image://docker.io/library/golang:1.7" shape="ellipse"];
  "sha256:4d9dd00ca6e3c1803a435cfab3035ae824f7b9c1a249a64f2159f6488a064a9e" [label="/bin/sh -c mkdir -p /opt/authtables" shape="box"];
  "sha256:81fa0ca6d9d5e96121cfcac305b93e75059d295ef1be89c7c26c3ed60aed304c" [label="mkdir{path=/opt/authtables}" shape="note"];
  "sha256:619157b5fd25c09490c171b9f916d97aff421d95b736e9aa697e8bfe39b33943" [label="/bin/sh -c go get github.com/willf/bloom            gopkg.in/redis.v4            github.com/Sirupsen/logrus" shape="box"];
  "sha256:6d968055a5a4c42b4cde38fd76a36fa0d9d6dcf3ea743a84e265a7006bda26e6" [label="local://context" shape="ellipse"];
  "sha256:1709d2cd845bf258ab7431ce99afd802c2b731f09e43d420912c16b3ce9af7ae" [label="copy{src=/authtables.go, dest=/opt/authtables/authtables.go}" shape="note"];
  "sha256:36c946bf0c990fdb9a88c69fd23f9a1d1c38702ff3ae4ec1383aaaf358a760b7" [label="copy{src=/.env, dest=/opt/authtables/.env}" shape="note"];
  "sha256:feccc74467876eb6d09ccab44c62e326230cb8a7fa41f7220de858c7d9f58d4d" [label="copy{src=/configuration.go, dest=/opt/authtables/configuration.go}" shape="note"];
  "sha256:48cb5889fbf1f00964540a8454c80f9077530154b6bac299ba08dd0dedbf74d3" [label="copy{src=/datastore.go, dest=/opt/authtables/datastore.go}" shape="note"];
  "sha256:571b3a64cb630a322b9e5010065abd605055ce5c004c525fee49491061cda492" [label="/bin/sh -c go build authtables.go configuration.go datastore.go" shape="box"];
  "sha256:f0005e4b54cc5d1a2a217f0049983d108bc627a2f5c17162a9ebb16c3240acb4" [label="sha256:f0005e4b54cc5d1a2a217f0049983d108bc627a2f5c17162a9ebb16c3240acb4" shape="plaintext"];
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" -> "sha256:4d9dd00ca6e3c1803a435cfab3035ae824f7b9c1a249a64f2159f6488a064a9e" [label=""];
  "sha256:4d9dd00ca6e3c1803a435cfab3035ae824f7b9c1a249a64f2159f6488a064a9e" -> "sha256:81fa0ca6d9d5e96121cfcac305b93e75059d295ef1be89c7c26c3ed60aed304c" [label=""];
  "sha256:81fa0ca6d9d5e96121cfcac305b93e75059d295ef1be89c7c26c3ed60aed304c" -> "sha256:619157b5fd25c09490c171b9f916d97aff421d95b736e9aa697e8bfe39b33943" [label=""];
  "sha256:619157b5fd25c09490c171b9f916d97aff421d95b736e9aa697e8bfe39b33943" -> "sha256:1709d2cd845bf258ab7431ce99afd802c2b731f09e43d420912c16b3ce9af7ae" [label=""];
  "sha256:6d968055a5a4c42b4cde38fd76a36fa0d9d6dcf3ea743a84e265a7006bda26e6" -> "sha256:1709d2cd845bf258ab7431ce99afd802c2b731f09e43d420912c16b3ce9af7ae" [label=""];
  "sha256:1709d2cd845bf258ab7431ce99afd802c2b731f09e43d420912c16b3ce9af7ae" -> "sha256:36c946bf0c990fdb9a88c69fd23f9a1d1c38702ff3ae4ec1383aaaf358a760b7" [label=""];
  "sha256:6d968055a5a4c42b4cde38fd76a36fa0d9d6dcf3ea743a84e265a7006bda26e6" -> "sha256:36c946bf0c990fdb9a88c69fd23f9a1d1c38702ff3ae4ec1383aaaf358a760b7" [label=""];
  "sha256:36c946bf0c990fdb9a88c69fd23f9a1d1c38702ff3ae4ec1383aaaf358a760b7" -> "sha256:feccc74467876eb6d09ccab44c62e326230cb8a7fa41f7220de858c7d9f58d4d" [label=""];
  "sha256:6d968055a5a4c42b4cde38fd76a36fa0d9d6dcf3ea743a84e265a7006bda26e6" -> "sha256:feccc74467876eb6d09ccab44c62e326230cb8a7fa41f7220de858c7d9f58d4d" [label=""];
  "sha256:feccc74467876eb6d09ccab44c62e326230cb8a7fa41f7220de858c7d9f58d4d" -> "sha256:48cb5889fbf1f00964540a8454c80f9077530154b6bac299ba08dd0dedbf74d3" [label=""];
  "sha256:6d968055a5a4c42b4cde38fd76a36fa0d9d6dcf3ea743a84e265a7006bda26e6" -> "sha256:48cb5889fbf1f00964540a8454c80f9077530154b6bac299ba08dd0dedbf74d3" [label=""];
  "sha256:48cb5889fbf1f00964540a8454c80f9077530154b6bac299ba08dd0dedbf74d3" -> "sha256:571b3a64cb630a322b9e5010065abd605055ce5c004c525fee49491061cda492" [label=""];
  "sha256:571b3a64cb630a322b9e5010065abd605055ce5c004c525fee49491061cda492" -> "sha256:f0005e4b54cc5d1a2a217f0049983d108bc627a2f5c17162a9ebb16c3240acb4" [label=""];
}

