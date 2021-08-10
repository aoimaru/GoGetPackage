[app/sources/188652847.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:12506d36da878042c06df1975043db5fe278f8d26d435c18cd3d8743b2242e7a" [label="/bin/sh -c apk update && apk --update add ruby" shape="box"];
  "sha256:8340f5175e7ea0c9eb86c43dbc7a7597c981cf1a6324727ce7bc8fa56148a604" [label="local://context" shape="ellipse"];
  "sha256:b23e06cfb02675dbb6ce89edd23b555e7f9190af81d8d4c4bed1e3b0c46765f2" [label="copy{src=/client.rb, dest=/}" shape="note"];
  "sha256:d651291ac69205b30a248768fe261d951c8e30ad5ab582e1b0539d0647810bd5" [label="sha256:d651291ac69205b30a248768fe261d951c8e30ad5ab582e1b0539d0647810bd5" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:12506d36da878042c06df1975043db5fe278f8d26d435c18cd3d8743b2242e7a" [label=""];
  "sha256:12506d36da878042c06df1975043db5fe278f8d26d435c18cd3d8743b2242e7a" -> "sha256:b23e06cfb02675dbb6ce89edd23b555e7f9190af81d8d4c4bed1e3b0c46765f2" [label=""];
  "sha256:8340f5175e7ea0c9eb86c43dbc7a7597c981cf1a6324727ce7bc8fa56148a604" -> "sha256:b23e06cfb02675dbb6ce89edd23b555e7f9190af81d8d4c4bed1e3b0c46765f2" [label=""];
  "sha256:b23e06cfb02675dbb6ce89edd23b555e7f9190af81d8d4c4bed1e3b0c46765f2" -> "sha256:d651291ac69205b30a248768fe261d951c8e30ad5ab582e1b0539d0647810bd5" [label=""];
}

