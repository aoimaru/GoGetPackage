[app/sources/310857744.Dockerfile]
digraph {
  "sha256:3c65bd9efd4242a2b89ad0601021cadff80e49728b4b9fd14765872a9532e4f7" [label="docker-image://docker.io/amd64/alpine:latest" shape="ellipse"];
  "sha256:138141f2be919ad4a666ba485f742d292e64f4ab0f10096d48411f2b1fff9092" [label="mkdir{path=/app}" shape="note"];
  "sha256:55e404e28275ae8d9e4c0eb2653712b936c0a53eb98769c2fbcdff598a37217c" [label="local://context" shape="ellipse"];
  "sha256:e0c2d399aa6a539ae9b678ac07808cf218d4d038c9376352d1d1ced67cdbee76" [label="copy{src=/release/gateway_linux_amd64, dest=/app/gateway}" shape="note"];
  "sha256:921d67b270bee991535a27015cf929ac678a95d98f80a650f19e09f4a6dd3f6e" [label="copy{src=/cmd/gateway/entrypoint, dest=/entrypoint}" shape="note"];
  "sha256:9f5d828bb923cbb7faebbad740408f9bb50337a84fbb26a5fec85c226d329c77" [label="sha256:9f5d828bb923cbb7faebbad740408f9bb50337a84fbb26a5fec85c226d329c77" shape="plaintext"];
  "sha256:3c65bd9efd4242a2b89ad0601021cadff80e49728b4b9fd14765872a9532e4f7" -> "sha256:138141f2be919ad4a666ba485f742d292e64f4ab0f10096d48411f2b1fff9092" [label=""];
  "sha256:138141f2be919ad4a666ba485f742d292e64f4ab0f10096d48411f2b1fff9092" -> "sha256:e0c2d399aa6a539ae9b678ac07808cf218d4d038c9376352d1d1ced67cdbee76" [label=""];
  "sha256:55e404e28275ae8d9e4c0eb2653712b936c0a53eb98769c2fbcdff598a37217c" -> "sha256:e0c2d399aa6a539ae9b678ac07808cf218d4d038c9376352d1d1ced67cdbee76" [label=""];
  "sha256:e0c2d399aa6a539ae9b678ac07808cf218d4d038c9376352d1d1ced67cdbee76" -> "sha256:921d67b270bee991535a27015cf929ac678a95d98f80a650f19e09f4a6dd3f6e" [label=""];
  "sha256:55e404e28275ae8d9e4c0eb2653712b936c0a53eb98769c2fbcdff598a37217c" -> "sha256:921d67b270bee991535a27015cf929ac678a95d98f80a650f19e09f4a6dd3f6e" [label=""];
  "sha256:921d67b270bee991535a27015cf929ac678a95d98f80a650f19e09f4a6dd3f6e" -> "sha256:9f5d828bb923cbb7faebbad740408f9bb50337a84fbb26a5fec85c226d329c77" [label=""];
}

