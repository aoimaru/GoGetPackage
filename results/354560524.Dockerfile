[app/sources/354560524.Dockerfile]
digraph {
  "sha256:64912de44cf38e06dc750ea2bade09123e107bfd3d6a04ddba375970429b32db" [label="docker-image://mcr.microsoft.com/windows/nanoserver:sac2016@sha256:2b783310e6c82de737e893abd53ae238ca56b5a96e2861558fb9a111d6691ddb" shape="ellipse"];
  "sha256:d7c251dfc96bada0334ead9e420d2d956822b4cf1635a78f4afec5d0fe41e0e5" [label="https://github.com/containous/traefik/releases/download/v1.7.12/traefik_windows-amd64.exe" shape="ellipse"];
  "sha256:b79f7687587a1f94cf1f6b80ffbeb5c966173bb3c83afe8460ef597f5845fc54" [label="copy{src=/traefik_windows-amd64.exe, dest=/traefik.exe}" shape="note"];
  "sha256:44dad2e7ebbd523b46899133cbf8e1a4825dec14631280dc1e719b3cdfb4b1eb" [label="sha256:44dad2e7ebbd523b46899133cbf8e1a4825dec14631280dc1e719b3cdfb4b1eb" shape="plaintext"];
  "sha256:64912de44cf38e06dc750ea2bade09123e107bfd3d6a04ddba375970429b32db" -> "sha256:b79f7687587a1f94cf1f6b80ffbeb5c966173bb3c83afe8460ef597f5845fc54" [label=""];
  "sha256:d7c251dfc96bada0334ead9e420d2d956822b4cf1635a78f4afec5d0fe41e0e5" -> "sha256:b79f7687587a1f94cf1f6b80ffbeb5c966173bb3c83afe8460ef597f5845fc54" [label=""];
  "sha256:b79f7687587a1f94cf1f6b80ffbeb5c966173bb3c83afe8460ef597f5845fc54" -> "sha256:44dad2e7ebbd523b46899133cbf8e1a4825dec14631280dc1e719b3cdfb4b1eb" [label=""];
}

