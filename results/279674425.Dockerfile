[app/sources/279674425.Dockerfile]
digraph {
  "sha256:496da2828f30d6e154670cdc65fa6e2ff0be47ad6ecd05004a6af0ede22e6545" [label="docker-image://docker.io/microsoft/aspnetcore:2.0.0" shape="ellipse"];
  "sha256:525a435c21bdc7dd26f0c1f21b4cfc0422a7eb2e0b7f04a3a638ab7693252918" [label="/bin/sh -c apt-get update && apt-get install -y librdkafka-dev" shape="box"];
  "sha256:4e82ce084781fd740c620df6a08e381a46dfed609e742e0c2f1017ad87526cfd" [label="mkdir{path=/app}" shape="note"];
  "sha256:7ef8a0fb150b6b4bc1573e727d91d9d71126552507496fd0205337d8b4b8f3cf" [label="local://context" shape="ellipse"];
  "sha256:9ee253c7073cdd0ccc50440a1da4135fe8d51fb9c84ff005f7187c76f412bf57" [label="copy{src=/out, dest=/app/}" shape="note"];
  "sha256:2d838ffb028729729839798d23f9efe02f84a52fb97809c22636e263c3245bba" [label="sha256:2d838ffb028729729839798d23f9efe02f84a52fb97809c22636e263c3245bba" shape="plaintext"];
  "sha256:496da2828f30d6e154670cdc65fa6e2ff0be47ad6ecd05004a6af0ede22e6545" -> "sha256:525a435c21bdc7dd26f0c1f21b4cfc0422a7eb2e0b7f04a3a638ab7693252918" [label=""];
  "sha256:525a435c21bdc7dd26f0c1f21b4cfc0422a7eb2e0b7f04a3a638ab7693252918" -> "sha256:4e82ce084781fd740c620df6a08e381a46dfed609e742e0c2f1017ad87526cfd" [label=""];
  "sha256:4e82ce084781fd740c620df6a08e381a46dfed609e742e0c2f1017ad87526cfd" -> "sha256:9ee253c7073cdd0ccc50440a1da4135fe8d51fb9c84ff005f7187c76f412bf57" [label=""];
  "sha256:7ef8a0fb150b6b4bc1573e727d91d9d71126552507496fd0205337d8b4b8f3cf" -> "sha256:9ee253c7073cdd0ccc50440a1da4135fe8d51fb9c84ff005f7187c76f412bf57" [label=""];
  "sha256:9ee253c7073cdd0ccc50440a1da4135fe8d51fb9c84ff005f7187c76f412bf57" -> "sha256:2d838ffb028729729839798d23f9efe02f84a52fb97809c22636e263c3245bba" [label=""];
}

