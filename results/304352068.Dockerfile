[app/sources/304352068.Dockerfile]
digraph {
  "sha256:7f670e1a6bb02dd668fe77e71fa969ebf9cab6986fd14756db85a143ffb0a222" [label="local://context" shape="ellipse"];
  "sha256:0fa87faa0ef543ffd66fdd6e9411d39b9314ca807bfd02fa1282228d3de77a6e" [label="docker-image://docker.io/library/python:3-slim" shape="ellipse"];
  "sha256:3b350bde8b79c8867501e493453de145fcde72e301e5e27b13fb877d09171dae" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:2808629095811bf6f2cf4d3c996a1bd4e7c80c929908c4b013e1387081620ada" [label="copy{src=/requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:8cfd29232b6018b574f6c27fd1ab0b6f478a7ecdcee60e9b2bb62e6e5e7de174" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:2a7dcc181adf98853252bc910deb90fc09751f6c50c9a2e6527e7a0dd1fc24e6" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:c085ed203b7a743e625ac3629575b36d63657f7ac3a28c4be176ea3b21f72fe2" [label="sha256:c085ed203b7a743e625ac3629575b36d63657f7ac3a28c4be176ea3b21f72fe2" shape="plaintext"];
  "sha256:0fa87faa0ef543ffd66fdd6e9411d39b9314ca807bfd02fa1282228d3de77a6e" -> "sha256:3b350bde8b79c8867501e493453de145fcde72e301e5e27b13fb877d09171dae" [label=""];
  "sha256:3b350bde8b79c8867501e493453de145fcde72e301e5e27b13fb877d09171dae" -> "sha256:2808629095811bf6f2cf4d3c996a1bd4e7c80c929908c4b013e1387081620ada" [label=""];
  "sha256:7f670e1a6bb02dd668fe77e71fa969ebf9cab6986fd14756db85a143ffb0a222" -> "sha256:2808629095811bf6f2cf4d3c996a1bd4e7c80c929908c4b013e1387081620ada" [label=""];
  "sha256:2808629095811bf6f2cf4d3c996a1bd4e7c80c929908c4b013e1387081620ada" -> "sha256:8cfd29232b6018b574f6c27fd1ab0b6f478a7ecdcee60e9b2bb62e6e5e7de174" [label=""];
  "sha256:8cfd29232b6018b574f6c27fd1ab0b6f478a7ecdcee60e9b2bb62e6e5e7de174" -> "sha256:2a7dcc181adf98853252bc910deb90fc09751f6c50c9a2e6527e7a0dd1fc24e6" [label=""];
  "sha256:7f670e1a6bb02dd668fe77e71fa969ebf9cab6986fd14756db85a143ffb0a222" -> "sha256:2a7dcc181adf98853252bc910deb90fc09751f6c50c9a2e6527e7a0dd1fc24e6" [label=""];
  "sha256:2a7dcc181adf98853252bc910deb90fc09751f6c50c9a2e6527e7a0dd1fc24e6" -> "sha256:c085ed203b7a743e625ac3629575b36d63657f7ac3a28c4be176ea3b21f72fe2" [label=""];
}

