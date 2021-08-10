[app/sources/464954246.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:98cdf226e15c31f3dd372893b48b7418e71e33472b886f48b63f4c67d0ff763b" [label="local://context" shape="ellipse"];
  "sha256:959ddc8b122eaafbb9bad7dd405bb144c87a038cf7f6cd7fccc461df21c5a365" [label="docker-image://docker.io/library/maven:3.5-jdk-8" shape="ellipse"];
  "sha256:087f0e6ac3d2d9cacc9e9d87b4cc661ec3c3ea335a1d6b136748a198a791e39c" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:e363a1e399c38021c6b02ed16e6d756ce2f78bf4abfe7b9359154574b3610d03" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:86186e116a4371c368a56e40ca1eee7e98340f50e3e2c0aaaeb2de4c3672c791" [label="/bin/sh -c mvn -s /usr/share/maven/ref/settings-docker.xml package" shape="box"];
  "sha256:b76aa033d8a0cba88ef0371f19965a3d1eb77896d012753f64cc71c829f4b6d9" [label="copy{src=/usr/src/app/target, dest=/opt/target}" shape="note"];
  "sha256:1f324b5796058681e7a6b66c6e0d00b5bbad759e2a35baf1b60d6d6182332aa0" [label="mkdir{path=/opt/target}" shape="note"];
  "sha256:eb093555419296813ba0133752b418130c16e94472df9b14b43629d249c495da" [label="sha256:eb093555419296813ba0133752b418130c16e94472df9b14b43629d249c495da" shape="plaintext"];
  "sha256:959ddc8b122eaafbb9bad7dd405bb144c87a038cf7f6cd7fccc461df21c5a365" -> "sha256:087f0e6ac3d2d9cacc9e9d87b4cc661ec3c3ea335a1d6b136748a198a791e39c" [label=""];
  "sha256:98cdf226e15c31f3dd372893b48b7418e71e33472b886f48b63f4c67d0ff763b" -> "sha256:087f0e6ac3d2d9cacc9e9d87b4cc661ec3c3ea335a1d6b136748a198a791e39c" [label=""];
  "sha256:087f0e6ac3d2d9cacc9e9d87b4cc661ec3c3ea335a1d6b136748a198a791e39c" -> "sha256:e363a1e399c38021c6b02ed16e6d756ce2f78bf4abfe7b9359154574b3610d03" [label=""];
  "sha256:e363a1e399c38021c6b02ed16e6d756ce2f78bf4abfe7b9359154574b3610d03" -> "sha256:86186e116a4371c368a56e40ca1eee7e98340f50e3e2c0aaaeb2de4c3672c791" [label=""];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:b76aa033d8a0cba88ef0371f19965a3d1eb77896d012753f64cc71c829f4b6d9" [label=""];
  "sha256:86186e116a4371c368a56e40ca1eee7e98340f50e3e2c0aaaeb2de4c3672c791" -> "sha256:b76aa033d8a0cba88ef0371f19965a3d1eb77896d012753f64cc71c829f4b6d9" [label=""];
  "sha256:b76aa033d8a0cba88ef0371f19965a3d1eb77896d012753f64cc71c829f4b6d9" -> "sha256:1f324b5796058681e7a6b66c6e0d00b5bbad759e2a35baf1b60d6d6182332aa0" [label=""];
  "sha256:1f324b5796058681e7a6b66c6e0d00b5bbad759e2a35baf1b60d6d6182332aa0" -> "sha256:eb093555419296813ba0133752b418130c16e94472df9b14b43629d249c495da" [label=""];
}

