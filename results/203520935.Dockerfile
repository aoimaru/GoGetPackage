[app/sources/203520935.Dockerfile]
digraph {
  "sha256:8969fd4ff7e0f87176fac8fff3d89e90a369c6af92edcc07cf53163f0c356893" [label="docker-image://docker.elastic.co/elasticsearch/elasticsearch-oss:6.4.1@sha256:c34b27d39c4354c624b30a14b1c9e62a6df55e42d3db62fca209a5b8c03370e3" shape="ellipse"];
  "sha256:5a8a4c52746ed0ddf9d57285fa783cb41f9307e1083c2b5e16f7e0af25d1fa88" [label="local://context" shape="ellipse"];
  "sha256:6e66985692481c7773c993ca255ecc81f5aed05dd131c642b2ac7b375798e79a" [label="copy{src=/elasticsearch.yml, dest=/usr/share/elasticsearch/config/}" shape="note"];
  "sha256:1b2744997aeb9f2bd4b768caedf2d94da57c22633e3c3c1b281f17dfdc1afae5" [label="sha256:1b2744997aeb9f2bd4b768caedf2d94da57c22633e3c3c1b281f17dfdc1afae5" shape="plaintext"];
  "sha256:8969fd4ff7e0f87176fac8fff3d89e90a369c6af92edcc07cf53163f0c356893" -> "sha256:6e66985692481c7773c993ca255ecc81f5aed05dd131c642b2ac7b375798e79a" [label=""];
  "sha256:5a8a4c52746ed0ddf9d57285fa783cb41f9307e1083c2b5e16f7e0af25d1fa88" -> "sha256:6e66985692481c7773c993ca255ecc81f5aed05dd131c642b2ac7b375798e79a" [label=""];
  "sha256:6e66985692481c7773c993ca255ecc81f5aed05dd131c642b2ac7b375798e79a" -> "sha256:1b2744997aeb9f2bd4b768caedf2d94da57c22633e3c3c1b281f17dfdc1afae5" [label=""];
}

