[app/sources/318080468.Dockerfile]
digraph {
  "sha256:516f336a84c875bd507d56fee13cfb9ef34c9acbd9b278991ac85c87f4da2ca8" [label="docker-image://docker.io/library/dragnn-oss-test-base:latest" shape="ellipse"];
  "sha256:da148e3f10f3c803e1959d8d3dfbbae51d8def917a55ce98a907a9e7d81bdc28" [label="/bin/sh -c rm -rf   $SYNTAXNETDIR/syntaxnet/dragnn   $SYNTAXNETDIR/syntaxnet/syntaxnet   $SYNTAXNETDIR/syntaxnet/third_party   $SYNTAXNETDIR/syntaxnet/util/utf8" shape="box"];
  "sha256:4e7f692ac5922bbc0e3e09deb4a6c65fb556d91b71b081d1dc6944d0be32cf67" [label="local://context" shape="ellipse"];
  "sha256:0143cd0eca44c56ff49339815ec56b2169cfaa03cca5d75cdc7bcaa23d7a3fa4" [label="copy{src=/dragnn, dest=/syntaxnet/dragnn}" shape="note"];
  "sha256:5e41a9713ebe9c561dabba77c15d3529fd915519ee58499a705f8e665a056e23" [label="copy{src=/syntaxnet, dest=/syntaxnet/syntaxnet}" shape="note"];
  "sha256:cdc403b60a0b470c0bb578ce60d0bb3cdf4a1da9915b70ee2ad5e841a3dba3f3" [label="copy{src=/third_party, dest=/syntaxnet/third_party}" shape="note"];
  "sha256:c58305605735d0806c1ab92b6e4786f433fd4cd154086656288ea36395a27b05" [label="copy{src=/util/utf8, dest=/syntaxnet/util/utf8}" shape="note"];
  "sha256:1c6e115c015ee6795c464bca046b85ab1adb55b15263019dc9f9cd8d7ec9adef" [label="sha256:1c6e115c015ee6795c464bca046b85ab1adb55b15263019dc9f9cd8d7ec9adef" shape="plaintext"];
  "sha256:516f336a84c875bd507d56fee13cfb9ef34c9acbd9b278991ac85c87f4da2ca8" -> "sha256:da148e3f10f3c803e1959d8d3dfbbae51d8def917a55ce98a907a9e7d81bdc28" [label=""];
  "sha256:da148e3f10f3c803e1959d8d3dfbbae51d8def917a55ce98a907a9e7d81bdc28" -> "sha256:0143cd0eca44c56ff49339815ec56b2169cfaa03cca5d75cdc7bcaa23d7a3fa4" [label=""];
  "sha256:4e7f692ac5922bbc0e3e09deb4a6c65fb556d91b71b081d1dc6944d0be32cf67" -> "sha256:0143cd0eca44c56ff49339815ec56b2169cfaa03cca5d75cdc7bcaa23d7a3fa4" [label=""];
  "sha256:0143cd0eca44c56ff49339815ec56b2169cfaa03cca5d75cdc7bcaa23d7a3fa4" -> "sha256:5e41a9713ebe9c561dabba77c15d3529fd915519ee58499a705f8e665a056e23" [label=""];
  "sha256:4e7f692ac5922bbc0e3e09deb4a6c65fb556d91b71b081d1dc6944d0be32cf67" -> "sha256:5e41a9713ebe9c561dabba77c15d3529fd915519ee58499a705f8e665a056e23" [label=""];
  "sha256:5e41a9713ebe9c561dabba77c15d3529fd915519ee58499a705f8e665a056e23" -> "sha256:cdc403b60a0b470c0bb578ce60d0bb3cdf4a1da9915b70ee2ad5e841a3dba3f3" [label=""];
  "sha256:4e7f692ac5922bbc0e3e09deb4a6c65fb556d91b71b081d1dc6944d0be32cf67" -> "sha256:cdc403b60a0b470c0bb578ce60d0bb3cdf4a1da9915b70ee2ad5e841a3dba3f3" [label=""];
  "sha256:cdc403b60a0b470c0bb578ce60d0bb3cdf4a1da9915b70ee2ad5e841a3dba3f3" -> "sha256:c58305605735d0806c1ab92b6e4786f433fd4cd154086656288ea36395a27b05" [label=""];
  "sha256:4e7f692ac5922bbc0e3e09deb4a6c65fb556d91b71b081d1dc6944d0be32cf67" -> "sha256:c58305605735d0806c1ab92b6e4786f433fd4cd154086656288ea36395a27b05" [label=""];
  "sha256:c58305605735d0806c1ab92b6e4786f433fd4cd154086656288ea36395a27b05" -> "sha256:1c6e115c015ee6795c464bca046b85ab1adb55b15263019dc9f9cd8d7ec9adef" [label=""];
}

