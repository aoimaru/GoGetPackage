[app/sources/252780478.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:5eadcda1f561b17076ff82b69aa1b23d3de49f9ad00814d05da6902c79fce506" [label="local://context" shape="ellipse"];
  "sha256:d1e91a01579e3082bb45956e58915cf27b523f9c29413b48860593ff30f6928e" [label="copy{src=/--from=build, dest=/usr/local/bin/sensor_exporter},copy{src=/go/bin/sensor_exporter, dest=/usr/local/bin/sensor_exporter}" shape="note"];
  "sha256:96bede738b83a99d17bf086632fdabeacbd2f73bff95a1f92b71f66271e380b9" [label="sha256:96bede738b83a99d17bf086632fdabeacbd2f73bff95a1f92b71f66271e380b9" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:d1e91a01579e3082bb45956e58915cf27b523f9c29413b48860593ff30f6928e" [label=""];
  "sha256:5eadcda1f561b17076ff82b69aa1b23d3de49f9ad00814d05da6902c79fce506" -> "sha256:d1e91a01579e3082bb45956e58915cf27b523f9c29413b48860593ff30f6928e" [label=""];
  "sha256:d1e91a01579e3082bb45956e58915cf27b523f9c29413b48860593ff30f6928e" -> "sha256:96bede738b83a99d17bf086632fdabeacbd2f73bff95a1f92b71f66271e380b9" [label=""];
}

