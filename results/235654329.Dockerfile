[app/sources/235654329.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:04e7672b792fb857d73d3e9ec14171f4b01c8fc92f3a99ae847eaae5bcc19fbc" [label="docker-image://docker.io/library/maven:3-jdk-8-alpine" shape="ellipse"];
  "sha256:0141613dae2a047de7ea720e25dd202555b6a22bf3bafb0d74c75b0bbfbf1d65" [label="local://context" shape="ellipse"];
  "sha256:66340cf00252acdd2568ac5e393ae2906df7207103dece8e65e433b53c653ded" [label="copy{src=/, dest=/usr/src}" shape="note"];
  "sha256:dd889a6ced5e01af064902870bc8836dbf1b562702985faaf9fddd7d8bc6d7df" [label="/bin/sh -c cd /usr/src;     mvn package" shape="box"];
  "sha256:6c4e24b02197fd688b54d2a1244e32bdb41fc100f9177ff27a65e4a545768172" [label="copy{src=/usr/src/target/websocket-0.0.1-SNAPSHOT.jar, dest=/websocket-0.0.1-SNAPSHOT.jar}" shape="note"];
  "sha256:8a08554f305228f93e9e3d9305520637588f4e3265e5ffbd00d3ff749db4fe69" [label="sha256:8a08554f305228f93e9e3d9305520637588f4e3265e5ffbd00d3ff749db4fe69" shape="plaintext"];
  "sha256:04e7672b792fb857d73d3e9ec14171f4b01c8fc92f3a99ae847eaae5bcc19fbc" -> "sha256:66340cf00252acdd2568ac5e393ae2906df7207103dece8e65e433b53c653ded" [label=""];
  "sha256:0141613dae2a047de7ea720e25dd202555b6a22bf3bafb0d74c75b0bbfbf1d65" -> "sha256:66340cf00252acdd2568ac5e393ae2906df7207103dece8e65e433b53c653ded" [label=""];
  "sha256:66340cf00252acdd2568ac5e393ae2906df7207103dece8e65e433b53c653ded" -> "sha256:dd889a6ced5e01af064902870bc8836dbf1b562702985faaf9fddd7d8bc6d7df" [label=""];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:6c4e24b02197fd688b54d2a1244e32bdb41fc100f9177ff27a65e4a545768172" [label=""];
  "sha256:dd889a6ced5e01af064902870bc8836dbf1b562702985faaf9fddd7d8bc6d7df" -> "sha256:6c4e24b02197fd688b54d2a1244e32bdb41fc100f9177ff27a65e4a545768172" [label=""];
  "sha256:6c4e24b02197fd688b54d2a1244e32bdb41fc100f9177ff27a65e4a545768172" -> "sha256:8a08554f305228f93e9e3d9305520637588f4e3265e5ffbd00d3ff749db4fe69" [label=""];
}

