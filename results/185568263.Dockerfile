[app/sources/185568263.Dockerfile]
digraph {
  "sha256:6ca951dd7fd926926b2ea667b1be2c9010e8d3a4359cddc5d3c8b66416428191" [label="docker-image://docker.io/library/postgres:10-alpine" shape="ellipse"];
  "sha256:c8837d65e3ce9c4a5c539de73ec39579d2f96e731ad14b82755a34eae76471a0" [label="local://context" shape="ellipse"];
  "sha256:a27b6d56b13ca6435f815e96a6bfe5db7838d33a6cd6975a1d13041a42eda8c0" [label="copy{src=/docker-entrypoint-initdb.d/init-burpui-db.sh, dest=/docker-entrypoint-initdb.d/init-burpui-db.sh}" shape="note"];
  "sha256:528902228f9acae7e87951155843684b3bf0d90ced2fe8d5d4a40e5e1e1166fc" [label="sha256:528902228f9acae7e87951155843684b3bf0d90ced2fe8d5d4a40e5e1e1166fc" shape="plaintext"];
  "sha256:6ca951dd7fd926926b2ea667b1be2c9010e8d3a4359cddc5d3c8b66416428191" -> "sha256:a27b6d56b13ca6435f815e96a6bfe5db7838d33a6cd6975a1d13041a42eda8c0" [label=""];
  "sha256:c8837d65e3ce9c4a5c539de73ec39579d2f96e731ad14b82755a34eae76471a0" -> "sha256:a27b6d56b13ca6435f815e96a6bfe5db7838d33a6cd6975a1d13041a42eda8c0" [label=""];
  "sha256:a27b6d56b13ca6435f815e96a6bfe5db7838d33a6cd6975a1d13041a42eda8c0" -> "sha256:528902228f9acae7e87951155843684b3bf0d90ced2fe8d5d4a40e5e1e1166fc" [label=""];
}

