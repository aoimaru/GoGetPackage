[app/sources/339993555.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:35e5c5f5c7fd9bd945af24bafa5a9379c95f03006bded3d3a9a6c5982ac6db23" [label="/bin/sh -c apt-get update &&     apt-get install -y curl ca-certificates amqp-tools python        --no-install-recommends     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:bb11cd38b6390691c9fad3f13a980b39ce37845cdddb6179e6356a01593dc3a0" [label="local://context" shape="ellipse"];
  "sha256:86cf2c687abb222cb183e2451027d5f51fed441911497971254c62b69c0f1868" [label="copy{src=/worker.py, dest=/worker.py}" shape="note"];
  "sha256:2590138de934117e69f2334528e18e491f3d2b53792efdec8574c253abd7142a" [label="sha256:2590138de934117e69f2334528e18e491f3d2b53792efdec8574c253abd7142a" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:35e5c5f5c7fd9bd945af24bafa5a9379c95f03006bded3d3a9a6c5982ac6db23" [label=""];
  "sha256:35e5c5f5c7fd9bd945af24bafa5a9379c95f03006bded3d3a9a6c5982ac6db23" -> "sha256:86cf2c687abb222cb183e2451027d5f51fed441911497971254c62b69c0f1868" [label=""];
  "sha256:bb11cd38b6390691c9fad3f13a980b39ce37845cdddb6179e6356a01593dc3a0" -> "sha256:86cf2c687abb222cb183e2451027d5f51fed441911497971254c62b69c0f1868" [label=""];
  "sha256:86cf2c687abb222cb183e2451027d5f51fed441911497971254c62b69c0f1868" -> "sha256:2590138de934117e69f2334528e18e491f3d2b53792efdec8574c253abd7142a" [label=""];
}

