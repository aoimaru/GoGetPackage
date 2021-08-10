[app/sources/158079406.Dockerfile]
digraph {
  "sha256:86886b2cbb73903dac5c27c668c9a341898c2a5025d3080be4d3ab4a2c9ace10" [label="docker-image://gcr.io/google_containers/ubuntu-slim:0.6@sha256:6fce5203ddcbe38d86b396efddd388bd28e1b36ec44deb98af6303397d4c2174" shape="ellipse"];
  "sha256:9831c8acefc413dbc355d8a0a4d22cbc057864aaf8df834a9529c0be1d5b43a9" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends iperf bash   && apt-get clean -y   && rm -rf /var/lib/apt/lists/*   && ln -s /usr/bin/iperf /usr/local/bin/iperf" shape="box"];
  "sha256:9e52dd4d42bd8ffe1be9f8b77a1353aa991f1dafafd3616c6dc5b64e01c2ddae" [label="/bin/sh -c ls -altrh /usr/local/bin/iperf" shape="box"];
  "sha256:e92e088ad7f584760df720444c6ffd29a8f8ad51349cc5cab7b3f892a76eae20" [label="sha256:e92e088ad7f584760df720444c6ffd29a8f8ad51349cc5cab7b3f892a76eae20" shape="plaintext"];
  "sha256:86886b2cbb73903dac5c27c668c9a341898c2a5025d3080be4d3ab4a2c9ace10" -> "sha256:9831c8acefc413dbc355d8a0a4d22cbc057864aaf8df834a9529c0be1d5b43a9" [label=""];
  "sha256:9831c8acefc413dbc355d8a0a4d22cbc057864aaf8df834a9529c0be1d5b43a9" -> "sha256:9e52dd4d42bd8ffe1be9f8b77a1353aa991f1dafafd3616c6dc5b64e01c2ddae" [label=""];
  "sha256:9e52dd4d42bd8ffe1be9f8b77a1353aa991f1dafafd3616c6dc5b64e01c2ddae" -> "sha256:e92e088ad7f584760df720444c6ffd29a8f8ad51349cc5cab7b3f892a76eae20" [label=""];
}

