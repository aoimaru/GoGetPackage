[app/sources/242009422.Dockerfile]
digraph {
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" [label="docker-image://docker.io/library/openjdk:8-alpine" shape="ellipse"];
  "sha256:19d6a6a6ba7bca1d9d8061d7cc6637a9fd70d18336a52208cd01d482fe1d1b97" [label="local://context" shape="ellipse"];
  "sha256:13e622a1685f1f58923e0829b423b98412f5b0f91f10cbaff9f9cce24bad0f61" [label="copy{src=/build/libs/server.jar, dest=/pms.jar}" shape="note"];
  "sha256:3823c2a21ff81e51698069e450c3802815ffc7aceafc2032fa85dacefea5c2a1" [label="/bin/sh -c sh -c 'touch /pms.jar'" shape="box"];
  "sha256:bd8e03797d611a5e772807414ee899f4fefad45b059cd78c4d274b82827b793c" [label="sha256:bd8e03797d611a5e772807414ee899f4fefad45b059cd78c4d274b82827b793c" shape="plaintext"];
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" -> "sha256:13e622a1685f1f58923e0829b423b98412f5b0f91f10cbaff9f9cce24bad0f61" [label=""];
  "sha256:19d6a6a6ba7bca1d9d8061d7cc6637a9fd70d18336a52208cd01d482fe1d1b97" -> "sha256:13e622a1685f1f58923e0829b423b98412f5b0f91f10cbaff9f9cce24bad0f61" [label=""];
  "sha256:13e622a1685f1f58923e0829b423b98412f5b0f91f10cbaff9f9cce24bad0f61" -> "sha256:3823c2a21ff81e51698069e450c3802815ffc7aceafc2032fa85dacefea5c2a1" [label=""];
  "sha256:3823c2a21ff81e51698069e450c3802815ffc7aceafc2032fa85dacefea5c2a1" -> "sha256:bd8e03797d611a5e772807414ee899f4fefad45b059cd78c4d274b82827b793c" [label=""];
}

