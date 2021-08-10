[app/sources/366117960.Dockerfile]
digraph {
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" [label="docker-image://docker.io/library/golang:1.8" shape="ellipse"];
  "sha256:6ba56e07b1ee6ec3122be749f81614e171790334b0aaffa1184110209fdfed1d" [label="local://context" shape="ellipse"];
  "sha256:01bc3eaad105a1eeb7ecdc0a4917583d0cd2649569bd0a1302f287325291efd5" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:5e647503b7e570a472fb417beb759b1c8b2f2816d74f68c979487cfab3dff86a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:283b8194891e17065c6f54f7c6425dfde80306b9f688c4eb20222b2265883926" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:86791d89c74e4ac06bde7be882ed1aea2f66a0e0b35ecca9c3e1f14b52c02672" [label="sha256:86791d89c74e4ac06bde7be882ed1aea2f66a0e0b35ecca9c3e1f14b52c02672" shape="plaintext"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" -> "sha256:01bc3eaad105a1eeb7ecdc0a4917583d0cd2649569bd0a1302f287325291efd5" [label=""];
  "sha256:6ba56e07b1ee6ec3122be749f81614e171790334b0aaffa1184110209fdfed1d" -> "sha256:01bc3eaad105a1eeb7ecdc0a4917583d0cd2649569bd0a1302f287325291efd5" [label=""];
  "sha256:01bc3eaad105a1eeb7ecdc0a4917583d0cd2649569bd0a1302f287325291efd5" -> "sha256:5e647503b7e570a472fb417beb759b1c8b2f2816d74f68c979487cfab3dff86a" [label=""];
  "sha256:5e647503b7e570a472fb417beb759b1c8b2f2816d74f68c979487cfab3dff86a" -> "sha256:283b8194891e17065c6f54f7c6425dfde80306b9f688c4eb20222b2265883926" [label=""];
  "sha256:283b8194891e17065c6f54f7c6425dfde80306b9f688c4eb20222b2265883926" -> "sha256:86791d89c74e4ac06bde7be882ed1aea2f66a0e0b35ecca9c3e1f14b52c02672" [label=""];
}

