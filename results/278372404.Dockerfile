[app/sources/278372404.Dockerfile]
digraph {
  "sha256:83ab8fdd191446683e396f7192d6e28dcf80029d022a62b8260c7c3a5455376a" [label="docker-image://docker.io/kilda/base-ubuntu:latest" shape="ellipse"];
  "sha256:f2ccfb62a793f826455027e0cac9e392d0d7bf7f6e8405b8ad7095e110f709ae" [label="local://context" shape="ellipse"];
  "sha256:7603e6e17ee133c572e3f8c2eef26edad2dcd01c91db225411fe4cb82a6f3f28" [label="copy{src=/target/atdd-staging-*.jar, dest=/app/atdd-staging.jar}" shape="note"];
  "sha256:ec64bfe6cae6dc553b5eeccd22a54e4aa65cc96f00e6e821093bd2e6e119b44f" [label="copy{src=/target/lib/*.jar, dest=/app/lib/}" shape="note"];
  "sha256:9c8e444e35d1b8ed76de67e2dfe26bfb331e057ca0d2946e2f9ca4be38ed4f1c" [label="copy{src=/log4j2.xml, dest=/app/}" shape="note"];
  "sha256:1184f95100353e5f239f58998fb1e7f75d3c173b7eb6345c3bb40fc448562d6d" [label="copy{src=/kilda.properties, dest=/app/}" shape="note"];
  "sha256:2b48eef598e8393afc553b6b9d084b8f328f0da79417195bdb5046fc1ae3381f" [label="mkdir{path=/app}" shape="note"];
  "sha256:c8f37094bdcd6bc8e7f7c87bba751477b630bf597875e200c215e71bcb730fb8" [label="sha256:c8f37094bdcd6bc8e7f7c87bba751477b630bf597875e200c215e71bcb730fb8" shape="plaintext"];
  "sha256:83ab8fdd191446683e396f7192d6e28dcf80029d022a62b8260c7c3a5455376a" -> "sha256:7603e6e17ee133c572e3f8c2eef26edad2dcd01c91db225411fe4cb82a6f3f28" [label=""];
  "sha256:f2ccfb62a793f826455027e0cac9e392d0d7bf7f6e8405b8ad7095e110f709ae" -> "sha256:7603e6e17ee133c572e3f8c2eef26edad2dcd01c91db225411fe4cb82a6f3f28" [label=""];
  "sha256:7603e6e17ee133c572e3f8c2eef26edad2dcd01c91db225411fe4cb82a6f3f28" -> "sha256:ec64bfe6cae6dc553b5eeccd22a54e4aa65cc96f00e6e821093bd2e6e119b44f" [label=""];
  "sha256:f2ccfb62a793f826455027e0cac9e392d0d7bf7f6e8405b8ad7095e110f709ae" -> "sha256:ec64bfe6cae6dc553b5eeccd22a54e4aa65cc96f00e6e821093bd2e6e119b44f" [label=""];
  "sha256:ec64bfe6cae6dc553b5eeccd22a54e4aa65cc96f00e6e821093bd2e6e119b44f" -> "sha256:9c8e444e35d1b8ed76de67e2dfe26bfb331e057ca0d2946e2f9ca4be38ed4f1c" [label=""];
  "sha256:f2ccfb62a793f826455027e0cac9e392d0d7bf7f6e8405b8ad7095e110f709ae" -> "sha256:9c8e444e35d1b8ed76de67e2dfe26bfb331e057ca0d2946e2f9ca4be38ed4f1c" [label=""];
  "sha256:9c8e444e35d1b8ed76de67e2dfe26bfb331e057ca0d2946e2f9ca4be38ed4f1c" -> "sha256:1184f95100353e5f239f58998fb1e7f75d3c173b7eb6345c3bb40fc448562d6d" [label=""];
  "sha256:f2ccfb62a793f826455027e0cac9e392d0d7bf7f6e8405b8ad7095e110f709ae" -> "sha256:1184f95100353e5f239f58998fb1e7f75d3c173b7eb6345c3bb40fc448562d6d" [label=""];
  "sha256:1184f95100353e5f239f58998fb1e7f75d3c173b7eb6345c3bb40fc448562d6d" -> "sha256:2b48eef598e8393afc553b6b9d084b8f328f0da79417195bdb5046fc1ae3381f" [label=""];
  "sha256:2b48eef598e8393afc553b6b9d084b8f328f0da79417195bdb5046fc1ae3381f" -> "sha256:c8f37094bdcd6bc8e7f7c87bba751477b630bf597875e200c215e71bcb730fb8" [label=""];
}

