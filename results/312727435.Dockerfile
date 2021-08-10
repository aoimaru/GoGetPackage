[app/sources/312727435.Dockerfile]
digraph {
  "sha256:fc4bda953e98ceaed4856ae793d4038d5897a729b7c01c59b7c33c506d8f8c32" [label="docker-image://docker.io/library/rust:1.34.0-slim" shape="ellipse"];
  "sha256:596110ba2a333f335e13f63b1da7904ccfc75a9848e86c0cacd65e51d2f6ab23" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:4a864f74c66facbae0bf354af2000016fa70cb898cc2378b9829b8bd4e14ada4" [label="/bin/sh -c apt-get install -y clang cmake" shape="box"];
  "sha256:3c758173cf7eab9664b68379e03db82e085614d6a7e9d2753c7bc8099720e288" [label="/bin/sh -c apt-get install -y libsnappy-dev" shape="box"];
  "sha256:8d45e1490cffeead4b61b5ecd6cc18d80b64c5b15b367c9d02341c9d2f8810d4" [label="/bin/sh -c adduser --disabled-login --system --shell /bin/false --uid 1000 user" shape="box"];
  "sha256:4c146f9a93c348a99269dd6856470131c1fab6fc04249077384d5b8d52ce3d3a" [label="mkdir{path=/home/user}" shape="note"];
  "sha256:2146bc746dfe316734d31da76cb79fd7317d29269a345339239e122a084a1988" [label="local://context" shape="ellipse"];
  "sha256:ef766857a6a3b6718aac4bfb920dfe4212c5b6d6a6246551476b89c00eb1f96c" [label="copy{src=/, dest=/home/user}" shape="note"];
  "sha256:33b9f4a6f885077213ec8301a7ae8f18c6a8c0755befc43d133c205befa16ccf" [label="/bin/sh -c cargo build --release" shape="box"];
  "sha256:d70440eff1b08f89dde26bcfb1ce42c8f51982ecfb74aa448964423252e89c91" [label="/bin/sh -c cargo install --path ." shape="box"];
  "sha256:a2f8dbbc63e3e0186213dec25e82afc15e3899acb5dc36bdad14a39e21ccc5bc" [label="sha256:a2f8dbbc63e3e0186213dec25e82afc15e3899acb5dc36bdad14a39e21ccc5bc" shape="plaintext"];
  "sha256:fc4bda953e98ceaed4856ae793d4038d5897a729b7c01c59b7c33c506d8f8c32" -> "sha256:596110ba2a333f335e13f63b1da7904ccfc75a9848e86c0cacd65e51d2f6ab23" [label=""];
  "sha256:596110ba2a333f335e13f63b1da7904ccfc75a9848e86c0cacd65e51d2f6ab23" -> "sha256:4a864f74c66facbae0bf354af2000016fa70cb898cc2378b9829b8bd4e14ada4" [label=""];
  "sha256:4a864f74c66facbae0bf354af2000016fa70cb898cc2378b9829b8bd4e14ada4" -> "sha256:3c758173cf7eab9664b68379e03db82e085614d6a7e9d2753c7bc8099720e288" [label=""];
  "sha256:3c758173cf7eab9664b68379e03db82e085614d6a7e9d2753c7bc8099720e288" -> "sha256:8d45e1490cffeead4b61b5ecd6cc18d80b64c5b15b367c9d02341c9d2f8810d4" [label=""];
  "sha256:8d45e1490cffeead4b61b5ecd6cc18d80b64c5b15b367c9d02341c9d2f8810d4" -> "sha256:4c146f9a93c348a99269dd6856470131c1fab6fc04249077384d5b8d52ce3d3a" [label=""];
  "sha256:4c146f9a93c348a99269dd6856470131c1fab6fc04249077384d5b8d52ce3d3a" -> "sha256:ef766857a6a3b6718aac4bfb920dfe4212c5b6d6a6246551476b89c00eb1f96c" [label=""];
  "sha256:2146bc746dfe316734d31da76cb79fd7317d29269a345339239e122a084a1988" -> "sha256:ef766857a6a3b6718aac4bfb920dfe4212c5b6d6a6246551476b89c00eb1f96c" [label=""];
  "sha256:ef766857a6a3b6718aac4bfb920dfe4212c5b6d6a6246551476b89c00eb1f96c" -> "sha256:33b9f4a6f885077213ec8301a7ae8f18c6a8c0755befc43d133c205befa16ccf" [label=""];
  "sha256:33b9f4a6f885077213ec8301a7ae8f18c6a8c0755befc43d133c205befa16ccf" -> "sha256:d70440eff1b08f89dde26bcfb1ce42c8f51982ecfb74aa448964423252e89c91" [label=""];
  "sha256:d70440eff1b08f89dde26bcfb1ce42c8f51982ecfb74aa448964423252e89c91" -> "sha256:a2f8dbbc63e3e0186213dec25e82afc15e3899acb5dc36bdad14a39e21ccc5bc" [label=""];
}

