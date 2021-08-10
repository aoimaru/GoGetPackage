[app/sources/303462450.Dockerfile]
digraph {
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" [label="docker-image://docker.io/library/openjdk:8-jdk" shape="ellipse"];
  "sha256:42acff4f7c839291b3c0781cabbb4ac4beadc607f8c6391ca6b5564363296ad7" [label="/bin/sh -c mkdir -p /data &&     mkdir -p /graphhopper" shape="box"];
  "sha256:003273a4b9d48abc91e67a24cd5559bb88a8960a66c15921f90dd2a49bee8683" [label="local://context" shape="ellipse"];
  "sha256:b487e50eb4f9b1c6ffa8be4d1928edf70a82ed88c9cf9289f2dedf8700c82269" [label="copy{src=/, dest=/graphhopper/}" shape="note"];
  "sha256:bbbed5a5a270a233cb1dbad5456bf25069bb4fca095d3e3e52111c5749a37a63" [label="mkdir{path=/graphhopper}" shape="note"];
  "sha256:edfbd9f7f24a18f5a0e31f88c3effb0bc9ee00479ccaba3b7657c695afb5f9b2" [label="/bin/sh -c ./graphhopper.sh build" shape="box"];
  "sha256:80558429d20a8ec1168eb49be2446dc42f85855fda6a6656d99d48969d3396c3" [label="sha256:80558429d20a8ec1168eb49be2446dc42f85855fda6a6656d99d48969d3396c3" shape="plaintext"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" -> "sha256:42acff4f7c839291b3c0781cabbb4ac4beadc607f8c6391ca6b5564363296ad7" [label=""];
  "sha256:42acff4f7c839291b3c0781cabbb4ac4beadc607f8c6391ca6b5564363296ad7" -> "sha256:b487e50eb4f9b1c6ffa8be4d1928edf70a82ed88c9cf9289f2dedf8700c82269" [label=""];
  "sha256:003273a4b9d48abc91e67a24cd5559bb88a8960a66c15921f90dd2a49bee8683" -> "sha256:b487e50eb4f9b1c6ffa8be4d1928edf70a82ed88c9cf9289f2dedf8700c82269" [label=""];
  "sha256:b487e50eb4f9b1c6ffa8be4d1928edf70a82ed88c9cf9289f2dedf8700c82269" -> "sha256:bbbed5a5a270a233cb1dbad5456bf25069bb4fca095d3e3e52111c5749a37a63" [label=""];
  "sha256:bbbed5a5a270a233cb1dbad5456bf25069bb4fca095d3e3e52111c5749a37a63" -> "sha256:edfbd9f7f24a18f5a0e31f88c3effb0bc9ee00479ccaba3b7657c695afb5f9b2" [label=""];
  "sha256:edfbd9f7f24a18f5a0e31f88c3effb0bc9ee00479ccaba3b7657c695afb5f9b2" -> "sha256:80558429d20a8ec1168eb49be2446dc42f85855fda6a6656d99d48969d3396c3" [label=""];
}

