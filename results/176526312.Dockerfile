[app/sources/176526312.Dockerfile]
digraph {
  "sha256:7a2cabfa6fd31588a5745551460722a91dfa8c9050458d6ae87b7fb94bc265c6" [label="docker-image://docker.io/library/python:3.8.0a3-alpine3.9" shape="ellipse"];
  "sha256:1a598ef34012be9c1c657d447af85e03a419d46a069dadf4d8888774d4d510a0" [label="/bin/sh -c apk --no-cache update &&     apk --no-cache add ca-certificates groff less &&     pip3 --no-cache-dir install awscli==${AWS_CLI_VERSION} &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:f96daf5f584296b25e095898ee8d414e946f0356bc04353e9fb84305bfc0062a" [label="mkdir{path=/data}" shape="note"];
  "sha256:59105e221316fc584b2bb0437b5d0799f1ee89aa55ddf6e1cfa1d151051c6809" [label="sha256:59105e221316fc584b2bb0437b5d0799f1ee89aa55ddf6e1cfa1d151051c6809" shape="plaintext"];
  "sha256:7a2cabfa6fd31588a5745551460722a91dfa8c9050458d6ae87b7fb94bc265c6" -> "sha256:1a598ef34012be9c1c657d447af85e03a419d46a069dadf4d8888774d4d510a0" [label=""];
  "sha256:1a598ef34012be9c1c657d447af85e03a419d46a069dadf4d8888774d4d510a0" -> "sha256:f96daf5f584296b25e095898ee8d414e946f0356bc04353e9fb84305bfc0062a" [label=""];
  "sha256:f96daf5f584296b25e095898ee8d414e946f0356bc04353e9fb84305bfc0062a" -> "sha256:59105e221316fc584b2bb0437b5d0799f1ee89aa55ddf6e1cfa1d151051c6809" [label=""];
}

