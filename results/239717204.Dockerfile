[app/sources/239717204.Dockerfile]
digraph {
  "sha256:414cd28b99837ee127173add3b2718a4d83d6ecc4b5f169a17d3c6bbd22a83a0" [label="docker-image://docker.io/egovio/apline-jre:8u121" shape="ellipse"];
  "sha256:7b07d9f5e00c8d2d1b6abe042f7661824902e8505d30b155d7eb0fd5dcc06f68" [label="local://context" shape="ellipse"];
  "sha256:ebb7080899d3819a98b6d7ecb69072a6df2409b55b46c50f4a25ce9267ab5e25" [label="copy{src=/target/hr-masters-v2-0.0.1-SNAPSHOT.jar, dest=/opt/egov/hr-masters-v2.jar}" shape="note"];
  "sha256:d74e89ce2c6ef5da33ef2c4ff198d40939e1af8669204e08eeaa2b18522293c5" [label="copy{src=/start.sh, dest=/usr/bin/start.sh}" shape="note"];
  "sha256:30633524bd337207141caaafb3a8a218d45604f5c9826c2f476018c9f710d4c2" [label="/bin/sh -c chmod +x /usr/bin/start.sh" shape="box"];
  "sha256:31dd439d5b40d16d1807d38d439fedbb4a929ef6bbf666755ca90c3f2ff13495" [label="sha256:31dd439d5b40d16d1807d38d439fedbb4a929ef6bbf666755ca90c3f2ff13495" shape="plaintext"];
  "sha256:414cd28b99837ee127173add3b2718a4d83d6ecc4b5f169a17d3c6bbd22a83a0" -> "sha256:ebb7080899d3819a98b6d7ecb69072a6df2409b55b46c50f4a25ce9267ab5e25" [label=""];
  "sha256:7b07d9f5e00c8d2d1b6abe042f7661824902e8505d30b155d7eb0fd5dcc06f68" -> "sha256:ebb7080899d3819a98b6d7ecb69072a6df2409b55b46c50f4a25ce9267ab5e25" [label=""];
  "sha256:ebb7080899d3819a98b6d7ecb69072a6df2409b55b46c50f4a25ce9267ab5e25" -> "sha256:d74e89ce2c6ef5da33ef2c4ff198d40939e1af8669204e08eeaa2b18522293c5" [label=""];
  "sha256:7b07d9f5e00c8d2d1b6abe042f7661824902e8505d30b155d7eb0fd5dcc06f68" -> "sha256:d74e89ce2c6ef5da33ef2c4ff198d40939e1af8669204e08eeaa2b18522293c5" [label=""];
  "sha256:d74e89ce2c6ef5da33ef2c4ff198d40939e1af8669204e08eeaa2b18522293c5" -> "sha256:30633524bd337207141caaafb3a8a218d45604f5c9826c2f476018c9f710d4c2" [label=""];
  "sha256:30633524bd337207141caaafb3a8a218d45604f5c9826c2f476018c9f710d4c2" -> "sha256:31dd439d5b40d16d1807d38d439fedbb4a929ef6bbf666755ca90c3f2ff13495" [label=""];
}

