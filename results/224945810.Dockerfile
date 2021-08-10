[app/sources/224945810.Dockerfile]
digraph {
  "sha256:78e1eb290bd11f46e3bb25fc0bbef6d91ff841af6c113ec11eb890cf2d87c82e" [label="docker-image://docker.io/scorpil/rust:1.10" shape="ellipse"];
  "sha256:72ea491028fd9b23d914191870d580f6f9aac8d58096ed621d8aa88539308726" [label="/bin/sh -c mkdir -p /rust/app" shape="box"];
  "sha256:4b52161dd058267a6bd03b5102756c88f4939a1345244d16ab11922b5ea9ce57" [label="mkdir{path=/rust/app}" shape="note"];
  "sha256:c6122de212a53c6e61835afa943fc1942e4aff95a3f9731045fc117cd42ffaf4" [label="sha256:c6122de212a53c6e61835afa943fc1942e4aff95a3f9731045fc117cd42ffaf4" shape="plaintext"];
  "sha256:78e1eb290bd11f46e3bb25fc0bbef6d91ff841af6c113ec11eb890cf2d87c82e" -> "sha256:72ea491028fd9b23d914191870d580f6f9aac8d58096ed621d8aa88539308726" [label=""];
  "sha256:72ea491028fd9b23d914191870d580f6f9aac8d58096ed621d8aa88539308726" -> "sha256:4b52161dd058267a6bd03b5102756c88f4939a1345244d16ab11922b5ea9ce57" [label=""];
  "sha256:4b52161dd058267a6bd03b5102756c88f4939a1345244d16ab11922b5ea9ce57" -> "sha256:c6122de212a53c6e61835afa943fc1942e4aff95a3f9731045fc117cd42ffaf4" [label=""];
}

