[app/sources/474559602.Dockerfile]
digraph {
  "sha256:aa71255a74789c040a051283ea6fe313aca6620fdb668059972ffb17299e045f" [label="docker-image://docker.io/jsafrane/nfsexporter:latest" shape="ellipse"];
  "sha256:e3b7d39bcbde5f8095c39b0700c63a62741f3959b08f27df51bff2582e19d9b8" [label="local://context" shape="ellipse"];
  "sha256:c38e86b2052c06fb978be6f989ca326423e9d2b176b8ee1e4b1a95aa3397d83f" [label="copy{src=/index.html, dest=/mnt/data/index.html}" shape="note"];
  "sha256:28c0f5f414c51dc15f8d9449aa467736e5a0137fb66ed6b00446c52a6b032838" [label="sha256:28c0f5f414c51dc15f8d9449aa467736e5a0137fb66ed6b00446c52a6b032838" shape="plaintext"];
  "sha256:aa71255a74789c040a051283ea6fe313aca6620fdb668059972ffb17299e045f" -> "sha256:c38e86b2052c06fb978be6f989ca326423e9d2b176b8ee1e4b1a95aa3397d83f" [label=""];
  "sha256:e3b7d39bcbde5f8095c39b0700c63a62741f3959b08f27df51bff2582e19d9b8" -> "sha256:c38e86b2052c06fb978be6f989ca326423e9d2b176b8ee1e4b1a95aa3397d83f" [label=""];
  "sha256:c38e86b2052c06fb978be6f989ca326423e9d2b176b8ee1e4b1a95aa3397d83f" -> "sha256:28c0f5f414c51dc15f8d9449aa467736e5a0137fb66ed6b00446c52a6b032838" [label=""];
}

