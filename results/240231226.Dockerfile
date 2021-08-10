[app/sources/240231226.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:8b5944087bea72c9a7cf80d56804b24e810a3acc9cdddb7155e1e83a7a0d11d0" [label="mkdir{path=/app}" shape="note"];
  "sha256:d1b92fbe3c06c05fd466f1a45782cc8ad0fe55d650002c87c7f751fea5416456" [label="local://context" shape="ellipse"];
  "sha256:bdb79e6f8ab4f99ab6c67463de3f9d4827ddbcd287dfffe32f9a1709ca4ebc2c" [label="copy{src=/target/i686-unknown-linux-musl/debug/examples/use_all_memory, dest=/app/}" shape="note"];
  "sha256:d935f5bd79d521cc00f58341148c83dbcde93fd236e888d2bb98637ab082ae13" [label="sha256:d935f5bd79d521cc00f58341148c83dbcde93fd236e888d2bb98637ab082ae13" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:8b5944087bea72c9a7cf80d56804b24e810a3acc9cdddb7155e1e83a7a0d11d0" [label=""];
  "sha256:8b5944087bea72c9a7cf80d56804b24e810a3acc9cdddb7155e1e83a7a0d11d0" -> "sha256:bdb79e6f8ab4f99ab6c67463de3f9d4827ddbcd287dfffe32f9a1709ca4ebc2c" [label=""];
  "sha256:d1b92fbe3c06c05fd466f1a45782cc8ad0fe55d650002c87c7f751fea5416456" -> "sha256:bdb79e6f8ab4f99ab6c67463de3f9d4827ddbcd287dfffe32f9a1709ca4ebc2c" [label=""];
  "sha256:bdb79e6f8ab4f99ab6c67463de3f9d4827ddbcd287dfffe32f9a1709ca4ebc2c" -> "sha256:d935f5bd79d521cc00f58341148c83dbcde93fd236e888d2bb98637ab082ae13" [label=""];
}

