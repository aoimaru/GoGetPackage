[app/sources/258546899.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:ff86d2c749abab42003bd4541a4f259e007cdeb284612ae8a6d70b7dc05ba0cd" [label="/bin/sh -c apt-get update && apt-get install znc -y" shape="box"];
  "sha256:f8aa28a6c2fc24bfb6cb0aeb8fc41b1090167303a19f6f041831220dddc0354e" [label="local://context" shape="ellipse"];
  "sha256:25f3aa185a87436c69f5735b99a2c746d60b6bffed1c22e2e808e2f874899f2e" [label="copy{src=/conf, dest=/.znc}" shape="note"];
  "sha256:30006b300885a73bb2859f75e93c55ffb1be1a5702520ca8f175f57009f481d2" [label="sha256:30006b300885a73bb2859f75e93c55ffb1be1a5702520ca8f175f57009f481d2" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:ff86d2c749abab42003bd4541a4f259e007cdeb284612ae8a6d70b7dc05ba0cd" [label=""];
  "sha256:ff86d2c749abab42003bd4541a4f259e007cdeb284612ae8a6d70b7dc05ba0cd" -> "sha256:25f3aa185a87436c69f5735b99a2c746d60b6bffed1c22e2e808e2f874899f2e" [label=""];
  "sha256:f8aa28a6c2fc24bfb6cb0aeb8fc41b1090167303a19f6f041831220dddc0354e" -> "sha256:25f3aa185a87436c69f5735b99a2c746d60b6bffed1c22e2e808e2f874899f2e" [label=""];
  "sha256:25f3aa185a87436c69f5735b99a2c746d60b6bffed1c22e2e808e2f874899f2e" -> "sha256:30006b300885a73bb2859f75e93c55ffb1be1a5702520ca8f175f57009f481d2" [label=""];
}

