[app/sources/285655860.Dockerfile]
digraph {
  "sha256:539680138299151bc5c88eebbabdf3860de54121c76ba4e7fcaec0fc5dcfd699" [label="docker-image://docker.io/library/fedora:27" shape="ellipse"];
  "sha256:ea0d323a57c8a719ccffcb818787ea4d630fd56abbd2204756bec132fb696a16" [label="local://context" shape="ellipse"];
  "sha256:d54ea6405ca0c7a58d5ffafa4a6d4215e1646def9f7aa3e2b078b8258b29f928" [label="copy{src=/kvm, dest=/kvm}" shape="note"];
  "sha256:8ac62435a4e2241a3e26d3f8d5941430641f3614092d762c49528d87b2547b52" [label="sha256:8ac62435a4e2241a3e26d3f8d5941430641f3614092d762c49528d87b2547b52" shape="plaintext"];
  "sha256:539680138299151bc5c88eebbabdf3860de54121c76ba4e7fcaec0fc5dcfd699" -> "sha256:d54ea6405ca0c7a58d5ffafa4a6d4215e1646def9f7aa3e2b078b8258b29f928" [label=""];
  "sha256:ea0d323a57c8a719ccffcb818787ea4d630fd56abbd2204756bec132fb696a16" -> "sha256:d54ea6405ca0c7a58d5ffafa4a6d4215e1646def9f7aa3e2b078b8258b29f928" [label=""];
  "sha256:d54ea6405ca0c7a58d5ffafa4a6d4215e1646def9f7aa3e2b078b8258b29f928" -> "sha256:8ac62435a4e2241a3e26d3f8d5941430641f3614092d762c49528d87b2547b52" [label=""];
}

