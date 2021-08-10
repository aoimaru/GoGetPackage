[app/sources/334136675.Dockerfile]
digraph {
  "sha256:3df6e55851489e86c2e3c0067dad00a58a7b3cefba766c18f4bff092aaf173d0" [label="docker-image://docker.io/library/maven:3.5-jdk-8-alpine" shape="ellipse"];
  "sha256:81b5480bc7efe48b88f2cbe3a734f199a16594ba07e149a0dd05d30cce751083" [label="mkdir{path=/app}" shape="note"];
  "sha256:98725d54d826de3413b97636d5b60ddbb2f1d140537f6592fb6a5f51688e6f26" [label="local://context" shape="ellipse"];
  "sha256:b56bd5f9fc7462b6b155c7e0f8df418e55080fe95de8de3bc5a442a1673ed58f" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:f2efa5a9995b840a978492b9bf9f05b740a069ecfe3924b7148259b4d19b1863" [label="copy{src=/target/customer-service-0.0.1-SNAPSHOT.jar, dest=/app/customer-microservice.jar}" shape="note"];
  "sha256:ec4970208a61ba78f49c531f815201fc746bb74a85219b444fbbb91fda5afb9c" [label="sha256:ec4970208a61ba78f49c531f815201fc746bb74a85219b444fbbb91fda5afb9c" shape="plaintext"];
  "sha256:3df6e55851489e86c2e3c0067dad00a58a7b3cefba766c18f4bff092aaf173d0" -> "sha256:81b5480bc7efe48b88f2cbe3a734f199a16594ba07e149a0dd05d30cce751083" [label=""];
  "sha256:81b5480bc7efe48b88f2cbe3a734f199a16594ba07e149a0dd05d30cce751083" -> "sha256:b56bd5f9fc7462b6b155c7e0f8df418e55080fe95de8de3bc5a442a1673ed58f" [label=""];
  "sha256:98725d54d826de3413b97636d5b60ddbb2f1d140537f6592fb6a5f51688e6f26" -> "sha256:b56bd5f9fc7462b6b155c7e0f8df418e55080fe95de8de3bc5a442a1673ed58f" [label=""];
  "sha256:b56bd5f9fc7462b6b155c7e0f8df418e55080fe95de8de3bc5a442a1673ed58f" -> "sha256:f2efa5a9995b840a978492b9bf9f05b740a069ecfe3924b7148259b4d19b1863" [label=""];
  "sha256:98725d54d826de3413b97636d5b60ddbb2f1d140537f6592fb6a5f51688e6f26" -> "sha256:f2efa5a9995b840a978492b9bf9f05b740a069ecfe3924b7148259b4d19b1863" [label=""];
  "sha256:f2efa5a9995b840a978492b9bf9f05b740a069ecfe3924b7148259b4d19b1863" -> "sha256:ec4970208a61ba78f49c531f815201fc746bb74a85219b444fbbb91fda5afb9c" [label=""];
}

