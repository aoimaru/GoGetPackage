[app/sources/185245002.Dockerfile]
digraph {
  "sha256:faefce11a15b3d4f062d6aa0e544d0a3e0a23d6d463cac423e5715d96d34fcb4" [label="docker-image://docker.io/crs4_pydoop/apache_2.6.0_base:latest" shape="ellipse"];
  "sha256:4468e382b7582d3a51fce720ccbcceafd9b4f212bb0d8fd9d01486c3b16dd041" [label="local://context" shape="ellipse"];
  "sha256:f6958ec4f3466cb6c1d1f9f013050599456d206bebf5abc0fa92fb829dabd209" [label="copy{src=/scripts/start_nodemanager.sh, dest=/tmp/}" shape="note"];
  "sha256:5c226cd6b8fc724a1da212cb766e189eb7907dbee181ee6fd3beb4cd3abc1374" [label="sha256:5c226cd6b8fc724a1da212cb766e189eb7907dbee181ee6fd3beb4cd3abc1374" shape="plaintext"];
  "sha256:faefce11a15b3d4f062d6aa0e544d0a3e0a23d6d463cac423e5715d96d34fcb4" -> "sha256:f6958ec4f3466cb6c1d1f9f013050599456d206bebf5abc0fa92fb829dabd209" [label=""];
  "sha256:4468e382b7582d3a51fce720ccbcceafd9b4f212bb0d8fd9d01486c3b16dd041" -> "sha256:f6958ec4f3466cb6c1d1f9f013050599456d206bebf5abc0fa92fb829dabd209" [label=""];
  "sha256:f6958ec4f3466cb6c1d1f9f013050599456d206bebf5abc0fa92fb829dabd209" -> "sha256:5c226cd6b8fc724a1da212cb766e189eb7907dbee181ee6fd3beb4cd3abc1374" [label=""];
}

