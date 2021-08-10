[app/sources/474559657.Dockerfile]
digraph {
  "sha256:20cfce7ffd4e63a56ef462b55f7e39228509a45ab9760247ce03abdbd668c79e" [label="docker-image://docker.io/library/rethinkdb:1.16.0" shape="ellipse"];
  "sha256:82709b74205f383a013628623e782b13953f3b5b002974ceb035436c20e68fd8" [label="/bin/sh -c apt-get update &&     apt-get install -yq curl &&     rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* &&     curl -L http://stedolan.github.io/jq/download/linux64/jq > /usr/bin/jq &&     chmod u+x /usr/bin/jq" shape="box"];
  "sha256:bfa8f738afccea245cb3ef51a064314b040e455d247ebc7071ff5f13ab80a83c" [label="local://context" shape="ellipse"];
  "sha256:2b772b2319cacef1db050b1639214a97b3dbdeed505d5c11f0453ae3f27dcafb" [label="copy{src=/run.sh, dest=/usr/bin/run.sh}" shape="note"];
  "sha256:7249d8c1cf9713caa2ecef8a06c7c3554ccc1654f47ef7a16bb74860680a51e0" [label="/bin/sh -c chmod u+x /usr/bin/run.sh" shape="box"];
  "sha256:24a98ddb0b2412325737e92c6d0b08d4143a3119431cc47ff43ed5bbc36eb74d" [label="sha256:24a98ddb0b2412325737e92c6d0b08d4143a3119431cc47ff43ed5bbc36eb74d" shape="plaintext"];
  "sha256:20cfce7ffd4e63a56ef462b55f7e39228509a45ab9760247ce03abdbd668c79e" -> "sha256:82709b74205f383a013628623e782b13953f3b5b002974ceb035436c20e68fd8" [label=""];
  "sha256:82709b74205f383a013628623e782b13953f3b5b002974ceb035436c20e68fd8" -> "sha256:2b772b2319cacef1db050b1639214a97b3dbdeed505d5c11f0453ae3f27dcafb" [label=""];
  "sha256:bfa8f738afccea245cb3ef51a064314b040e455d247ebc7071ff5f13ab80a83c" -> "sha256:2b772b2319cacef1db050b1639214a97b3dbdeed505d5c11f0453ae3f27dcafb" [label=""];
  "sha256:2b772b2319cacef1db050b1639214a97b3dbdeed505d5c11f0453ae3f27dcafb" -> "sha256:7249d8c1cf9713caa2ecef8a06c7c3554ccc1654f47ef7a16bb74860680a51e0" [label=""];
  "sha256:7249d8c1cf9713caa2ecef8a06c7c3554ccc1654f47ef7a16bb74860680a51e0" -> "sha256:24a98ddb0b2412325737e92c6d0b08d4143a3119431cc47ff43ed5bbc36eb74d" [label=""];
}

