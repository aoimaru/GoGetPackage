[app/sources/394567953.Dockerfile]
digraph {
  "sha256:1286a00a7202c5b205055b5bd936b656cb6ae36074879ce8197b605f28ef06d6" [label="docker-image://docker.io/library/openjdk:8u151-jdk" shape="ellipse"];
  "sha256:8b5e6dda0246f01fd80098c59343a914f1403681531e305d9f9521ec66a8b503" [label="/bin/sh -c mkdir -p /ontrack/acceptance/app" shape="box"];
  "sha256:b97c9cff727bc06d5b0bb5fde9789263c902db63e5dce64b9007602981528bd4" [label="local://context" shape="ellipse"];
  "sha256:a6f958030b1d178d35702b022609f9c48ccad3de0c49c09c64a73690b909f6b8" [label="copy{src=/acceptance.sh, dest=/ontrack/acceptance/app/}" shape="note"];
  "sha256:7d53e985153db0597b971e87782e2eab9211bf5e6c2baf4f6187e82b74f124dd" [label="/bin/sh -c chmod a+x /ontrack/acceptance/app/acceptance.sh" shape="box"];
  "sha256:82c7a4cef2cbd1f6667fe4389f7eb97be726634e8af5dbfd0e0f535e8f483ce5" [label="copy{src=/ontrack-acceptance.jar, dest=/ontrack/acceptance/app/}" shape="note"];
  "sha256:6838fbff53881d3a64d77dc6b7447b38d354a64261c4598fb824aae39cd70ab8" [label="sha256:6838fbff53881d3a64d77dc6b7447b38d354a64261c4598fb824aae39cd70ab8" shape="plaintext"];
  "sha256:1286a00a7202c5b205055b5bd936b656cb6ae36074879ce8197b605f28ef06d6" -> "sha256:8b5e6dda0246f01fd80098c59343a914f1403681531e305d9f9521ec66a8b503" [label=""];
  "sha256:8b5e6dda0246f01fd80098c59343a914f1403681531e305d9f9521ec66a8b503" -> "sha256:a6f958030b1d178d35702b022609f9c48ccad3de0c49c09c64a73690b909f6b8" [label=""];
  "sha256:b97c9cff727bc06d5b0bb5fde9789263c902db63e5dce64b9007602981528bd4" -> "sha256:a6f958030b1d178d35702b022609f9c48ccad3de0c49c09c64a73690b909f6b8" [label=""];
  "sha256:a6f958030b1d178d35702b022609f9c48ccad3de0c49c09c64a73690b909f6b8" -> "sha256:7d53e985153db0597b971e87782e2eab9211bf5e6c2baf4f6187e82b74f124dd" [label=""];
  "sha256:7d53e985153db0597b971e87782e2eab9211bf5e6c2baf4f6187e82b74f124dd" -> "sha256:82c7a4cef2cbd1f6667fe4389f7eb97be726634e8af5dbfd0e0f535e8f483ce5" [label=""];
  "sha256:b97c9cff727bc06d5b0bb5fde9789263c902db63e5dce64b9007602981528bd4" -> "sha256:82c7a4cef2cbd1f6667fe4389f7eb97be726634e8af5dbfd0e0f535e8f483ce5" [label=""];
  "sha256:82c7a4cef2cbd1f6667fe4389f7eb97be726634e8af5dbfd0e0f535e8f483ce5" -> "sha256:6838fbff53881d3a64d77dc6b7447b38d354a64261c4598fb824aae39cd70ab8" [label=""];
}

