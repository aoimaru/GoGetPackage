[app/sources/252777158.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:9ce001f0b64b4f8586db4094e6fb14db7b8da9a004d2d6ae821719b8d5f72760" [label="local://context" shape="ellipse"];
  "sha256:c2304173af1fd83acadbdb315d87c25ce0deced8da7fe5d1ae63a6002b71b00e" [label="copy{src=/, dest=/usr/local/nginx/html}" shape="note"];
  "sha256:3b9dc3c87a421d22dcc9b38492e51491c7a12a55b11bf7e9da6b5c1a24a5be42" [label="sha256:3b9dc3c87a421d22dcc9b38492e51491c7a12a55b11bf7e9da6b5c1a24a5be42" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:c2304173af1fd83acadbdb315d87c25ce0deced8da7fe5d1ae63a6002b71b00e" [label=""];
  "sha256:9ce001f0b64b4f8586db4094e6fb14db7b8da9a004d2d6ae821719b8d5f72760" -> "sha256:c2304173af1fd83acadbdb315d87c25ce0deced8da7fe5d1ae63a6002b71b00e" [label=""];
  "sha256:c2304173af1fd83acadbdb315d87c25ce0deced8da7fe5d1ae63a6002b71b00e" -> "sha256:3b9dc3c87a421d22dcc9b38492e51491c7a12a55b11bf7e9da6b5c1a24a5be42" [label=""];
}

