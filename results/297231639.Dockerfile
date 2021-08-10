[app/sources/297231639.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:52a0fa292ba6aede7beae4f536b48ae9c5e6c8f111c069ca595c33eb046910b1" [label="local://context" shape="ellipse"];
  "sha256:108e322815dc40169ab40e17659aca6f28e2758602c1112cb8968dc31a64b5e1" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:11b1bc94da9cbc9983c0506ed8829e4e2cd36f21e0b39013c3059133916e7e14" [label="sha256:11b1bc94da9cbc9983c0506ed8829e4e2cd36f21e0b39013c3059133916e7e14" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:108e322815dc40169ab40e17659aca6f28e2758602c1112cb8968dc31a64b5e1" [label=""];
  "sha256:52a0fa292ba6aede7beae4f536b48ae9c5e6c8f111c069ca595c33eb046910b1" -> "sha256:108e322815dc40169ab40e17659aca6f28e2758602c1112cb8968dc31a64b5e1" [label=""];
  "sha256:108e322815dc40169ab40e17659aca6f28e2758602c1112cb8968dc31a64b5e1" -> "sha256:11b1bc94da9cbc9983c0506ed8829e4e2cd36f21e0b39013c3059133916e7e14" [label=""];
}

