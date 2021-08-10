[app/sources/228352144.Dockerfile]
digraph {
  "sha256:752a87ae383d8dad4d14b78ae05fa91baa4b98265a759f444e85f06c0b9f0f60" [label="docker-image://docker.io/ewolff/docker-java:latest" shape="ellipse"];
  "sha256:0924dae75819f1583777c42683b0c33f1e4eedc37e9338ef735aae3887911709" [label="local://context" shape="ellipse"];
  "sha256:e2359c5c9c05ebfef0bb398d66daa8d8327cb942a5c3a56127af977c8cfe8a02" [label="copy{src=/user-registration-application-0.0.1-SNAPSHOT.war, dest=/user-registration-application-0.0.1-SNAPSHOT.war}" shape="note"];
  "sha256:d6fcbb051713f5812b978d442ea3023054f15270ec5b21e9ff5f854bea8f01bf" [label="sha256:d6fcbb051713f5812b978d442ea3023054f15270ec5b21e9ff5f854bea8f01bf" shape="plaintext"];
  "sha256:752a87ae383d8dad4d14b78ae05fa91baa4b98265a759f444e85f06c0b9f0f60" -> "sha256:e2359c5c9c05ebfef0bb398d66daa8d8327cb942a5c3a56127af977c8cfe8a02" [label=""];
  "sha256:0924dae75819f1583777c42683b0c33f1e4eedc37e9338ef735aae3887911709" -> "sha256:e2359c5c9c05ebfef0bb398d66daa8d8327cb942a5c3a56127af977c8cfe8a02" [label=""];
  "sha256:e2359c5c9c05ebfef0bb398d66daa8d8327cb942a5c3a56127af977c8cfe8a02" -> "sha256:d6fcbb051713f5812b978d442ea3023054f15270ec5b21e9ff5f854bea8f01bf" [label=""];
}

