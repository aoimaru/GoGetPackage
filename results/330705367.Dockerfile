[app/sources/330705367.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:c004f66295eb5eb7a22104ba19953aa0123eebbf1d6ba647785788c4650f870b" [label="local://context" shape="ellipse"];
  "sha256:0a6f1d14d04395bbf30ba2b2cb1fbe8b68e3eb9f483674d4546b0587925b0bc7" [label="copy{src=/qanary_component-NER-Ontotext-0.0.1.jar, dest=/app.jar}" shape="note"];
  "sha256:10621309eb2b5c665a26a8e0697087979459b91ba2c5153083bcd30dba8d1812" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:06f76294e95beb375bb5b1f9c045b31e6ac39da44a6e8bef6daef22a67a3d24f" [label="sha256:06f76294e95beb375bb5b1f9c045b31e6ac39da44a6e8bef6daef22a67a3d24f" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:0a6f1d14d04395bbf30ba2b2cb1fbe8b68e3eb9f483674d4546b0587925b0bc7" [label=""];
  "sha256:c004f66295eb5eb7a22104ba19953aa0123eebbf1d6ba647785788c4650f870b" -> "sha256:0a6f1d14d04395bbf30ba2b2cb1fbe8b68e3eb9f483674d4546b0587925b0bc7" [label=""];
  "sha256:0a6f1d14d04395bbf30ba2b2cb1fbe8b68e3eb9f483674d4546b0587925b0bc7" -> "sha256:10621309eb2b5c665a26a8e0697087979459b91ba2c5153083bcd30dba8d1812" [label=""];
  "sha256:10621309eb2b5c665a26a8e0697087979459b91ba2c5153083bcd30dba8d1812" -> "sha256:06f76294e95beb375bb5b1f9c045b31e6ac39da44a6e8bef6daef22a67a3d24f" [label=""];
}

