[app/sources/174122412.Dockerfile]
digraph {
  "sha256:ff54b911c7a390dfe86ae6f4b0639f973aa4c7cf435b6404f2724e915f3a7023" [label="docker-image://docker.io/grahamdumpleton/mod-wsgi-docker:python-3.5" shape="ellipse"];
  "sha256:a62f5d068ab3aaad669e9f9ac40207ae23e1dc7049a95ab3f2c061243cce3351" [label="mkdir{path=/app}" shape="note"];
  "sha256:292f72463d732617c45392106955e342da9898aa4bae1642807e1d5f80faef7b" [label="sha256:292f72463d732617c45392106955e342da9898aa4bae1642807e1d5f80faef7b" shape="plaintext"];
  "sha256:ff54b911c7a390dfe86ae6f4b0639f973aa4c7cf435b6404f2724e915f3a7023" -> "sha256:a62f5d068ab3aaad669e9f9ac40207ae23e1dc7049a95ab3f2c061243cce3351" [label=""];
  "sha256:a62f5d068ab3aaad669e9f9ac40207ae23e1dc7049a95ab3f2c061243cce3351" -> "sha256:292f72463d732617c45392106955e342da9898aa4bae1642807e1d5f80faef7b" [label=""];
}

