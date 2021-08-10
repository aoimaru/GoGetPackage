[app/sources/269910482.Dockerfile]
digraph {
  "sha256:fd00ed71cdc48b085b77a9f348ef6d2ccf1b0c5a36f7bac329b050b6d3c0f40d" [label="docker-image://docker.io/library/java:8-jdk-alpine@sha256:d49bf8c44670834d3dade17f8b84d709e7db47f1887f671a0e098bafa9bae49f" shape="ellipse"];
  "sha256:6dae426a60e62e9b025388f0e985fa1341bf7f91679385f4e642f5d1a75ea196" [label="/bin/sh -c adduser -Dh /home/gordon gordon" shape="box"];
  "sha256:717e55710f9680a8d7b4ada5e9799bb8c6b28a17c0b68e321fb5ab7f674cf021" [label="mkdir{path=/app}" shape="note"];
  "sha256:4dcd2d962f13dc82ebb382b5daf51f670b0647899d4572b1db5f6a5fe174bda4" [label="docker-image://docker.io/library/maven:latest@sha256:5f5855a5aca2d5a7131f4379d71e6fc294cc9dfd94aa23b918ca5c47b14bbacd" shape="ellipse"];
  "sha256:8e56db847c9970009c487a4e3129fdddabb57cd4a47de26f93dfa90caf5c6cb8" [label="mkdir{path=/usr/src/ddev}" shape="note"];
  "sha256:85ba2fbced79320fdb499e0b303a507c38643eb6bf69df3309005566a7f78a95" [label="local://context" shape="ellipse"];
  "sha256:0bb62bbdc06f7e25b7b5bb5f96310a15a13801bcfa755a659792baa9cd59210b" [label="copy{src=/pom.xml, dest=/usr/src/ddev/}" shape="note"];
  "sha256:abf9de97652328d7058bf940073eaacd17aa29a3a8eceeefc9a77d65552778f7" [label="/bin/sh -c mvn -B -f pom.xml -s /usr/share/maven/ref/settings-docker.xml dependency:resolve" shape="box"];
  "sha256:0051db596177268e3623706f659971f4b82407722b2e5f4808801d9ca85bbd5c" [label="copy{src=/, dest=/usr/src/ddev/}" shape="note"];
  "sha256:4425758650c8df18d31a4cfde468c2e0411b77019764223a346d922d54cfcc57" [label="/bin/sh -c mvn -B -s /usr/share/maven/ref/settings-docker.xml package -DskipTests" shape="box"];
  "sha256:67d38084394fb6dc42ac7781db9ceb024ef84fd07ff84524f6b87731da49c992" [label="copy{src=/usr/src/ddev/target/ddev-0.0.1-SNAPSHOT.jar, dest=/app/}" shape="note"];
  "sha256:200a3d185dbeb1bd202ae50c1ac751c1415806a22fad86ab70ecb729ef8f851a" [label="sha256:200a3d185dbeb1bd202ae50c1ac751c1415806a22fad86ab70ecb729ef8f851a" shape="plaintext"];
  "sha256:fd00ed71cdc48b085b77a9f348ef6d2ccf1b0c5a36f7bac329b050b6d3c0f40d" -> "sha256:6dae426a60e62e9b025388f0e985fa1341bf7f91679385f4e642f5d1a75ea196" [label=""];
  "sha256:6dae426a60e62e9b025388f0e985fa1341bf7f91679385f4e642f5d1a75ea196" -> "sha256:717e55710f9680a8d7b4ada5e9799bb8c6b28a17c0b68e321fb5ab7f674cf021" [label=""];
  "sha256:4dcd2d962f13dc82ebb382b5daf51f670b0647899d4572b1db5f6a5fe174bda4" -> "sha256:8e56db847c9970009c487a4e3129fdddabb57cd4a47de26f93dfa90caf5c6cb8" [label=""];
  "sha256:8e56db847c9970009c487a4e3129fdddabb57cd4a47de26f93dfa90caf5c6cb8" -> "sha256:0bb62bbdc06f7e25b7b5bb5f96310a15a13801bcfa755a659792baa9cd59210b" [label=""];
  "sha256:85ba2fbced79320fdb499e0b303a507c38643eb6bf69df3309005566a7f78a95" -> "sha256:0bb62bbdc06f7e25b7b5bb5f96310a15a13801bcfa755a659792baa9cd59210b" [label=""];
  "sha256:0bb62bbdc06f7e25b7b5bb5f96310a15a13801bcfa755a659792baa9cd59210b" -> "sha256:abf9de97652328d7058bf940073eaacd17aa29a3a8eceeefc9a77d65552778f7" [label=""];
  "sha256:abf9de97652328d7058bf940073eaacd17aa29a3a8eceeefc9a77d65552778f7" -> "sha256:0051db596177268e3623706f659971f4b82407722b2e5f4808801d9ca85bbd5c" [label=""];
  "sha256:85ba2fbced79320fdb499e0b303a507c38643eb6bf69df3309005566a7f78a95" -> "sha256:0051db596177268e3623706f659971f4b82407722b2e5f4808801d9ca85bbd5c" [label=""];
  "sha256:0051db596177268e3623706f659971f4b82407722b2e5f4808801d9ca85bbd5c" -> "sha256:4425758650c8df18d31a4cfde468c2e0411b77019764223a346d922d54cfcc57" [label=""];
  "sha256:717e55710f9680a8d7b4ada5e9799bb8c6b28a17c0b68e321fb5ab7f674cf021" -> "sha256:67d38084394fb6dc42ac7781db9ceb024ef84fd07ff84524f6b87731da49c992" [label=""];
  "sha256:4425758650c8df18d31a4cfde468c2e0411b77019764223a346d922d54cfcc57" -> "sha256:67d38084394fb6dc42ac7781db9ceb024ef84fd07ff84524f6b87731da49c992" [label=""];
  "sha256:67d38084394fb6dc42ac7781db9ceb024ef84fd07ff84524f6b87731da49c992" -> "sha256:200a3d185dbeb1bd202ae50c1ac751c1415806a22fad86ab70ecb729ef8f851a" [label=""];
}

