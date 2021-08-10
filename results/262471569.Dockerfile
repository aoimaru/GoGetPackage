[app/sources/262471569.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:654a7e6a1de0c6fba3ec9a59ae5766ac64fbe480f387ebcff3b20a2c55c5e48e" [label="/bin/sh -c apk add --update bash jq go git make gcc musl-dev                \t  ca-certificates linux-headers" shape="box"];
  "sha256:c3181a33cc31dec64ba699f237ed49272b195fee8d0d1e7d6eedcc5e59f02e65" [label="/bin/sh -c git clone --depth 1 --branch evmlab-trace https://github.com/cdetrio/go-ethereum" shape="box"];
  "sha256:c77c05b76543a6edb174129fdc5eb12ae197e6ea4ff3ce60dc46fee8da1c9351" [label="/bin/sh -c (cd go-ethereum && build/env.sh go run build/ci.go install ./cmd/evm)" shape="box"];
  "sha256:2410f34d9fd6d9438ccadf0613d383001f238c72c70a5b896ebed1a1ca88ae1f" [label="/bin/sh -c cp /go-ethereum/build/bin/evm /evm" shape="box"];
  "sha256:ff4eca55f46e76d6ed4e30d3983e3d092d148e7a457c8259eddc0fc16fa8264b" [label="/bin/sh -c cd go-ethereum                                             &&   echo \"{}\"                                                        | jq \".+ {\\\"repo\\\":\\\"$(git config --get remote.origin.url)\\\"}\"   | jq \".+ {\\\"branch\\\":\\\"$(git rev-parse --abbrev-ref HEAD)\\\"}\"    | jq \".+ {\\\"commit\\\":\\\"$(git rev-parse HEAD)\\\"}\"               \t> /version.json                                            &&   apk del go git make gcc musl-dev linux-headers              &&   rm -rf /go-ethereum && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:a2beb3176fff5314f869d854ecff3cbf07fe4fceef73f2ad5dda3c1b6113a867" [label="local://context" shape="ellipse"];
  "sha256:795d1391257eac5ca7d3522560683f9bb95e70cea8ae9800c50aec660a638699" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:e41e899e57c6e94acd7c9ff56c62462629b97daab6b8e6f82a96c05aa694319b" [label="/bin/sh -c cat version.json" shape="box"];
  "sha256:2e62e93b7879a5cb007ff6471e3b9d82e5346365e67541cc02897d5d2379945b" [label="sha256:2e62e93b7879a5cb007ff6471e3b9d82e5346365e67541cc02897d5d2379945b" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:654a7e6a1de0c6fba3ec9a59ae5766ac64fbe480f387ebcff3b20a2c55c5e48e" [label=""];
  "sha256:654a7e6a1de0c6fba3ec9a59ae5766ac64fbe480f387ebcff3b20a2c55c5e48e" -> "sha256:c3181a33cc31dec64ba699f237ed49272b195fee8d0d1e7d6eedcc5e59f02e65" [label=""];
  "sha256:c3181a33cc31dec64ba699f237ed49272b195fee8d0d1e7d6eedcc5e59f02e65" -> "sha256:c77c05b76543a6edb174129fdc5eb12ae197e6ea4ff3ce60dc46fee8da1c9351" [label=""];
  "sha256:c77c05b76543a6edb174129fdc5eb12ae197e6ea4ff3ce60dc46fee8da1c9351" -> "sha256:2410f34d9fd6d9438ccadf0613d383001f238c72c70a5b896ebed1a1ca88ae1f" [label=""];
  "sha256:2410f34d9fd6d9438ccadf0613d383001f238c72c70a5b896ebed1a1ca88ae1f" -> "sha256:ff4eca55f46e76d6ed4e30d3983e3d092d148e7a457c8259eddc0fc16fa8264b" [label=""];
  "sha256:ff4eca55f46e76d6ed4e30d3983e3d092d148e7a457c8259eddc0fc16fa8264b" -> "sha256:795d1391257eac5ca7d3522560683f9bb95e70cea8ae9800c50aec660a638699" [label=""];
  "sha256:a2beb3176fff5314f869d854ecff3cbf07fe4fceef73f2ad5dda3c1b6113a867" -> "sha256:795d1391257eac5ca7d3522560683f9bb95e70cea8ae9800c50aec660a638699" [label=""];
  "sha256:795d1391257eac5ca7d3522560683f9bb95e70cea8ae9800c50aec660a638699" -> "sha256:e41e899e57c6e94acd7c9ff56c62462629b97daab6b8e6f82a96c05aa694319b" [label=""];
  "sha256:e41e899e57c6e94acd7c9ff56c62462629b97daab6b8e6f82a96c05aa694319b" -> "sha256:2e62e93b7879a5cb007ff6471e3b9d82e5346365e67541cc02897d5d2379945b" [label=""];
}

