[app/sources/252782276.Dockerfile]
digraph {
  "sha256:a8bbe25844bfbe9fd47050ad0e4556eedf054936dd17bd1346d1a8b0c086d1cb" [label="local://context" shape="ellipse"];
  "sha256:b9bf17aec2fbb36a69a0f557c0583eef3a743af5b52c963256cc7e4d9ba46668" [label="copy{src=/tmp.tar.gz, dest=/}" shape="note"];
  "sha256:834862c3af72fea1860aae5403330f197a06179c9aeb2a90c2b9023786e600b6" [label="sha256:834862c3af72fea1860aae5403330f197a06179c9aeb2a90c2b9023786e600b6" shape="plaintext"];
  "sha256:a8bbe25844bfbe9fd47050ad0e4556eedf054936dd17bd1346d1a8b0c086d1cb" -> "sha256:b9bf17aec2fbb36a69a0f557c0583eef3a743af5b52c963256cc7e4d9ba46668" [label=""];
  "sha256:b9bf17aec2fbb36a69a0f557c0583eef3a743af5b52c963256cc7e4d9ba46668" -> "sha256:834862c3af72fea1860aae5403330f197a06179c9aeb2a90c2b9023786e600b6" [label=""];
}

