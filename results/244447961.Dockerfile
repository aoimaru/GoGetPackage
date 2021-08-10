[app/sources/244447961.Dockerfile]
digraph {
  "sha256:846720efb2b93c151077ba23a10d12b63b5723b91cfc99d77037bf3a95535dd4" [label="docker-image://docker.io/library/java:8-jre-alpine" shape="ellipse"];
  "sha256:ab66f61e111ee99f536eebf7761a8917ecdfa5387b9372e12dc77c36affab999" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:6f4854e82904a8fa0d3f4cd2f5adcee9deebe2e97b952e4aaff25c27db18033b" [label="mkdir{path=/app}" shape="note"];
  "sha256:aa50ee453a2c55c5f9c855c6c53e61553f282377eddb2d0e5a4202eb10f5eaae" [label="local://context" shape="ellipse"];
  "sha256:943e50839911b6f5c2d6db28bb29dc0f29f8416a7a9e8ae0f17a0a211af3b0e1" [label="copy{src=/xbin-store-service-order.jar, dest=/app}" shape="note"];
  "sha256:64531dbedcea85f7470e8254a6b1abcf78db3c53fef505c9b66bc9510654741d" [label="sha256:64531dbedcea85f7470e8254a6b1abcf78db3c53fef505c9b66bc9510654741d" shape="plaintext"];
  "sha256:846720efb2b93c151077ba23a10d12b63b5723b91cfc99d77037bf3a95535dd4" -> "sha256:ab66f61e111ee99f536eebf7761a8917ecdfa5387b9372e12dc77c36affab999" [label=""];
  "sha256:ab66f61e111ee99f536eebf7761a8917ecdfa5387b9372e12dc77c36affab999" -> "sha256:6f4854e82904a8fa0d3f4cd2f5adcee9deebe2e97b952e4aaff25c27db18033b" [label=""];
  "sha256:6f4854e82904a8fa0d3f4cd2f5adcee9deebe2e97b952e4aaff25c27db18033b" -> "sha256:943e50839911b6f5c2d6db28bb29dc0f29f8416a7a9e8ae0f17a0a211af3b0e1" [label=""];
  "sha256:aa50ee453a2c55c5f9c855c6c53e61553f282377eddb2d0e5a4202eb10f5eaae" -> "sha256:943e50839911b6f5c2d6db28bb29dc0f29f8416a7a9e8ae0f17a0a211af3b0e1" [label=""];
  "sha256:943e50839911b6f5c2d6db28bb29dc0f29f8416a7a9e8ae0f17a0a211af3b0e1" -> "sha256:64531dbedcea85f7470e8254a6b1abcf78db3c53fef505c9b66bc9510654741d" [label=""];
}

