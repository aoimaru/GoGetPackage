[app/sources/252784822.Dockerfile]
digraph {
  "sha256:57f6260d49f2c499e3b4981497b6c2a9abe5c377157373abc2904f3a33849f13" [label="docker-image://docker.io/library/ubuntu:15.04" shape="ellipse"];
  "sha256:fbf687ccab08a8ab04c6e0becf872aeb101dd3ed155eef8669dfb2cd4412d05e" [label="/bin/sh -c apt-get update && apt-get install -y curl" shape="box"];
  "sha256:0d745159bf80d6221ba80444c1b1d292d3baf1224a57ef60e0a09230062a852c" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_4.x | bash && apt-get install -y nodejs" shape="box"];
  "sha256:595d5abd4606e643699688596d7d435041a85ab8e84adbe6b9187291fb617280" [label="/bin/sh -c apt-get install -y build-essential python git && npm install -g bower" shape="box"];
  "sha256:31842196ae83598db3f71ea3f079b2873d3aa89fcd9aa29351e69cc923d7c962" [label="mkdir{path=/code}" shape="note"];
  "sha256:6ed6a1f405b1719f25f8ad0bb15adb25b54896d6f3def4a065207d25ece04b0d" [label="sha256:6ed6a1f405b1719f25f8ad0bb15adb25b54896d6f3def4a065207d25ece04b0d" shape="plaintext"];
  "sha256:57f6260d49f2c499e3b4981497b6c2a9abe5c377157373abc2904f3a33849f13" -> "sha256:fbf687ccab08a8ab04c6e0becf872aeb101dd3ed155eef8669dfb2cd4412d05e" [label=""];
  "sha256:fbf687ccab08a8ab04c6e0becf872aeb101dd3ed155eef8669dfb2cd4412d05e" -> "sha256:0d745159bf80d6221ba80444c1b1d292d3baf1224a57ef60e0a09230062a852c" [label=""];
  "sha256:0d745159bf80d6221ba80444c1b1d292d3baf1224a57ef60e0a09230062a852c" -> "sha256:595d5abd4606e643699688596d7d435041a85ab8e84adbe6b9187291fb617280" [label=""];
  "sha256:595d5abd4606e643699688596d7d435041a85ab8e84adbe6b9187291fb617280" -> "sha256:31842196ae83598db3f71ea3f079b2873d3aa89fcd9aa29351e69cc923d7c962" [label=""];
  "sha256:31842196ae83598db3f71ea3f079b2873d3aa89fcd9aa29351e69cc923d7c962" -> "sha256:6ed6a1f405b1719f25f8ad0bb15adb25b54896d6f3def4a065207d25ece04b0d" [label=""];
}

