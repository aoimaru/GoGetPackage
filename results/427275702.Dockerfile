[app/sources/427275702.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:11c22443f17812c5b3cfdb03d8d8037eb3e09cbf3a1f14af66c26a0a57c65333" [label="local://context" shape="ellipse"];
  "sha256:3981f829721ced81a9860198729fd7cac2eded0f0d3331d94cf988dbc82ec954" [label="copy{src=/build/libs, dest=/opt/beast}" shape="note"];
  "sha256:a261a259bdae471eb43b456e1d660756e19e13afb0cc34c49e0b2fd2a45a7eb4" [label="mkdir{path=/opt/beast}" shape="note"];
  "sha256:2dc6a8ec6c01a0dac1960f470c59ae24e63f81cc202ec98f2807d4d756f52d01" [label="sha256:2dc6a8ec6c01a0dac1960f470c59ae24e63f81cc202ec98f2807d4d756f52d01" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:3981f829721ced81a9860198729fd7cac2eded0f0d3331d94cf988dbc82ec954" [label=""];
  "sha256:11c22443f17812c5b3cfdb03d8d8037eb3e09cbf3a1f14af66c26a0a57c65333" -> "sha256:3981f829721ced81a9860198729fd7cac2eded0f0d3331d94cf988dbc82ec954" [label=""];
  "sha256:3981f829721ced81a9860198729fd7cac2eded0f0d3331d94cf988dbc82ec954" -> "sha256:a261a259bdae471eb43b456e1d660756e19e13afb0cc34c49e0b2fd2a45a7eb4" [label=""];
  "sha256:a261a259bdae471eb43b456e1d660756e19e13afb0cc34c49e0b2fd2a45a7eb4" -> "sha256:2dc6a8ec6c01a0dac1960f470c59ae24e63f81cc202ec98f2807d4d756f52d01" [label=""];
}

