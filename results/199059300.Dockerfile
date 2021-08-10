[app/sources/199059300.Dockerfile]
digraph {
  "sha256:924dce9898a7fd65339b4788689f4be5b2b380726816e221bc0e0b977290abf1" [label="docker-image://docker.io/library/node:9.11.1-alpine" shape="ellipse"];
  "sha256:c206997ae095d02558aba65fb3171d1995a17ed504b5fd6d67946a3a02269244" [label="local://context" shape="ellipse"];
  "sha256:7222f174ca4eeb256b84a51af19d0c8ebd23dcaab5d509a14f864e20bbcef807" [label="copy{src=/microdocs-core/dist/package.json, dest=/app/@maxxton/microdocs-core/dist/},copy{src=/microdocs-core/dist/.npmrc, dest=/app/@maxxton/microdocs-core/dist/}" shape="note"];
  "sha256:31c28feb0dd251af0f601aeab9a92b23b05353487dfa2ad0f6af32321c6a13df" [label="mkdir{path=/app/@maxxton/microdocs-core/dist}" shape="note"];
  "sha256:db92fbc8992dba9a92624734fcf35210f6ab7daf9c5dc9a1eff73d33680f3f40" [label="/bin/sh -c npm link" shape="box"];
  "sha256:8d2b02b53d08168f7423f1b68cd5a6bc05620f1a3bb905a0c55d11206c30a2c7" [label="mkdir{path=/app/@maxxton/microdocs-ui}" shape="note"];
  "sha256:3deb13726c7738009fe8a29dad4010399b8057cb3df540dc8cc1abb567bf22c8" [label="copy{src=/microdocs/microdocs-ui/package.json, dest=/app/@maxxton/microdocs-ui/},copy{src=/microdocs/microdocs-ui/.npmrc, dest=/app/@maxxton/microdocs-ui/}" shape="note"];
  "sha256:6c17d60f24824a1ba982a31df1068b05a3a8eeed908c9daf7803677cd7987212" [label="/bin/sh -c rm -rf /app/@maxxton/microdocs-core/dist/node_modules && npm link @maxxton/microdocs-core" shape="box"];
  "sha256:e58a91064f77d542f2f9f939b4a4e8cb8dde1b6bfc0c8f31a1242c9180db5b39" [label="/bin/sh -c npm install" shape="box"];
  "sha256:17dcb0ee4044bc90872d3a1fddfb3e1f2463f578a9edc26386d5b3feeb711252" [label="copy{src=/microdocs-core/dist, dest=/app/@maxxton/microdocs-core/dist}" shape="note"];
  "sha256:bdcfef3b7b608e39ba1f5a5eb918819a51217da56a2e644d7888e2e3f56ff4af" [label="copy{src=/microdocs/microdocs-ui/angular-cli.json, dest=/app/@maxxton/microdocs-ui/}" shape="note"];
  "sha256:aca514274cd3ab741d47f1d83141a9233009d20fe7026ab99a95060fec807a4e" [label="sha256:aca514274cd3ab741d47f1d83141a9233009d20fe7026ab99a95060fec807a4e" shape="plaintext"];
  "sha256:924dce9898a7fd65339b4788689f4be5b2b380726816e221bc0e0b977290abf1" -> "sha256:7222f174ca4eeb256b84a51af19d0c8ebd23dcaab5d509a14f864e20bbcef807" [label=""];
  "sha256:c206997ae095d02558aba65fb3171d1995a17ed504b5fd6d67946a3a02269244" -> "sha256:7222f174ca4eeb256b84a51af19d0c8ebd23dcaab5d509a14f864e20bbcef807" [label=""];
  "sha256:7222f174ca4eeb256b84a51af19d0c8ebd23dcaab5d509a14f864e20bbcef807" -> "sha256:31c28feb0dd251af0f601aeab9a92b23b05353487dfa2ad0f6af32321c6a13df" [label=""];
  "sha256:31c28feb0dd251af0f601aeab9a92b23b05353487dfa2ad0f6af32321c6a13df" -> "sha256:db92fbc8992dba9a92624734fcf35210f6ab7daf9c5dc9a1eff73d33680f3f40" [label=""];
  "sha256:db92fbc8992dba9a92624734fcf35210f6ab7daf9c5dc9a1eff73d33680f3f40" -> "sha256:8d2b02b53d08168f7423f1b68cd5a6bc05620f1a3bb905a0c55d11206c30a2c7" [label=""];
  "sha256:8d2b02b53d08168f7423f1b68cd5a6bc05620f1a3bb905a0c55d11206c30a2c7" -> "sha256:3deb13726c7738009fe8a29dad4010399b8057cb3df540dc8cc1abb567bf22c8" [label=""];
  "sha256:c206997ae095d02558aba65fb3171d1995a17ed504b5fd6d67946a3a02269244" -> "sha256:3deb13726c7738009fe8a29dad4010399b8057cb3df540dc8cc1abb567bf22c8" [label=""];
  "sha256:3deb13726c7738009fe8a29dad4010399b8057cb3df540dc8cc1abb567bf22c8" -> "sha256:6c17d60f24824a1ba982a31df1068b05a3a8eeed908c9daf7803677cd7987212" [label=""];
  "sha256:6c17d60f24824a1ba982a31df1068b05a3a8eeed908c9daf7803677cd7987212" -> "sha256:e58a91064f77d542f2f9f939b4a4e8cb8dde1b6bfc0c8f31a1242c9180db5b39" [label=""];
  "sha256:e58a91064f77d542f2f9f939b4a4e8cb8dde1b6bfc0c8f31a1242c9180db5b39" -> "sha256:17dcb0ee4044bc90872d3a1fddfb3e1f2463f578a9edc26386d5b3feeb711252" [label=""];
  "sha256:c206997ae095d02558aba65fb3171d1995a17ed504b5fd6d67946a3a02269244" -> "sha256:17dcb0ee4044bc90872d3a1fddfb3e1f2463f578a9edc26386d5b3feeb711252" [label=""];
  "sha256:17dcb0ee4044bc90872d3a1fddfb3e1f2463f578a9edc26386d5b3feeb711252" -> "sha256:bdcfef3b7b608e39ba1f5a5eb918819a51217da56a2e644d7888e2e3f56ff4af" [label=""];
  "sha256:c206997ae095d02558aba65fb3171d1995a17ed504b5fd6d67946a3a02269244" -> "sha256:bdcfef3b7b608e39ba1f5a5eb918819a51217da56a2e644d7888e2e3f56ff4af" [label=""];
  "sha256:bdcfef3b7b608e39ba1f5a5eb918819a51217da56a2e644d7888e2e3f56ff4af" -> "sha256:aca514274cd3ab741d47f1d83141a9233009d20fe7026ab99a95060fec807a4e" [label=""];
}

