[app/sources/252776860.Dockerfile]
digraph {
  "sha256:c8da6839d8ddc07cfcc20f320d59f6027e41b2d13257af5c46c28f049b63532f" [label="docker-image://docker.io/cdata/minecraft:1.7.2" shape="ellipse"];
  "sha256:88d2ec5ce756446b5d846e1cdbfafac21c7102b287450a6e59fc089aefa8e793" [label="local://context" shape="ellipse"];
  "sha256:7b73b143e36b2c598bd8cfa8e91596aee7d641867391a800b84b3b98e7dcb88e" [label="copy{src=/playbook.yml, dest=/build/playbook.yml}" shape="note"];
  "sha256:d53fd9fd6e7c6299ad9831ef42fac3133648dc74a19294ec99debde233fa0979" [label="copy{src=/roles, dest=/build/roles}" shape="note"];
  "sha256:0bc9d83c1c5a834bee9f92fa05682f145a6b5d94b735fe21129a8a3d4381bc08" [label="/bin/sh -c ansible-playbook $BUILDDIR/playbook.yml -c local" shape="box"];
  "sha256:6a539a02a5f9dbad5566985e8e045a6679efb7678d3f7702660d47262b16a6b8" [label="sha256:6a539a02a5f9dbad5566985e8e045a6679efb7678d3f7702660d47262b16a6b8" shape="plaintext"];
  "sha256:c8da6839d8ddc07cfcc20f320d59f6027e41b2d13257af5c46c28f049b63532f" -> "sha256:7b73b143e36b2c598bd8cfa8e91596aee7d641867391a800b84b3b98e7dcb88e" [label=""];
  "sha256:88d2ec5ce756446b5d846e1cdbfafac21c7102b287450a6e59fc089aefa8e793" -> "sha256:7b73b143e36b2c598bd8cfa8e91596aee7d641867391a800b84b3b98e7dcb88e" [label=""];
  "sha256:7b73b143e36b2c598bd8cfa8e91596aee7d641867391a800b84b3b98e7dcb88e" -> "sha256:d53fd9fd6e7c6299ad9831ef42fac3133648dc74a19294ec99debde233fa0979" [label=""];
  "sha256:88d2ec5ce756446b5d846e1cdbfafac21c7102b287450a6e59fc089aefa8e793" -> "sha256:d53fd9fd6e7c6299ad9831ef42fac3133648dc74a19294ec99debde233fa0979" [label=""];
  "sha256:d53fd9fd6e7c6299ad9831ef42fac3133648dc74a19294ec99debde233fa0979" -> "sha256:0bc9d83c1c5a834bee9f92fa05682f145a6b5d94b735fe21129a8a3d4381bc08" [label=""];
  "sha256:0bc9d83c1c5a834bee9f92fa05682f145a6b5d94b735fe21129a8a3d4381bc08" -> "sha256:6a539a02a5f9dbad5566985e8e045a6679efb7678d3f7702660d47262b16a6b8" [label=""];
}

