[app/sources/478230300.Dockerfile]
digraph {
  "sha256:c05227f4a57800c259745c0f5995d653d9994dcc049be92f3340608d0e914458" [label="docker-image://docker.io/berlius/artificial-intelligence-gpu:latest" shape="ellipse"];
  "sha256:ce6e77444b449ed66a3a604548544a7c06f44863bdd5d45e2c87fdc19200c514" [label="/bin/sh -c add-apt-repository ppa:openjdk-r/ppa" shape="box"];
  "sha256:3870527c3240d5a2cb4d9d22290ed67c84e993e35eaa947cdf704b37f1584f26" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:03e14b24f041450228b6f33e22bbea624b183f9ae5c3cd383d4ea42b4be8a3a4" [label="/bin/sh -c apt-get install -y openjdk-8-jdk" shape="box"];
  "sha256:0202ba617a35c4d64bcdd50966c1bdf90636eacffca799de9883d31073335d4b" [label="/bin/sh -c update-ca-certificates -f" shape="box"];
  "sha256:c2af7455bd43c8fbebb8469a7e3799abcc109cfe9717f438130999c4b324ac6e" [label="mkdir{path=/root}" shape="note"];
  "sha256:c733ed20448dfe613e2b3258d208e8f553ed6da59c7e1691108b34d54d3ef61b" [label="sha256:c733ed20448dfe613e2b3258d208e8f553ed6da59c7e1691108b34d54d3ef61b" shape="plaintext"];
  "sha256:c05227f4a57800c259745c0f5995d653d9994dcc049be92f3340608d0e914458" -> "sha256:ce6e77444b449ed66a3a604548544a7c06f44863bdd5d45e2c87fdc19200c514" [label=""];
  "sha256:ce6e77444b449ed66a3a604548544a7c06f44863bdd5d45e2c87fdc19200c514" -> "sha256:3870527c3240d5a2cb4d9d22290ed67c84e993e35eaa947cdf704b37f1584f26" [label=""];
  "sha256:3870527c3240d5a2cb4d9d22290ed67c84e993e35eaa947cdf704b37f1584f26" -> "sha256:03e14b24f041450228b6f33e22bbea624b183f9ae5c3cd383d4ea42b4be8a3a4" [label=""];
  "sha256:03e14b24f041450228b6f33e22bbea624b183f9ae5c3cd383d4ea42b4be8a3a4" -> "sha256:0202ba617a35c4d64bcdd50966c1bdf90636eacffca799de9883d31073335d4b" [label=""];
  "sha256:0202ba617a35c4d64bcdd50966c1bdf90636eacffca799de9883d31073335d4b" -> "sha256:c2af7455bd43c8fbebb8469a7e3799abcc109cfe9717f438130999c4b324ac6e" [label=""];
  "sha256:c2af7455bd43c8fbebb8469a7e3799abcc109cfe9717f438130999c4b324ac6e" -> "sha256:c733ed20448dfe613e2b3258d208e8f553ed6da59c7e1691108b34d54d3ef61b" [label=""];
}

