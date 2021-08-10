[app/sources/278573314.Dockerfile]
digraph {
  "sha256:8a0934d34a0788f31841f6a768fc53861cd5ca000cb842301c4ccc05c46aba75" [label="local://context" shape="ellipse"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:a99649af7a80c0af8d0a51ad01631e72debfc6b64bc9b46a21396c5ca7c98895" [label="copy{src=/boilerplate, dest=/boilerplate}" shape="note"];
  "sha256:8e183101457d5ff9a43e159bba763fd161c761ca10ce5f4600843e81fad9f0ab" [label="/bin/sh -c sed -i \"s/TAG/${tag}/\" /boilerplate/func.init.yaml" shape="box"];
  "sha256:4d3de2e13fca9af3580a45748d5e1039647a83124c8af6013fbe6e84ee8ef69b" [label="mkdir{path=/boilerplate}" shape="note"];
  "sha256:e37cc828cf8240afe073a99e901e0b81a39dec7d87ab7acf74c7d83ad4eac9b7" [label="sha256:e37cc828cf8240afe073a99e901e0b81a39dec7d87ab7acf74c7d83ad4eac9b7" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:a99649af7a80c0af8d0a51ad01631e72debfc6b64bc9b46a21396c5ca7c98895" [label=""];
  "sha256:8a0934d34a0788f31841f6a768fc53861cd5ca000cb842301c4ccc05c46aba75" -> "sha256:a99649af7a80c0af8d0a51ad01631e72debfc6b64bc9b46a21396c5ca7c98895" [label=""];
  "sha256:a99649af7a80c0af8d0a51ad01631e72debfc6b64bc9b46a21396c5ca7c98895" -> "sha256:8e183101457d5ff9a43e159bba763fd161c761ca10ce5f4600843e81fad9f0ab" [label=""];
  "sha256:8e183101457d5ff9a43e159bba763fd161c761ca10ce5f4600843e81fad9f0ab" -> "sha256:4d3de2e13fca9af3580a45748d5e1039647a83124c8af6013fbe6e84ee8ef69b" [label=""];
  "sha256:4d3de2e13fca9af3580a45748d5e1039647a83124c8af6013fbe6e84ee8ef69b" -> "sha256:e37cc828cf8240afe073a99e901e0b81a39dec7d87ab7acf74c7d83ad4eac9b7" [label=""];
}

