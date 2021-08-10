[app/sources/239716286.Dockerfile]
digraph {
  "sha256:414cd28b99837ee127173add3b2718a4d83d6ecc4b5f169a17d3c6bbd22a83a0" [label="docker-image://docker.io/egovio/apline-jre:8u121" shape="ellipse"];
  "sha256:909dcf3d19d91ee3c79bbfe569b63ef2c1be18c617efc3aabc33b91197875559" [label="local://context" shape="ellipse"];
  "sha256:a3b1ae109afd576192a247065520d6aa0754146da6288c42cf8043320df6b012" [label="copy{src=/target/lcms-notification-0.0.1-SNAPSHOT.jar, dest=/opt/egov/lcms-notification.jar}" shape="note"];
  "sha256:30c452f6700106c51d552a7e0fd6c5eed61cbc2b513ba36d01d6d96e24e51031" [label="copy{src=/start.sh, dest=/usr/bin/start.sh}" shape="note"];
  "sha256:3014633ed7cb68b9d31e40d4aa66233937a1c1b7cff6861c40e85f37962e934e" [label="/bin/sh -c chmod +x /usr/bin/start.sh" shape="box"];
  "sha256:779417a3f96ebfe67aa1b3fe5500689af1402348686ef25b0e40f46709f58e8c" [label="sha256:779417a3f96ebfe67aa1b3fe5500689af1402348686ef25b0e40f46709f58e8c" shape="plaintext"];
  "sha256:414cd28b99837ee127173add3b2718a4d83d6ecc4b5f169a17d3c6bbd22a83a0" -> "sha256:a3b1ae109afd576192a247065520d6aa0754146da6288c42cf8043320df6b012" [label=""];
  "sha256:909dcf3d19d91ee3c79bbfe569b63ef2c1be18c617efc3aabc33b91197875559" -> "sha256:a3b1ae109afd576192a247065520d6aa0754146da6288c42cf8043320df6b012" [label=""];
  "sha256:a3b1ae109afd576192a247065520d6aa0754146da6288c42cf8043320df6b012" -> "sha256:30c452f6700106c51d552a7e0fd6c5eed61cbc2b513ba36d01d6d96e24e51031" [label=""];
  "sha256:909dcf3d19d91ee3c79bbfe569b63ef2c1be18c617efc3aabc33b91197875559" -> "sha256:30c452f6700106c51d552a7e0fd6c5eed61cbc2b513ba36d01d6d96e24e51031" [label=""];
  "sha256:30c452f6700106c51d552a7e0fd6c5eed61cbc2b513ba36d01d6d96e24e51031" -> "sha256:3014633ed7cb68b9d31e40d4aa66233937a1c1b7cff6861c40e85f37962e934e" [label=""];
  "sha256:3014633ed7cb68b9d31e40d4aa66233937a1c1b7cff6861c40e85f37962e934e" -> "sha256:779417a3f96ebfe67aa1b3fe5500689af1402348686ef25b0e40f46709f58e8c" [label=""];
}

