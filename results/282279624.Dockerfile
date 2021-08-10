[app/sources/282279624.Dockerfile]
digraph {
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" [label="docker-image://docker.io/library/openjdk:8-alpine" shape="ellipse"];
  "sha256:8046476891c95764d3becd1ef306513f09a3798604b4d13ab1390de437320a8c" [label="local://context" shape="ellipse"];
  "sha256:c84464bb12a6367110ef2fd611c4f37c24b10d1a0378b4f5d3663958fab31712" [label="copy{src=/env, dest=/usr/local/bin/env}" shape="note"];
  "sha256:81514a35fb5e03be6097e5b624ce6fdcec13a55083252013eb2fe7ae18d4b518" [label="/bin/sh -c apk add --no-cache bash" shape="box"];
  "sha256:1018dff9d9902dbc237e53219340821e043abe2ca36fb52293ca95b51e686cb3" [label="/bin/sh -c apk add --no-cache --virtual=.dependencies tar wget" shape="box"];
  "sha256:bd44798effcf1cb3f47fba7ea7d4325bff28c6d8a6296f8be9846dac56b564da" [label="/bin/sh -c wget -O- \"http://downloads.lightbend.com/scala/2.11.4/scala-2.11.4.tgz\"     | tar xzf - -C /usr/local --strip-components=1" shape="box"];
  "sha256:38f02cb374d3aa1d80f888119b1fb152cd71eec5d8c9529f58cf49b58028f4f2" [label="/bin/sh -c apk del --no-cache .dependencies" shape="box"];
  "sha256:4093b1fcf8af36ec9f908d006938e78f356def62a826131c351c4a24ec3f9b36" [label="mkdir{path=/app}" shape="note"];
  "sha256:1fbfa6dd089587c437999ff1100b15a7a6a0015b66912e09f933b1248b11530b" [label="sha256:1fbfa6dd089587c437999ff1100b15a7a6a0015b66912e09f933b1248b11530b" shape="plaintext"];
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" -> "sha256:c84464bb12a6367110ef2fd611c4f37c24b10d1a0378b4f5d3663958fab31712" [label=""];
  "sha256:8046476891c95764d3becd1ef306513f09a3798604b4d13ab1390de437320a8c" -> "sha256:c84464bb12a6367110ef2fd611c4f37c24b10d1a0378b4f5d3663958fab31712" [label=""];
  "sha256:c84464bb12a6367110ef2fd611c4f37c24b10d1a0378b4f5d3663958fab31712" -> "sha256:81514a35fb5e03be6097e5b624ce6fdcec13a55083252013eb2fe7ae18d4b518" [label=""];
  "sha256:81514a35fb5e03be6097e5b624ce6fdcec13a55083252013eb2fe7ae18d4b518" -> "sha256:1018dff9d9902dbc237e53219340821e043abe2ca36fb52293ca95b51e686cb3" [label=""];
  "sha256:1018dff9d9902dbc237e53219340821e043abe2ca36fb52293ca95b51e686cb3" -> "sha256:bd44798effcf1cb3f47fba7ea7d4325bff28c6d8a6296f8be9846dac56b564da" [label=""];
  "sha256:bd44798effcf1cb3f47fba7ea7d4325bff28c6d8a6296f8be9846dac56b564da" -> "sha256:38f02cb374d3aa1d80f888119b1fb152cd71eec5d8c9529f58cf49b58028f4f2" [label=""];
  "sha256:38f02cb374d3aa1d80f888119b1fb152cd71eec5d8c9529f58cf49b58028f4f2" -> "sha256:4093b1fcf8af36ec9f908d006938e78f356def62a826131c351c4a24ec3f9b36" [label=""];
  "sha256:4093b1fcf8af36ec9f908d006938e78f356def62a826131c351c4a24ec3f9b36" -> "sha256:1fbfa6dd089587c437999ff1100b15a7a6a0015b66912e09f933b1248b11530b" [label=""];
}

