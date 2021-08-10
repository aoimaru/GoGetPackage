[app/sources/146821027.Dockerfile]
digraph {
  "sha256:a6f55302dd0bd938a871237b8e82518105a6017926bd1b40df4b5f4c413cde87" [label="docker-image://docker.io/amplab/mesos-base:0.13.0" shape="ellipse"];
  "sha256:3dd9e0f138c95afabfea96f0ff255666c6daafeb9634043ade275f6d18e4f19b" [label="local://context" shape="ellipse"];
  "sha256:446aebe7ea4793ee62e56a799e35e8c353d3c08d6521f05d175a910780b07359" [label="copy{src=/files, dest=/root/mesos_master_files}" shape="note"];
  "sha256:3176e8cb0b327eae747840f09bdead300dd61585667cbf93f2509b26a49b0e40" [label="sha256:3176e8cb0b327eae747840f09bdead300dd61585667cbf93f2509b26a49b0e40" shape="plaintext"];
  "sha256:a6f55302dd0bd938a871237b8e82518105a6017926bd1b40df4b5f4c413cde87" -> "sha256:446aebe7ea4793ee62e56a799e35e8c353d3c08d6521f05d175a910780b07359" [label=""];
  "sha256:3dd9e0f138c95afabfea96f0ff255666c6daafeb9634043ade275f6d18e4f19b" -> "sha256:446aebe7ea4793ee62e56a799e35e8c353d3c08d6521f05d175a910780b07359" [label=""];
  "sha256:446aebe7ea4793ee62e56a799e35e8c353d3c08d6521f05d175a910780b07359" -> "sha256:3176e8cb0b327eae747840f09bdead300dd61585667cbf93f2509b26a49b0e40" [label=""];
}

