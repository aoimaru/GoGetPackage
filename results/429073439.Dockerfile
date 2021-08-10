[app/sources/429073439.Dockerfile]
digraph {
  "sha256:1a5f0c73070d650a8eda7ab3eee52f5cbdcbde49ee5cb562ea94a3c171d9ad69" [label="docker-image://docker.io/library/node:7" shape="ellipse"];
  "sha256:f7309eb29a0b5a77bee94ee9e9159afcb566b8727b5011949f8a4faec374dd52" [label="/bin/sh -c yarn global add elm" shape="box"];
  "sha256:d7708670cb06a3ca793540cd51be320ffa24fcc4b772fb74a7b921a255a49706" [label="mkdir{path=/app}" shape="note"];
  "sha256:00139ec2c75ad128cd17db457a00c56b2b596f2b20ec834dc963721e98d64ba7" [label="local://context" shape="ellipse"];
  "sha256:9bbe285284b050cbcef3f0213d91cb8ea75f084f322c64cc01aa5328339a5dbb" [label="copy{src=/, dest=/app/user/}" shape="note"];
  "sha256:7a42043e3351551312ee4b6b882177753871fc21fb11a1d910e582e92d078012" [label="mkdir{path=/app/user}" shape="note"];
  "sha256:cf56efac4136e8dee1e19adcb4ff3321c651d491e7bbd457c42272115298c7df" [label="sha256:cf56efac4136e8dee1e19adcb4ff3321c651d491e7bbd457c42272115298c7df" shape="plaintext"];
  "sha256:1a5f0c73070d650a8eda7ab3eee52f5cbdcbde49ee5cb562ea94a3c171d9ad69" -> "sha256:f7309eb29a0b5a77bee94ee9e9159afcb566b8727b5011949f8a4faec374dd52" [label=""];
  "sha256:f7309eb29a0b5a77bee94ee9e9159afcb566b8727b5011949f8a4faec374dd52" -> "sha256:d7708670cb06a3ca793540cd51be320ffa24fcc4b772fb74a7b921a255a49706" [label=""];
  "sha256:d7708670cb06a3ca793540cd51be320ffa24fcc4b772fb74a7b921a255a49706" -> "sha256:9bbe285284b050cbcef3f0213d91cb8ea75f084f322c64cc01aa5328339a5dbb" [label=""];
  "sha256:00139ec2c75ad128cd17db457a00c56b2b596f2b20ec834dc963721e98d64ba7" -> "sha256:9bbe285284b050cbcef3f0213d91cb8ea75f084f322c64cc01aa5328339a5dbb" [label=""];
  "sha256:9bbe285284b050cbcef3f0213d91cb8ea75f084f322c64cc01aa5328339a5dbb" -> "sha256:7a42043e3351551312ee4b6b882177753871fc21fb11a1d910e582e92d078012" [label=""];
  "sha256:7a42043e3351551312ee4b6b882177753871fc21fb11a1d910e582e92d078012" -> "sha256:cf56efac4136e8dee1e19adcb4ff3321c651d491e7bbd457c42272115298c7df" [label=""];
}

