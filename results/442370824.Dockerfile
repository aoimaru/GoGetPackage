[app/sources/442370824.Dockerfile]
digraph {
  "sha256:700254505a02a7f390fce98dd37af282a301652537ab5ec915c6394a9262f6e0" [label="docker-image://docker.io/teco/cdh3-hadoop-base:latest" shape="ellipse"];
  "sha256:7e1b62dfd8040a6c45a666ef8c38a91f9cc0e50a619896823eb1d271b33a3e10" [label="local://context" shape="ellipse"];
  "sha256:98e0173cc458e28aa6edc3e92edc9500db05542521e6daa90d529da5ffb5ee6d" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:b8ec62fb7aca7bfaa78ab8fe104b608fe902ecdb746c0024a833a3d6cd18ccaa" [label="sha256:b8ec62fb7aca7bfaa78ab8fe104b608fe902ecdb746c0024a833a3d6cd18ccaa" shape="plaintext"];
  "sha256:700254505a02a7f390fce98dd37af282a301652537ab5ec915c6394a9262f6e0" -> "sha256:98e0173cc458e28aa6edc3e92edc9500db05542521e6daa90d529da5ffb5ee6d" [label=""];
  "sha256:7e1b62dfd8040a6c45a666ef8c38a91f9cc0e50a619896823eb1d271b33a3e10" -> "sha256:98e0173cc458e28aa6edc3e92edc9500db05542521e6daa90d529da5ffb5ee6d" [label=""];
  "sha256:98e0173cc458e28aa6edc3e92edc9500db05542521e6daa90d529da5ffb5ee6d" -> "sha256:b8ec62fb7aca7bfaa78ab8fe104b608fe902ecdb746c0024a833a3d6cd18ccaa" [label=""];
}

