[app/sources/443310973.Dockerfile]
digraph {
  "sha256:742a2e94228d56763307c1a8d9f5891efb0ec2bbe78c9bc7d8ca184d9f6f1365" [label="docker-image://docker.io/dockerfile/ubuntu:latest" shape="ellipse"];
  "sha256:bc554491e4b269d3d5c6701663574cbea1edf8e22b9442c89c1eb25b77915a11" [label="/bin/sh -c sed -i 's/^# \\(.*-backports\\s\\)/\\1/g' /etc/apt/sources.list &&   apt-get update &&   apt-get install -y haproxy=1.5.3-1~ubuntu14.04.1 &&   sed -i 's/^ENABLED=.*/ENABLED=1/' /etc/default/haproxy &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:eeb0eb83b7524977e087c9e5a0055aeabc8fb2889ef90b260f48b7876a50e5cd" [label="local://context" shape="ellipse"];
  "sha256:61828d9c488886c6d35923c1837cd3239fd533f1ee5f2b182111988927d7d7f1" [label="copy{src=/haproxy.cfg, dest=/etc/haproxy/haproxy.cfg}" shape="note"];
  "sha256:f859f2f3252e8e7ab827a25df45763d444ede74079212427847f634ff1d0eec4" [label="copy{src=/start.bash, dest=/haproxy-start}" shape="note"];
  "sha256:fc45321cfaecdecd76133694f47059e79e32cc40a373913d91c22476270796c2" [label="mkdir{path=/etc/haproxy}" shape="note"];
  "sha256:1ae352977b317c79c3007bdec40b659234f8f3675a26dc18b3ae372fa1557cf0" [label="sha256:1ae352977b317c79c3007bdec40b659234f8f3675a26dc18b3ae372fa1557cf0" shape="plaintext"];
  "sha256:742a2e94228d56763307c1a8d9f5891efb0ec2bbe78c9bc7d8ca184d9f6f1365" -> "sha256:bc554491e4b269d3d5c6701663574cbea1edf8e22b9442c89c1eb25b77915a11" [label=""];
  "sha256:bc554491e4b269d3d5c6701663574cbea1edf8e22b9442c89c1eb25b77915a11" -> "sha256:61828d9c488886c6d35923c1837cd3239fd533f1ee5f2b182111988927d7d7f1" [label=""];
  "sha256:eeb0eb83b7524977e087c9e5a0055aeabc8fb2889ef90b260f48b7876a50e5cd" -> "sha256:61828d9c488886c6d35923c1837cd3239fd533f1ee5f2b182111988927d7d7f1" [label=""];
  "sha256:61828d9c488886c6d35923c1837cd3239fd533f1ee5f2b182111988927d7d7f1" -> "sha256:f859f2f3252e8e7ab827a25df45763d444ede74079212427847f634ff1d0eec4" [label=""];
  "sha256:eeb0eb83b7524977e087c9e5a0055aeabc8fb2889ef90b260f48b7876a50e5cd" -> "sha256:f859f2f3252e8e7ab827a25df45763d444ede74079212427847f634ff1d0eec4" [label=""];
  "sha256:f859f2f3252e8e7ab827a25df45763d444ede74079212427847f634ff1d0eec4" -> "sha256:fc45321cfaecdecd76133694f47059e79e32cc40a373913d91c22476270796c2" [label=""];
  "sha256:fc45321cfaecdecd76133694f47059e79e32cc40a373913d91c22476270796c2" -> "sha256:1ae352977b317c79c3007bdec40b659234f8f3675a26dc18b3ae372fa1557cf0" [label=""];
}

