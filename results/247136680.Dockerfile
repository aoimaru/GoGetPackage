[app/sources/247136680.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:d047b60c412b44f01654121608878fa2a0792cf7d5c1ef69258242bd43f34c54" [label="local://context" shape="ellipse"];
  "sha256:d4d08ff957bc40ff09072e6f1f5265bc9846355a886098e9fabc0d3ccef5a16a" [label="copy{src=/user-*.jar, dest=/app.jar}" shape="note"];
  "sha256:18949343bebe22d665af14cf376f7d4811f5b773a05b05fe2884751b188f7fa7" [label="sha256:18949343bebe22d665af14cf376f7d4811f5b773a05b05fe2884751b188f7fa7" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:d4d08ff957bc40ff09072e6f1f5265bc9846355a886098e9fabc0d3ccef5a16a" [label=""];
  "sha256:d047b60c412b44f01654121608878fa2a0792cf7d5c1ef69258242bd43f34c54" -> "sha256:d4d08ff957bc40ff09072e6f1f5265bc9846355a886098e9fabc0d3ccef5a16a" [label=""];
  "sha256:d4d08ff957bc40ff09072e6f1f5265bc9846355a886098e9fabc0d3ccef5a16a" -> "sha256:18949343bebe22d665af14cf376f7d4811f5b773a05b05fe2884751b188f7fa7" [label=""];
}

