[app/sources/214748372.Dockerfile]
digraph {
  "sha256:06ebc3ccd9fea5a730b1ba002e137d6ec1bf888de648375335d03a47d88de189" [label="docker-image://docker.io/library/openjdk:8u111-jre-alpine" shape="ellipse"];
  "sha256:5a4cefcf6c7ac0e334b755415eb655a134d586b4fa4f649c5f7bac84899a225d" [label="local://context" shape="ellipse"];
  "sha256:87b56338bf4f6e141b5c6654c658e0c3b81f877e661c043486d09cd51e9ca2c5" [label="copy{src=/build/libs/*.jar, dest=/app.jar}" shape="note"];
  "sha256:d1818ee7e1472e8999a8fa9ccf84398ac2effc0b11e91e1a11431f0924ec7d27" [label="copy{src=/src/main/resources/truststore.jks, dest=/truststore.jks}" shape="note"];
  "sha256:e9c6f09e0a0f20870432aa56977334266f1e824ed1f19506f09b28028810e46c" [label="sha256:e9c6f09e0a0f20870432aa56977334266f1e824ed1f19506f09b28028810e46c" shape="plaintext"];
  "sha256:06ebc3ccd9fea5a730b1ba002e137d6ec1bf888de648375335d03a47d88de189" -> "sha256:87b56338bf4f6e141b5c6654c658e0c3b81f877e661c043486d09cd51e9ca2c5" [label=""];
  "sha256:5a4cefcf6c7ac0e334b755415eb655a134d586b4fa4f649c5f7bac84899a225d" -> "sha256:87b56338bf4f6e141b5c6654c658e0c3b81f877e661c043486d09cd51e9ca2c5" [label=""];
  "sha256:87b56338bf4f6e141b5c6654c658e0c3b81f877e661c043486d09cd51e9ca2c5" -> "sha256:d1818ee7e1472e8999a8fa9ccf84398ac2effc0b11e91e1a11431f0924ec7d27" [label=""];
  "sha256:5a4cefcf6c7ac0e334b755415eb655a134d586b4fa4f649c5f7bac84899a225d" -> "sha256:d1818ee7e1472e8999a8fa9ccf84398ac2effc0b11e91e1a11431f0924ec7d27" [label=""];
  "sha256:d1818ee7e1472e8999a8fa9ccf84398ac2effc0b11e91e1a11431f0924ec7d27" -> "sha256:e9c6f09e0a0f20870432aa56977334266f1e824ed1f19506f09b28028810e46c" [label=""];
}

