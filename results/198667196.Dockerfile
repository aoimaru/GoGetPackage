[app/sources/198667196.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:e0b4dedd6030ed19372cd9e831959feaffabbf2ac7d1d02ca60af12c3ffab4f0" [label="/bin/sh -c apt-get install -y curl maven openjdk-7-jre" shape="box"];
  "sha256:3a8247fbf8f2828f94055bc8793f29ad39bfaeffe9016cede5ec426a748363f9" [label="/bin/sh -c curl -O --location https://github.com/brianfrankcooper/YCSB/releases/download/0.12.0/ycsb-0.12.0.tar.gz" shape="box"];
  "sha256:b04e260fba5f947d244e3c99c7427ce1f91fc30bbc6ee19d4d80f0ee3e717e24" [label="/bin/sh -c tar xfvz ycsb-0.12.0.tar.gz" shape="box"];
  "sha256:442843ac3d7c0866ca4a46a48a99ee83ff7cc0d81604868679204875841ae19e" [label="mkdir{path=/ycsb-0.12.0}" shape="note"];
  "sha256:2e5b78c7023d3c6aa7e6d659b158f7509c02f7eb9eff29b96184e94a83f6f7e2" [label="sha256:2e5b78c7023d3c6aa7e6d659b158f7509c02f7eb9eff29b96184e94a83f6f7e2" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:e0b4dedd6030ed19372cd9e831959feaffabbf2ac7d1d02ca60af12c3ffab4f0" [label=""];
  "sha256:e0b4dedd6030ed19372cd9e831959feaffabbf2ac7d1d02ca60af12c3ffab4f0" -> "sha256:3a8247fbf8f2828f94055bc8793f29ad39bfaeffe9016cede5ec426a748363f9" [label=""];
  "sha256:3a8247fbf8f2828f94055bc8793f29ad39bfaeffe9016cede5ec426a748363f9" -> "sha256:b04e260fba5f947d244e3c99c7427ce1f91fc30bbc6ee19d4d80f0ee3e717e24" [label=""];
  "sha256:b04e260fba5f947d244e3c99c7427ce1f91fc30bbc6ee19d4d80f0ee3e717e24" -> "sha256:442843ac3d7c0866ca4a46a48a99ee83ff7cc0d81604868679204875841ae19e" [label=""];
  "sha256:442843ac3d7c0866ca4a46a48a99ee83ff7cc0d81604868679204875841ae19e" -> "sha256:2e5b78c7023d3c6aa7e6d659b158f7509c02f7eb9eff29b96184e94a83f6f7e2" [label=""];
}

