[app/sources/199797473.Dockerfile]
digraph {
  "sha256:28b0f8565d3a9cd7981e24538f6499169685ce51e6be8adca9e02f4e623cebd5" [label="docker-image://docker.io/wso2/wso2base:latest" shape="ellipse"];
  "sha256:e9b401b423ec72007d5a3dd02e4e8c08931b39aa1ee3a926f56839194a5f739b" [label="local://context" shape="ellipse"];
  "sha256:e01f8399c3f2a2d531c1cfaba812c29af7c0852e23f24b6ddb5534b5e8e5cbf2" [label="copy{src=/scripts/*.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:ef34b72338d5c79de4cb15f902b8b20e7dcdb1c65a88ac5b9f680fc6f23eb76f" [label="/bin/sh -c bash /usr/local/bin/image-config.sh" shape="box"];
  "sha256:b69f958a72769773168d414918b9a01541b7eae89e833ec8788fefa4287b8253" [label="mkdir{path=/mnt}" shape="note"];
  "sha256:681b29337afd332952ae8f6152deb435ab7dc79cf4feba9c773699ed096ec315" [label="sha256:681b29337afd332952ae8f6152deb435ab7dc79cf4feba9c773699ed096ec315" shape="plaintext"];
  "sha256:28b0f8565d3a9cd7981e24538f6499169685ce51e6be8adca9e02f4e623cebd5" -> "sha256:e01f8399c3f2a2d531c1cfaba812c29af7c0852e23f24b6ddb5534b5e8e5cbf2" [label=""];
  "sha256:e9b401b423ec72007d5a3dd02e4e8c08931b39aa1ee3a926f56839194a5f739b" -> "sha256:e01f8399c3f2a2d531c1cfaba812c29af7c0852e23f24b6ddb5534b5e8e5cbf2" [label=""];
  "sha256:e01f8399c3f2a2d531c1cfaba812c29af7c0852e23f24b6ddb5534b5e8e5cbf2" -> "sha256:ef34b72338d5c79de4cb15f902b8b20e7dcdb1c65a88ac5b9f680fc6f23eb76f" [label=""];
  "sha256:ef34b72338d5c79de4cb15f902b8b20e7dcdb1c65a88ac5b9f680fc6f23eb76f" -> "sha256:b69f958a72769773168d414918b9a01541b7eae89e833ec8788fefa4287b8253" [label=""];
  "sha256:b69f958a72769773168d414918b9a01541b7eae89e833ec8788fefa4287b8253" -> "sha256:681b29337afd332952ae8f6152deb435ab7dc79cf4feba9c773699ed096ec315" [label=""];
}

