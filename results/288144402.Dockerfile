[app/sources/288144402.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:1860314d60d43a5d65f481b2452044a12d360b00d3027d62f3b22c8f58f9c380" [label="/bin/sh -c apt-get update   && apt-get install -y python3-pip python3-dev   && cd /usr/local/bin   && ln -s /usr/bin/python3 python   && pip3 install --upgrade pip" shape="box"];
  "sha256:f33beb707840549ca188797c6e020d869957f7ea78040818e76cac78aff91377" [label="/bin/sh -c pip install mlaut" shape="box"];
  "sha256:7336ed3d9463e2c60b00f6c53967160a6cf602c1590baa27344ab3a993ce0d85" [label="/bin/sh -c mkdir -p /mlaut/mlaut" shape="box"];
  "sha256:f2c42ad27d898ad08142a421fb57fc46760741ed678d0e9b506c27f250360964" [label="/bin/sh -c mkdir -p mlaut/data" shape="box"];
  "sha256:f3afed8cde449a76d93ea0725dc9f2af8cb82aa693267b4e9afeb95d72f751dc" [label="mkdir{path=/mlaut}" shape="note"];
  "sha256:c65f852a5cb1697992ef25f6c6216c6f79313caf74025002abc9f476d32ff731" [label="sha256:c65f852a5cb1697992ef25f6c6216c6f79313caf74025002abc9f476d32ff731" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:1860314d60d43a5d65f481b2452044a12d360b00d3027d62f3b22c8f58f9c380" [label=""];
  "sha256:1860314d60d43a5d65f481b2452044a12d360b00d3027d62f3b22c8f58f9c380" -> "sha256:f33beb707840549ca188797c6e020d869957f7ea78040818e76cac78aff91377" [label=""];
  "sha256:f33beb707840549ca188797c6e020d869957f7ea78040818e76cac78aff91377" -> "sha256:7336ed3d9463e2c60b00f6c53967160a6cf602c1590baa27344ab3a993ce0d85" [label=""];
  "sha256:7336ed3d9463e2c60b00f6c53967160a6cf602c1590baa27344ab3a993ce0d85" -> "sha256:f2c42ad27d898ad08142a421fb57fc46760741ed678d0e9b506c27f250360964" [label=""];
  "sha256:f2c42ad27d898ad08142a421fb57fc46760741ed678d0e9b506c27f250360964" -> "sha256:f3afed8cde449a76d93ea0725dc9f2af8cb82aa693267b4e9afeb95d72f751dc" [label=""];
  "sha256:f3afed8cde449a76d93ea0725dc9f2af8cb82aa693267b4e9afeb95d72f751dc" -> "sha256:c65f852a5cb1697992ef25f6c6216c6f79313caf74025002abc9f476d32ff731" [label=""];
}

