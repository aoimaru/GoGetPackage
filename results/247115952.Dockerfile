[app/sources/247115952.Dockerfile]
digraph {
  "sha256:c1c31ae28a96283ee52161795dee4f703654c434f33b4bea2b721f58a0923a3e" [label="local://context" shape="ellipse"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:6cde915f02ee2e4a8fe8b4c1fb030876035af25c75ab0d75b82a4b2fcafba851" [label="/bin/sh -c apt-get update && apt-get install -y   npm   nodejs   chromium-browser && rm -rf /var/lib/apt-lists/*" shape="box"];
  "sha256:5bac20539b34813d00fe98863751073f237dad58db1586f29ef227b47d24b910" [label="copy{src=/js, dest=/zbrowse/js}" shape="note"];
  "sha256:7000f43679bb3002574a2178cf3a1893185e8c19d9f44f0bfbb42253bec1ca56" [label="copy{src=/zbrowse.sh, dest=/zbrowse}" shape="note"];
  "sha256:fbe4633112def38b471322abd124743529154f6895cef5d13051710848d1ecdf" [label="mkdir{path=/zbrowse/js}" shape="note"];
  "sha256:a3334e231af456110c8bd1e27fe92d582e4985ed2cd2137fc680b8c6e21cb5cc" [label="/bin/sh -c npm install" shape="box"];
  "sha256:edea3440f768a58963b9758a5e04c3d59b1c225703dc323f4a986f8afb249d07" [label="mkdir{path=/zbrowse}" shape="note"];
  "sha256:ca22294e3f46549d85827431e6c8eb4fca51322faaa1d61774dc58418c7c8f63" [label="/bin/sh -c chmod +x zbrowse.sh" shape="box"];
  "sha256:28e1b94ddd2066461bbfd1f5c734005afa2cce35348007e3901101855bc03899" [label="sha256:28e1b94ddd2066461bbfd1f5c734005afa2cce35348007e3901101855bc03899" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:6cde915f02ee2e4a8fe8b4c1fb030876035af25c75ab0d75b82a4b2fcafba851" [label=""];
  "sha256:6cde915f02ee2e4a8fe8b4c1fb030876035af25c75ab0d75b82a4b2fcafba851" -> "sha256:5bac20539b34813d00fe98863751073f237dad58db1586f29ef227b47d24b910" [label=""];
  "sha256:c1c31ae28a96283ee52161795dee4f703654c434f33b4bea2b721f58a0923a3e" -> "sha256:5bac20539b34813d00fe98863751073f237dad58db1586f29ef227b47d24b910" [label=""];
  "sha256:5bac20539b34813d00fe98863751073f237dad58db1586f29ef227b47d24b910" -> "sha256:7000f43679bb3002574a2178cf3a1893185e8c19d9f44f0bfbb42253bec1ca56" [label=""];
  "sha256:c1c31ae28a96283ee52161795dee4f703654c434f33b4bea2b721f58a0923a3e" -> "sha256:7000f43679bb3002574a2178cf3a1893185e8c19d9f44f0bfbb42253bec1ca56" [label=""];
  "sha256:7000f43679bb3002574a2178cf3a1893185e8c19d9f44f0bfbb42253bec1ca56" -> "sha256:fbe4633112def38b471322abd124743529154f6895cef5d13051710848d1ecdf" [label=""];
  "sha256:fbe4633112def38b471322abd124743529154f6895cef5d13051710848d1ecdf" -> "sha256:a3334e231af456110c8bd1e27fe92d582e4985ed2cd2137fc680b8c6e21cb5cc" [label=""];
  "sha256:a3334e231af456110c8bd1e27fe92d582e4985ed2cd2137fc680b8c6e21cb5cc" -> "sha256:edea3440f768a58963b9758a5e04c3d59b1c225703dc323f4a986f8afb249d07" [label=""];
  "sha256:edea3440f768a58963b9758a5e04c3d59b1c225703dc323f4a986f8afb249d07" -> "sha256:ca22294e3f46549d85827431e6c8eb4fca51322faaa1d61774dc58418c7c8f63" [label=""];
  "sha256:ca22294e3f46549d85827431e6c8eb4fca51322faaa1d61774dc58418c7c8f63" -> "sha256:28e1b94ddd2066461bbfd1f5c734005afa2cce35348007e3901101855bc03899" [label=""];
}

