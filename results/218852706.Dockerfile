[app/sources/218852706.Dockerfile]
digraph {
  "sha256:294e803cbebbaccd14b17de7c8c64925339c876e6e6c9686c7333dbce4d14fb6" [label="docker-image://docker.io/andrewd/musl-cross-arm:latest" shape="ellipse"];
  "sha256:91c2f60ea656e4cb330d03e0b5471df6e7c9db647aaf13c9b9dbdca675886f60" [label="local://context" shape="ellipse"];
  "sha256:513dcef1a230e6aa17683b2e3d431b292f81b9c7acff99bbc2ff35482bb58374" [label="copy{src=/build.sh, dest=/build/build.sh}" shape="note"];
  "sha256:b0d3f7dfb82ba4b124b1447179c3dd6fcdba06ee05ee285c2893d93d3c56e3e9" [label="sha256:b0d3f7dfb82ba4b124b1447179c3dd6fcdba06ee05ee285c2893d93d3c56e3e9" shape="plaintext"];
  "sha256:294e803cbebbaccd14b17de7c8c64925339c876e6e6c9686c7333dbce4d14fb6" -> "sha256:513dcef1a230e6aa17683b2e3d431b292f81b9c7acff99bbc2ff35482bb58374" [label=""];
  "sha256:91c2f60ea656e4cb330d03e0b5471df6e7c9db647aaf13c9b9dbdca675886f60" -> "sha256:513dcef1a230e6aa17683b2e3d431b292f81b9c7acff99bbc2ff35482bb58374" [label=""];
  "sha256:513dcef1a230e6aa17683b2e3d431b292f81b9c7acff99bbc2ff35482bb58374" -> "sha256:b0d3f7dfb82ba4b124b1447179c3dd6fcdba06ee05ee285c2893d93d3c56e3e9" [label=""];
}

