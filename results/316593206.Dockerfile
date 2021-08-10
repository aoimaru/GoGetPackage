[app/sources/316593206.Dockerfile]
digraph {
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" [label="docker-image://docker.io/microsoft/dotnet:2.2-aspnetcore-runtime" shape="ellipse"];
  "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" [label="mkdir{path=/app}" shape="note"];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" [label="docker-image://docker.io/microsoft/dotnet:2.2-sdk" shape="ellipse"];
  "sha256:a9ea5180fe45786bda172c328680412ddf09c9337393169956d4afc82128dae4" [label="mkdir{path=/app}" shape="note"];
  "sha256:27926c7387a3d252cc0a62e654093b36b85198f0a4979076dd601046e3fbc3cd" [label="local://context" shape="ellipse"];
  "sha256:4c7e3807bd63b903e541f7f6f30a8ad28967d0b8a93f4acae27d5f18b0a72c62" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:640c23cb3f473c694e385cfae69c9f93a13c9d06087aa756f03b13526d446eb9" [label="/bin/sh -c dotnet publish -c Release -o out" shape="box"];
  "sha256:2fa680d6403aa8b4d6e9c26854db6b334b1d9707ccf15a1522004453df835c1a" [label="copy{src=/app/ShareBook.Api/out, dest=/app/}" shape="note"];
  "sha256:717d5f3cd7e8c16e47073b7bb23a8c6f4017d58e34a0b90c1563ed64bdb8254f" [label="sha256:717d5f3cd7e8c16e47073b7bb23a8c6f4017d58e34a0b90c1563ed64bdb8254f" shape="plaintext"];
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" -> "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" [label=""];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" -> "sha256:a9ea5180fe45786bda172c328680412ddf09c9337393169956d4afc82128dae4" [label=""];
  "sha256:a9ea5180fe45786bda172c328680412ddf09c9337393169956d4afc82128dae4" -> "sha256:4c7e3807bd63b903e541f7f6f30a8ad28967d0b8a93f4acae27d5f18b0a72c62" [label=""];
  "sha256:27926c7387a3d252cc0a62e654093b36b85198f0a4979076dd601046e3fbc3cd" -> "sha256:4c7e3807bd63b903e541f7f6f30a8ad28967d0b8a93f4acae27d5f18b0a72c62" [label=""];
  "sha256:4c7e3807bd63b903e541f7f6f30a8ad28967d0b8a93f4acae27d5f18b0a72c62" -> "sha256:640c23cb3f473c694e385cfae69c9f93a13c9d06087aa756f03b13526d446eb9" [label=""];
  "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" -> "sha256:2fa680d6403aa8b4d6e9c26854db6b334b1d9707ccf15a1522004453df835c1a" [label=""];
  "sha256:640c23cb3f473c694e385cfae69c9f93a13c9d06087aa756f03b13526d446eb9" -> "sha256:2fa680d6403aa8b4d6e9c26854db6b334b1d9707ccf15a1522004453df835c1a" [label=""];
  "sha256:2fa680d6403aa8b4d6e9c26854db6b334b1d9707ccf15a1522004453df835c1a" -> "sha256:717d5f3cd7e8c16e47073b7bb23a8c6f4017d58e34a0b90c1563ed64bdb8254f" [label=""];
}

