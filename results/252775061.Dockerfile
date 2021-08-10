[app/sources/252775061.Dockerfile]
digraph {
  "sha256:706b0689911b06ce2c0bb7dd7d7ae5dfaa6936b50571d2b594f507fce9bbe0c8" [label="local://context" shape="ellipse"];
  "sha256:530f12704bb28c1977b6e19426bc15fe6e000c9ff88647c56d53e38d6235863b" [label="docker-image://docker.io/bde2020/hbase-base:1.0.0-hbase1.2.6" shape="ellipse"];
  "sha256:c755773157aee0da7be033209801ec5fb28ad995ed6aeb9a4542a6b1261fadad" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:4257e32a862675640bda9f130b444ec0efb5116a5c4eb5cc33385d90d5156887" [label="/bin/sh -c chmod +x /run.sh" shape="box"];
  "sha256:7916ca998b16d701413a80a31ebd48d9a696732afddef10cdbcd8551e34bf2dd" [label="sha256:7916ca998b16d701413a80a31ebd48d9a696732afddef10cdbcd8551e34bf2dd" shape="plaintext"];
  "sha256:530f12704bb28c1977b6e19426bc15fe6e000c9ff88647c56d53e38d6235863b" -> "sha256:c755773157aee0da7be033209801ec5fb28ad995ed6aeb9a4542a6b1261fadad" [label=""];
  "sha256:706b0689911b06ce2c0bb7dd7d7ae5dfaa6936b50571d2b594f507fce9bbe0c8" -> "sha256:c755773157aee0da7be033209801ec5fb28ad995ed6aeb9a4542a6b1261fadad" [label=""];
  "sha256:c755773157aee0da7be033209801ec5fb28ad995ed6aeb9a4542a6b1261fadad" -> "sha256:4257e32a862675640bda9f130b444ec0efb5116a5c4eb5cc33385d90d5156887" [label=""];
  "sha256:4257e32a862675640bda9f130b444ec0efb5116a5c4eb5cc33385d90d5156887" -> "sha256:7916ca998b16d701413a80a31ebd48d9a696732afddef10cdbcd8551e34bf2dd" [label=""];
}

