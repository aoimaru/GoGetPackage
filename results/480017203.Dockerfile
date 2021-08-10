[app/sources/480017203.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:ce33820bf3eafbd9716dbc231b9083baba852595071706118d0bce99b142517d" [label="/bin/sh -c apt-get upgrade -y" shape="box"];
  "sha256:795ea3a9bc7fd95d8fadb13bd6c38fd0087feb742ed138e2cf2d9ab9562ea08d" [label="/bin/sh -c apt-get install -y python-twisted-conch python-twisted-web ruby-sass openssh-client" shape="box"];
  "sha256:be88d9aefe2cd20866831433e330a9613f9e25dc7368b6bb7f27e832edc1fdd8" [label="sha256:be88d9aefe2cd20866831433e330a9613f9e25dc7368b6bb7f27e832edc1fdd8" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:ce33820bf3eafbd9716dbc231b9083baba852595071706118d0bce99b142517d" [label=""];
  "sha256:ce33820bf3eafbd9716dbc231b9083baba852595071706118d0bce99b142517d" -> "sha256:795ea3a9bc7fd95d8fadb13bd6c38fd0087feb742ed138e2cf2d9ab9562ea08d" [label=""];
  "sha256:795ea3a9bc7fd95d8fadb13bd6c38fd0087feb742ed138e2cf2d9ab9562ea08d" -> "sha256:be88d9aefe2cd20866831433e330a9613f9e25dc7368b6bb7f27e832edc1fdd8" [label=""];
}

