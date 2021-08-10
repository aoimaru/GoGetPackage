[app/sources/252787985.Dockerfile]
digraph {
  "sha256:d05337d1c581b74c5280cccc0c3080c47be04a0acd78be8ff5a73722d330aa5a" [label="docker-image://docker.io/library/elasticsearch:2.3" shape="ellipse"];
  "sha256:ef813281cb4b9c37b8e84d2f7f11111f576867c558d92bff6947307b18e3aa00" [label="local://context" shape="ellipse"];
  "sha256:3e3126aa7ab17847dfed675c06bc2a3bccc4b7af431f6d48787f78fd6dd52f3d" [label="copy{src=/config, dest=/usr/share/elasticsearch/config}" shape="note"];
  "sha256:17ecf4c8cad3e45c59a11d2488b1f738fe0f1db7dca2fb00831643f6fecbfd98" [label="/bin/sh -c /usr/share/elasticsearch/bin/plugin install mobz/elasticsearch-head" shape="box"];
  "sha256:9480f767a8832e203883cef3547a4cca48154c0ed90ffa23d018765c2d9feeff" [label="sha256:9480f767a8832e203883cef3547a4cca48154c0ed90ffa23d018765c2d9feeff" shape="plaintext"];
  "sha256:d05337d1c581b74c5280cccc0c3080c47be04a0acd78be8ff5a73722d330aa5a" -> "sha256:3e3126aa7ab17847dfed675c06bc2a3bccc4b7af431f6d48787f78fd6dd52f3d" [label=""];
  "sha256:ef813281cb4b9c37b8e84d2f7f11111f576867c558d92bff6947307b18e3aa00" -> "sha256:3e3126aa7ab17847dfed675c06bc2a3bccc4b7af431f6d48787f78fd6dd52f3d" [label=""];
  "sha256:3e3126aa7ab17847dfed675c06bc2a3bccc4b7af431f6d48787f78fd6dd52f3d" -> "sha256:17ecf4c8cad3e45c59a11d2488b1f738fe0f1db7dca2fb00831643f6fecbfd98" [label=""];
  "sha256:17ecf4c8cad3e45c59a11d2488b1f738fe0f1db7dca2fb00831643f6fecbfd98" -> "sha256:9480f767a8832e203883cef3547a4cca48154c0ed90ffa23d018765c2d9feeff" [label=""];
}

