[app/sources/238249584.Dockerfile]
digraph {
  "sha256:5462d7d68a600120b3bfa9271c8d3deca6a34f6e140c50d1d7b76eece9791449" [label="docker-image://docker.io/arm32v7/python:3.6.8-stretch@sha256:a34f017aa58f6f37968cc23420c6dc8376ed6e50d5960aa67d0b5d4a02b140fd" shape="ellipse"];
  "sha256:7e2c99a87677ea272d28c293bec71b9a908a9c7371da60434e323eb5045bbf0b" [label="local://context" shape="ellipse"];
  "sha256:f712cca5b468ea0c44e7cd47bc0e243da673e795c07b4fe26066647de10ece1d" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:be6384e79259229b63718146084d75ae6fd3049e3368c959f362ef0e8a0fc4e9" [label="mkdir{path=/app}" shape="note"];
  "sha256:1c0b34ab3be5b6f46b5ed3ee64ef30cafd6b3b9f4ec732eb8254b7512e727bf5" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:a1d2e92644c756ec302823aa46f852e6f1011d3cd5909e4f103c18ef5be6f4f4" [label="sha256:a1d2e92644c756ec302823aa46f852e6f1011d3cd5909e4f103c18ef5be6f4f4" shape="plaintext"];
  "sha256:5462d7d68a600120b3bfa9271c8d3deca6a34f6e140c50d1d7b76eece9791449" -> "sha256:f712cca5b468ea0c44e7cd47bc0e243da673e795c07b4fe26066647de10ece1d" [label=""];
  "sha256:7e2c99a87677ea272d28c293bec71b9a908a9c7371da60434e323eb5045bbf0b" -> "sha256:f712cca5b468ea0c44e7cd47bc0e243da673e795c07b4fe26066647de10ece1d" [label=""];
  "sha256:f712cca5b468ea0c44e7cd47bc0e243da673e795c07b4fe26066647de10ece1d" -> "sha256:be6384e79259229b63718146084d75ae6fd3049e3368c959f362ef0e8a0fc4e9" [label=""];
  "sha256:be6384e79259229b63718146084d75ae6fd3049e3368c959f362ef0e8a0fc4e9" -> "sha256:1c0b34ab3be5b6f46b5ed3ee64ef30cafd6b3b9f4ec732eb8254b7512e727bf5" [label=""];
  "sha256:1c0b34ab3be5b6f46b5ed3ee64ef30cafd6b3b9f4ec732eb8254b7512e727bf5" -> "sha256:a1d2e92644c756ec302823aa46f852e6f1011d3cd5909e4f103c18ef5be6f4f4" [label=""];
}

