[app/sources/268084378.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:35e5c5f5c7fd9bd945af24bafa5a9379c95f03006bded3d3a9a6c5982ac6db23" [label="/bin/sh -c apt-get update &&     apt-get install -y curl ca-certificates amqp-tools python        --no-install-recommends     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7095a7905c703738149a76e00d3f1538ccf80a4b3421f295a4f3743bbe97316b" [label="local://context" shape="ellipse"];
  "sha256:3687e9f1f17a82856017dc4dd9ab2a29c02f7d7e94730d1f346099a93620301e" [label="copy{src=/worker.py, dest=/worker.py}" shape="note"];
  "sha256:acc7d4a68d53710ede50190cd25dd9f998d2be79a821a842a6c5b00c93b222e2" [label="sha256:acc7d4a68d53710ede50190cd25dd9f998d2be79a821a842a6c5b00c93b222e2" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:35e5c5f5c7fd9bd945af24bafa5a9379c95f03006bded3d3a9a6c5982ac6db23" [label=""];
  "sha256:35e5c5f5c7fd9bd945af24bafa5a9379c95f03006bded3d3a9a6c5982ac6db23" -> "sha256:3687e9f1f17a82856017dc4dd9ab2a29c02f7d7e94730d1f346099a93620301e" [label=""];
  "sha256:7095a7905c703738149a76e00d3f1538ccf80a4b3421f295a4f3743bbe97316b" -> "sha256:3687e9f1f17a82856017dc4dd9ab2a29c02f7d7e94730d1f346099a93620301e" [label=""];
  "sha256:3687e9f1f17a82856017dc4dd9ab2a29c02f7d7e94730d1f346099a93620301e" -> "sha256:acc7d4a68d53710ede50190cd25dd9f998d2be79a821a842a6c5b00c93b222e2" [label=""];
}

