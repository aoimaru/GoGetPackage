[app/sources/148690396.Dockerfile]
digraph {
  "sha256:0bdbd2586cea19f8870cead10a86a9a7c906c7965b8aefdd1c7b1f93e8345898" [label="docker-image://docker.io/anapsix/alpine-java:8_server-jre_unlimited" shape="ellipse"];
  "sha256:e1c73f812528c54acb98f8249eab36f8da11e81d8ec6f40c2ccf1e5240ee0279" [label="local://context" shape="ellipse"];
  "sha256:493151fc3f95edaa12d2b5aca513e21f4fe4481d4706ba1de3544c6c334fa739" [label="copy{src=/target/panda-auth-0.0.1-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:87dfd56a157ec3467eda292bfe542e9ec16f94d3666d425a01ca7a9da8f15de9" [label="/bin/sh -c bash -c 'touch /app.jar'" shape="box"];
  "sha256:3f2c98388dd2f9118d6c9f76fe3e7c753dcabf6a7e2a07bc35d11221bbde4956" [label="sha256:3f2c98388dd2f9118d6c9f76fe3e7c753dcabf6a7e2a07bc35d11221bbde4956" shape="plaintext"];
  "sha256:0bdbd2586cea19f8870cead10a86a9a7c906c7965b8aefdd1c7b1f93e8345898" -> "sha256:493151fc3f95edaa12d2b5aca513e21f4fe4481d4706ba1de3544c6c334fa739" [label=""];
  "sha256:e1c73f812528c54acb98f8249eab36f8da11e81d8ec6f40c2ccf1e5240ee0279" -> "sha256:493151fc3f95edaa12d2b5aca513e21f4fe4481d4706ba1de3544c6c334fa739" [label=""];
  "sha256:493151fc3f95edaa12d2b5aca513e21f4fe4481d4706ba1de3544c6c334fa739" -> "sha256:87dfd56a157ec3467eda292bfe542e9ec16f94d3666d425a01ca7a9da8f15de9" [label=""];
  "sha256:87dfd56a157ec3467eda292bfe542e9ec16f94d3666d425a01ca7a9da8f15de9" -> "sha256:3f2c98388dd2f9118d6c9f76fe3e7c753dcabf6a7e2a07bc35d11221bbde4956" [label=""];
}

