[app/sources/349761282.Dockerfile]
digraph {
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" [label="docker-image://docker.io/library/java:7" shape="ellipse"];
  "sha256:cb20faa8003e866599f83af916ebfbc1d97f98a703c59fbc6850ec90f5abb4b9" [label="local://context" shape="ellipse"];
  "sha256:4f7f309569703ed5b8d319f8335bebacdfbfaf86a9b449c15d4067a116dbbb9e" [label="copy{src=/eureka-0.0.1-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:0494c850671f5ae08fd23fa81b005a87d08c11eb6f8596885c0278f058e1e166" [label="/bin/sh -c bash -c 'touch /app.jar'" shape="box"];
  "sha256:f53270c6678795cb64c63f088768083c28a3582cac32efe8e4868c4f7191ebf5" [label="sha256:f53270c6678795cb64c63f088768083c28a3582cac32efe8e4868c4f7191ebf5" shape="plaintext"];
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" -> "sha256:4f7f309569703ed5b8d319f8335bebacdfbfaf86a9b449c15d4067a116dbbb9e" [label=""];
  "sha256:cb20faa8003e866599f83af916ebfbc1d97f98a703c59fbc6850ec90f5abb4b9" -> "sha256:4f7f309569703ed5b8d319f8335bebacdfbfaf86a9b449c15d4067a116dbbb9e" [label=""];
  "sha256:4f7f309569703ed5b8d319f8335bebacdfbfaf86a9b449c15d4067a116dbbb9e" -> "sha256:0494c850671f5ae08fd23fa81b005a87d08c11eb6f8596885c0278f058e1e166" [label=""];
  "sha256:0494c850671f5ae08fd23fa81b005a87d08c11eb6f8596885c0278f058e1e166" -> "sha256:f53270c6678795cb64c63f088768083c28a3582cac32efe8e4868c4f7191ebf5" [label=""];
}

