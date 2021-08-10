[app/sources/482566565.Dockerfile]
digraph {
  "sha256:2d7b5110d4bd6f7fc1075151344299683a40cc0606939c48b01bc29b066b8679" [label="docker-image://docker.io/library/opensuse:42.2" shape="ellipse"];
  "sha256:709e9f7b6a4c13ae26642fe492c0a698880440c4ffe84bcf2782e9239b8fbdd7" [label="/bin/sh -c zypper --non-interactive install git make libqt4-devel gcc gcc-c++ rpm-build libkde4-devel tinyxml-devel glu-devel rpmlint gl2ps-devel fdupes Mesa-devel" shape="box"];
  "sha256:7d90adcb66a7d318d94fbba7042e3d86c685a396906a2e95511f72f2a5cfc48a" [label="/bin/sh -c git clone https://github.com/tcobbs/ldview" shape="box"];
  "sha256:6d61807e22f65e76678b20137f1ac096eebe8428e849a26cdf9c203327797f54" [label="sha256:6d61807e22f65e76678b20137f1ac096eebe8428e849a26cdf9c203327797f54" shape="plaintext"];
  "sha256:2d7b5110d4bd6f7fc1075151344299683a40cc0606939c48b01bc29b066b8679" -> "sha256:709e9f7b6a4c13ae26642fe492c0a698880440c4ffe84bcf2782e9239b8fbdd7" [label=""];
  "sha256:709e9f7b6a4c13ae26642fe492c0a698880440c4ffe84bcf2782e9239b8fbdd7" -> "sha256:7d90adcb66a7d318d94fbba7042e3d86c685a396906a2e95511f72f2a5cfc48a" [label=""];
  "sha256:7d90adcb66a7d318d94fbba7042e3d86c685a396906a2e95511f72f2a5cfc48a" -> "sha256:6d61807e22f65e76678b20137f1ac096eebe8428e849a26cdf9c203327797f54" [label=""];
}

