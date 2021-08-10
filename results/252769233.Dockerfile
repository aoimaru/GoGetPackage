[app/sources/252769233.Dockerfile]
digraph {
  "sha256:29a8afb91d4d9d689d5ca66d6e163b1f9d357ecd3d11b50f2cd2c3d627d8df80" [label="docker-image://docker.io/library/node:9.1.0-alpine" shape="ellipse"];
  "sha256:08bf3634edc84f651fca4b42c10237eaa4f84e177be934e68d4a0e8062d3b7dc" [label="local://context" shape="ellipse"];
  "sha256:c89c8405c27bd387bada8cafc426d43ea5479238c1eb332267b4b0b6d7b88806" [label="copy{src=/--from=builder, dest=/app},copy{src=/app, dest=/app}" shape="note"];
  "sha256:86d71f0802fb772b8a5386f7734899da31a2b8e8ff25d766b6502a66eefd359c" [label="sha256:86d71f0802fb772b8a5386f7734899da31a2b8e8ff25d766b6502a66eefd359c" shape="plaintext"];
  "sha256:29a8afb91d4d9d689d5ca66d6e163b1f9d357ecd3d11b50f2cd2c3d627d8df80" -> "sha256:c89c8405c27bd387bada8cafc426d43ea5479238c1eb332267b4b0b6d7b88806" [label=""];
  "sha256:08bf3634edc84f651fca4b42c10237eaa4f84e177be934e68d4a0e8062d3b7dc" -> "sha256:c89c8405c27bd387bada8cafc426d43ea5479238c1eb332267b4b0b6d7b88806" [label=""];
  "sha256:c89c8405c27bd387bada8cafc426d43ea5479238c1eb332267b4b0b6d7b88806" -> "sha256:86d71f0802fb772b8a5386f7734899da31a2b8e8ff25d766b6502a66eefd359c" [label=""];
}

