[app/sources/253990758.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:615fb11d61f05a5bc3dd740f5a74c353315a8a2966533671d7de329c72497c61" [label="local://context" shape="ellipse"];
  "sha256:da651660b9ab12e0454b0546d58302d8f534c2c649375ec458366173398aae41" [label="copy{src=/target/example-graphql-subscription-1.0.0.jar, dest=/server.jar}" shape="note"];
  "sha256:1f2d83da04406c8c0bacdf738c1fc06ed46279503f98251db7b859a1244d554b" [label="sha256:1f2d83da04406c8c0bacdf738c1fc06ed46279503f98251db7b859a1244d554b" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:da651660b9ab12e0454b0546d58302d8f534c2c649375ec458366173398aae41" [label=""];
  "sha256:615fb11d61f05a5bc3dd740f5a74c353315a8a2966533671d7de329c72497c61" -> "sha256:da651660b9ab12e0454b0546d58302d8f534c2c649375ec458366173398aae41" [label=""];
  "sha256:da651660b9ab12e0454b0546d58302d8f534c2c649375ec458366173398aae41" -> "sha256:1f2d83da04406c8c0bacdf738c1fc06ed46279503f98251db7b859a1244d554b" [label=""];
}

