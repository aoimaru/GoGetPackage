[app/sources/322562051.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:248f2839150f9de5ec424732ccaa9f84d81ca6fd101070142ba94c827f74e839" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:943a9aff896508a0e0cf18b33a4d7df721c34133a1d25728d2145b3523c9ef7d" [label="/bin/sh -c apt-get install -y python-pip python-dev build-essential && pip install --upgrade pip && pip install numpy && pip install flask && pip install scipy && pip install scikit-learn && pip install matplotlib && pip install requests && pip install pillow" shape="box"];
  "sha256:38d6061b067e8471306790ab4291836475001a328293f58ee3819464f0d8bb46" [label="local://context" shape="ellipse"];
  "sha256:4052f58a6cbbded402f24427db1f1cca5c5f5d4ca8020f8e9cb5ddf3fb02d27a" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:fb52731d4ea7d0eadf4b781315eb4649052033b6653863aaa206d7d305db2101" [label="mkdir{path=/app}" shape="note"];
  "sha256:757b8caf34a3dcaff272b071c03ec70e50ff226074b79956cdcd7881b48a59b4" [label="sha256:757b8caf34a3dcaff272b071c03ec70e50ff226074b79956cdcd7881b48a59b4" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:248f2839150f9de5ec424732ccaa9f84d81ca6fd101070142ba94c827f74e839" [label=""];
  "sha256:248f2839150f9de5ec424732ccaa9f84d81ca6fd101070142ba94c827f74e839" -> "sha256:943a9aff896508a0e0cf18b33a4d7df721c34133a1d25728d2145b3523c9ef7d" [label=""];
  "sha256:943a9aff896508a0e0cf18b33a4d7df721c34133a1d25728d2145b3523c9ef7d" -> "sha256:4052f58a6cbbded402f24427db1f1cca5c5f5d4ca8020f8e9cb5ddf3fb02d27a" [label=""];
  "sha256:38d6061b067e8471306790ab4291836475001a328293f58ee3819464f0d8bb46" -> "sha256:4052f58a6cbbded402f24427db1f1cca5c5f5d4ca8020f8e9cb5ddf3fb02d27a" [label=""];
  "sha256:4052f58a6cbbded402f24427db1f1cca5c5f5d4ca8020f8e9cb5ddf3fb02d27a" -> "sha256:fb52731d4ea7d0eadf4b781315eb4649052033b6653863aaa206d7d305db2101" [label=""];
  "sha256:fb52731d4ea7d0eadf4b781315eb4649052033b6653863aaa206d7d305db2101" -> "sha256:757b8caf34a3dcaff272b071c03ec70e50ff226074b79956cdcd7881b48a59b4" [label=""];
}

