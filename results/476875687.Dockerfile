[app/sources/476875687.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:eb5a85f4d9dfb7cce694bd72ac38ebd85f5261bb262c1a019f19f4d89114a187" [label="/bin/sh -c apk add --update --no-cache        bash        curl        wget        git        python       py2-pip        docker     && pip install --upgrade pip     && pip install awscli" shape="box"];
  "sha256:14d2883a4e1fa422f397cf370a7b478fe5df2ad5423778db84598e1102961b06" [label="local://context" shape="ellipse"];
  "sha256:5223d358f131d41df7478507f5c0f925ce1aed90b187f4d091845ba172084d0e" [label="copy{src=/scripts, dest=/scripts}" shape="note"];
  "sha256:874b4c3f3ec21ddf01517ae059f6c92cdacb378457b6e92bbdcb2cb8296b2cbb" [label="/bin/sh -c chmod -R +x /scripts" shape="box"];
  "sha256:d44de38105ea5f4f03239a9a652d804aef402599cba0bd34bf7683e7a8a2c4c1" [label="sha256:d44de38105ea5f4f03239a9a652d804aef402599cba0bd34bf7683e7a8a2c4c1" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:eb5a85f4d9dfb7cce694bd72ac38ebd85f5261bb262c1a019f19f4d89114a187" [label=""];
  "sha256:eb5a85f4d9dfb7cce694bd72ac38ebd85f5261bb262c1a019f19f4d89114a187" -> "sha256:5223d358f131d41df7478507f5c0f925ce1aed90b187f4d091845ba172084d0e" [label=""];
  "sha256:14d2883a4e1fa422f397cf370a7b478fe5df2ad5423778db84598e1102961b06" -> "sha256:5223d358f131d41df7478507f5c0f925ce1aed90b187f4d091845ba172084d0e" [label=""];
  "sha256:5223d358f131d41df7478507f5c0f925ce1aed90b187f4d091845ba172084d0e" -> "sha256:874b4c3f3ec21ddf01517ae059f6c92cdacb378457b6e92bbdcb2cb8296b2cbb" [label=""];
  "sha256:874b4c3f3ec21ddf01517ae059f6c92cdacb378457b6e92bbdcb2cb8296b2cbb" -> "sha256:d44de38105ea5f4f03239a9a652d804aef402599cba0bd34bf7683e7a8a2c4c1" [label=""];
}

