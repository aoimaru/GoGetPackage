[app/sources/338566555.Dockerfile]
digraph {
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" [label="docker-image://docker.io/library/node:6" shape="ellipse"];
  "sha256:f8831a7bae8dc714d7dc11d9e4cf740be15cec23bf92e3bf7d26da003d298029" [label="local://context" shape="ellipse"];
  "sha256:fa930741eb7335f67508b646bcd10decbfd7c2bb1f2d634367504faa0dff455b" [label="copy{src=/src, dest=/home}" shape="note"];
  "sha256:8b5ec9c6ccfc1ce02327214965e85e4db7dd736e6076e95b4cc2729c0f18a337" [label="/bin/sh -c npm install" shape="box"];
  "sha256:6c96b518ce9f0424ecf2ad55100b2131367f7dcd2a835b0d23c3c4bba4c27c97" [label="/bin/sh -c /home/requirements.sh" shape="box"];
  "sha256:84cf6152037103a6f28844ae6401a5afc01959f97c3bf04a057517b4471e8486" [label="sha256:84cf6152037103a6f28844ae6401a5afc01959f97c3bf04a057517b4471e8486" shape="plaintext"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" -> "sha256:fa930741eb7335f67508b646bcd10decbfd7c2bb1f2d634367504faa0dff455b" [label=""];
  "sha256:f8831a7bae8dc714d7dc11d9e4cf740be15cec23bf92e3bf7d26da003d298029" -> "sha256:fa930741eb7335f67508b646bcd10decbfd7c2bb1f2d634367504faa0dff455b" [label=""];
  "sha256:fa930741eb7335f67508b646bcd10decbfd7c2bb1f2d634367504faa0dff455b" -> "sha256:8b5ec9c6ccfc1ce02327214965e85e4db7dd736e6076e95b4cc2729c0f18a337" [label=""];
  "sha256:8b5ec9c6ccfc1ce02327214965e85e4db7dd736e6076e95b4cc2729c0f18a337" -> "sha256:6c96b518ce9f0424ecf2ad55100b2131367f7dcd2a835b0d23c3c4bba4c27c97" [label=""];
  "sha256:6c96b518ce9f0424ecf2ad55100b2131367f7dcd2a835b0d23c3c4bba4c27c97" -> "sha256:84cf6152037103a6f28844ae6401a5afc01959f97c3bf04a057517b4471e8486" [label=""];
}

