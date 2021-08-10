[app/sources/167300973.Dockerfile]
digraph {
  "sha256:9b3814b1d928c7de65934e3b2ca61448549eb6496db0005b7f92b407ca0463d6" [label="docker-image://docker.io/library/python:3-onbuild" shape="ellipse"];
  "sha256:4e0db48ed84e966577a06b0415c9b313eb230bf8a2c7ed375624313b2b2a2af4" [label="/bin/sh -c apt-get update && apt-get install -y supervisor" shape="box"];
  "sha256:49db424dc2757c09f962cc5e3a3e87a9e6acb659e6fa45a2f56d7f1f33a57f8a" [label="/bin/sh -c mkdir -p /var/log/supervisor" shape="box"];
  "sha256:fb69b10a4cba27f6c32556f40d857bcad4aca179f6792467145f2206cf635341" [label="sha256:fb69b10a4cba27f6c32556f40d857bcad4aca179f6792467145f2206cf635341" shape="plaintext"];
  "sha256:9b3814b1d928c7de65934e3b2ca61448549eb6496db0005b7f92b407ca0463d6" -> "sha256:4e0db48ed84e966577a06b0415c9b313eb230bf8a2c7ed375624313b2b2a2af4" [label=""];
  "sha256:4e0db48ed84e966577a06b0415c9b313eb230bf8a2c7ed375624313b2b2a2af4" -> "sha256:49db424dc2757c09f962cc5e3a3e87a9e6acb659e6fa45a2f56d7f1f33a57f8a" [label=""];
  "sha256:49db424dc2757c09f962cc5e3a3e87a9e6acb659e6fa45a2f56d7f1f33a57f8a" -> "sha256:fb69b10a4cba27f6c32556f40d857bcad4aca179f6792467145f2206cf635341" [label=""];
}

