[app/sources/179783697.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:b69fc20bece786b23da4ab63f545de30088b60085eb1b190116efcca374eb93b" [label="/bin/sh -c apt-get update && \tapt-get --yes upgrade && \tapt-get --yes install sudo man git xdg-user-dirs" shape="box"];
  "sha256:3ed257e9ded8fa5e74783db7a60c2660a8431ebb6f28c8aa4d80d239781cab51" [label="/bin/sh -c useradd \t--uid 1000 \t--user-group \t--groups sudo,users \t--create-home \t--password '$1$oZeWxk4p$yD7kDgmEEChHDRjoCDhuc.' \tfellah" shape="box"];
  "sha256:a07a1d9bf472ad4a56f7f71c36395085beb59fa29a98a5d329ea78f600e37c1d" [label="/bin/sh -c xdg-user-dirs-update" shape="box"];
  "sha256:4ea7a183f2da2677b29e1bbca551ccb1e5c4de4d02ba22c08fd4173553f24256" [label="mkdir{path=/home/fellah}" shape="note"];
  "sha256:8135389fff31a1d90e15ae93838da244e51445c5682e8f6af3102f915675a8a4" [label="sha256:8135389fff31a1d90e15ae93838da244e51445c5682e8f6af3102f915675a8a4" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:b69fc20bece786b23da4ab63f545de30088b60085eb1b190116efcca374eb93b" [label=""];
  "sha256:b69fc20bece786b23da4ab63f545de30088b60085eb1b190116efcca374eb93b" -> "sha256:3ed257e9ded8fa5e74783db7a60c2660a8431ebb6f28c8aa4d80d239781cab51" [label=""];
  "sha256:3ed257e9ded8fa5e74783db7a60c2660a8431ebb6f28c8aa4d80d239781cab51" -> "sha256:a07a1d9bf472ad4a56f7f71c36395085beb59fa29a98a5d329ea78f600e37c1d" [label=""];
  "sha256:a07a1d9bf472ad4a56f7f71c36395085beb59fa29a98a5d329ea78f600e37c1d" -> "sha256:4ea7a183f2da2677b29e1bbca551ccb1e5c4de4d02ba22c08fd4173553f24256" [label=""];
  "sha256:4ea7a183f2da2677b29e1bbca551ccb1e5c4de4d02ba22c08fd4173553f24256" -> "sha256:8135389fff31a1d90e15ae93838da244e51445c5682e8f6af3102f915675a8a4" [label=""];
}

