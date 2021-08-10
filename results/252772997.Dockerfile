[app/sources/252772997.Dockerfile]
digraph {
  "sha256:41c455b1444c0f2c01cff24a32f58ee653a92fac3f6db44fa839c44cfebd85a3" [label="docker-image://docker.io/library/elixir:1.6.1" shape="ellipse"];
  "sha256:d39a760080a321cc0084eb64543d36dff31a85efc23ac44814a34e112d02319a" [label="/bin/sh -c apt-get update && apt-get install -y apt-transport-https lsb-release curl" shape="box"];
  "sha256:42ba39dcbb14873921b185bb0f2409279febffd7332fd1ac7ebd64da8ccd1df2" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_8.x | bash -" shape="box"];
  "sha256:0fc4548db6a1d2a86e53584bf10219426c94e925a1866936912e78cabd1fb1c8" [label="/bin/sh -c apt-get update -qy && apt-get install -y nodejs" shape="box"];
  "sha256:32e75b0b47e796e75d205536b4a22c414391e2390c941e433e5cc95854ae25d3" [label="/bin/sh -c mix local.hex --force" shape="box"];
  "sha256:ecf8a3a50714df084189dc798d24a076128f5135749b7e4de36f3c09fb2893e5" [label="/bin/sh -c mix local.rebar --force" shape="box"];
  "sha256:04ab3cdda0c33c9aab08b6d0467886f0c1e3417f08d00dba5ba2108ff2791042" [label="/bin/sh -c npm i -g yarn" shape="box"];
  "sha256:be10b9c230415e047a5a54057afda4766334bc03b7e807c5bda1a2199757e1ae" [label="/bin/sh -c wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh" shape="box"];
  "sha256:1e3422c9f0907ce660c6ba97168281cfd43925e4878c0e710f215b8cea67629b" [label="sha256:1e3422c9f0907ce660c6ba97168281cfd43925e4878c0e710f215b8cea67629b" shape="plaintext"];
  "sha256:41c455b1444c0f2c01cff24a32f58ee653a92fac3f6db44fa839c44cfebd85a3" -> "sha256:d39a760080a321cc0084eb64543d36dff31a85efc23ac44814a34e112d02319a" [label=""];
  "sha256:d39a760080a321cc0084eb64543d36dff31a85efc23ac44814a34e112d02319a" -> "sha256:42ba39dcbb14873921b185bb0f2409279febffd7332fd1ac7ebd64da8ccd1df2" [label=""];
  "sha256:42ba39dcbb14873921b185bb0f2409279febffd7332fd1ac7ebd64da8ccd1df2" -> "sha256:0fc4548db6a1d2a86e53584bf10219426c94e925a1866936912e78cabd1fb1c8" [label=""];
  "sha256:0fc4548db6a1d2a86e53584bf10219426c94e925a1866936912e78cabd1fb1c8" -> "sha256:32e75b0b47e796e75d205536b4a22c414391e2390c941e433e5cc95854ae25d3" [label=""];
  "sha256:32e75b0b47e796e75d205536b4a22c414391e2390c941e433e5cc95854ae25d3" -> "sha256:ecf8a3a50714df084189dc798d24a076128f5135749b7e4de36f3c09fb2893e5" [label=""];
  "sha256:ecf8a3a50714df084189dc798d24a076128f5135749b7e4de36f3c09fb2893e5" -> "sha256:04ab3cdda0c33c9aab08b6d0467886f0c1e3417f08d00dba5ba2108ff2791042" [label=""];
  "sha256:04ab3cdda0c33c9aab08b6d0467886f0c1e3417f08d00dba5ba2108ff2791042" -> "sha256:be10b9c230415e047a5a54057afda4766334bc03b7e807c5bda1a2199757e1ae" [label=""];
  "sha256:be10b9c230415e047a5a54057afda4766334bc03b7e807c5bda1a2199757e1ae" -> "sha256:1e3422c9f0907ce660c6ba97168281cfd43925e4878c0e710f215b8cea67629b" [label=""];
}

