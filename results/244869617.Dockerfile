[app/sources/244869617.Dockerfile]
digraph {
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" [label="docker-image://docker.io/library/node:boron" shape="ellipse"];
  "sha256:e98f3ecd9907fd703f77a7b8425667be658d74a9ce9a8201b022e71fa181e349" [label="/bin/sh -c mkdir -p /usr/src/app1" shape="box"];
  "sha256:0e1c903d48ffdc56e969ffda78cee04a1b8f77d1628ec2680f6721227b1a13bb" [label="mkdir{path=/usr/src/app1}" shape="note"];
  "sha256:99797bca5cdc214e67b2f852091b0d0f080b41c9581092f6edc9212aaacd237a" [label="local://context" shape="ellipse"];
  "sha256:fa8fe3efbf69381a564839dd0adf1e0912cc88c2c313d34b9182256efda9894e" [label="copy{src=/package.json, dest=/usr/src/app1/}" shape="note"];
  "sha256:4ac87f38a0c81353ed45178b77fc38634cebefe79e2dc2350195d2634e61bb2a" [label="/bin/sh -c npm install" shape="box"];
  "sha256:5e424d91966388eb82361f5d20631c9598b3b4e4a74f93504caa67839aeb8282" [label="copy{src=/, dest=/usr/src/app1}" shape="note"];
  "sha256:4676ac081ae926f248fbbcccf9083eb6ba2314e826be956c28a3ede22686c4b2" [label="sha256:4676ac081ae926f248fbbcccf9083eb6ba2314e826be956c28a3ede22686c4b2" shape="plaintext"];
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" -> "sha256:e98f3ecd9907fd703f77a7b8425667be658d74a9ce9a8201b022e71fa181e349" [label=""];
  "sha256:e98f3ecd9907fd703f77a7b8425667be658d74a9ce9a8201b022e71fa181e349" -> "sha256:0e1c903d48ffdc56e969ffda78cee04a1b8f77d1628ec2680f6721227b1a13bb" [label=""];
  "sha256:0e1c903d48ffdc56e969ffda78cee04a1b8f77d1628ec2680f6721227b1a13bb" -> "sha256:fa8fe3efbf69381a564839dd0adf1e0912cc88c2c313d34b9182256efda9894e" [label=""];
  "sha256:99797bca5cdc214e67b2f852091b0d0f080b41c9581092f6edc9212aaacd237a" -> "sha256:fa8fe3efbf69381a564839dd0adf1e0912cc88c2c313d34b9182256efda9894e" [label=""];
  "sha256:fa8fe3efbf69381a564839dd0adf1e0912cc88c2c313d34b9182256efda9894e" -> "sha256:4ac87f38a0c81353ed45178b77fc38634cebefe79e2dc2350195d2634e61bb2a" [label=""];
  "sha256:4ac87f38a0c81353ed45178b77fc38634cebefe79e2dc2350195d2634e61bb2a" -> "sha256:5e424d91966388eb82361f5d20631c9598b3b4e4a74f93504caa67839aeb8282" [label=""];
  "sha256:99797bca5cdc214e67b2f852091b0d0f080b41c9581092f6edc9212aaacd237a" -> "sha256:5e424d91966388eb82361f5d20631c9598b3b4e4a74f93504caa67839aeb8282" [label=""];
  "sha256:5e424d91966388eb82361f5d20631c9598b3b4e4a74f93504caa67839aeb8282" -> "sha256:4676ac081ae926f248fbbcccf9083eb6ba2314e826be956c28a3ede22686c4b2" [label=""];
}

