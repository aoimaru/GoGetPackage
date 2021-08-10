[app/sources/435279179.Dockerfile]
digraph {
  "sha256:bf680de3b27a04e02e8ab0cef99757cfb44d9260c4781d67f782a1c67ddef901" [label="docker-image://docker.io/library/haskell:7.8@sha256:180dd57f1a2161fead508af82f204f0866a3a3ef11ab5cba643558d52d0abff2" shape="ellipse"];
  "sha256:756fb9e10b470074c1259fa8eb635b36036e6750cc25ceaeea51c1a7dc7f0a77" [label="/bin/sh -c cabal update" shape="box"];
  "sha256:089c488cffe34ace22f6fdcaf72c01a5cda6b2745ddbf61197b4f40ee62c0f7c" [label="local://context" shape="ellipse"];
  "sha256:c99151b195e34e4bc5f7b13d6727c0c5f657be3f7b4b12a92fa82fbe81fafe94" [label="copy{src=/backends/haskell/ot-demo.cabal, dest=/opt/ot-demo/backends/haskell/ot-demo.cabal}" shape="note"];
  "sha256:8f307a0fd9a1f1e4e291e92e54e40f55b30bf5e159e42f0b412111c49bcd411c" [label="/bin/sh -c cd /opt/ot-demo/backends/haskell &&   cabal sandbox init &&   cabal install --only-dependencies" shape="box"];
  "sha256:bfde53aa91e4ca7c8b0233867e521651faead5647dfc3a11b11ae0ba696e7487" [label="copy{src=/backends/haskell, dest=/opt/ot-demo/backends/haskell}" shape="note"];
  "sha256:a0349f6b61fde5e0db5a0de4d69083e3a706ffcc6e15bc5884561cb8e1833095" [label="/bin/sh -c cd /opt/ot-demo/backends/haskell && cabal build" shape="box"];
  "sha256:99c491df4a8e1a75ce531b3fa28dbaff50a37cc964a94e5ed7362dfe515335b1" [label="copy{src=/public, dest=/opt/ot-demo/public}" shape="note"];
  "sha256:845eba420e89decf84029543922c5a7fafaa55fa8c0202041e037bd194e69639" [label="mkdir{path=/opt/ot-demo/backends/haskell}" shape="note"];
  "sha256:44a035a13024dbc5d53f71d19dc8b9c272c13a70fb1ea681c4f3bd016fe833a7" [label="sha256:44a035a13024dbc5d53f71d19dc8b9c272c13a70fb1ea681c4f3bd016fe833a7" shape="plaintext"];
  "sha256:bf680de3b27a04e02e8ab0cef99757cfb44d9260c4781d67f782a1c67ddef901" -> "sha256:756fb9e10b470074c1259fa8eb635b36036e6750cc25ceaeea51c1a7dc7f0a77" [label=""];
  "sha256:756fb9e10b470074c1259fa8eb635b36036e6750cc25ceaeea51c1a7dc7f0a77" -> "sha256:c99151b195e34e4bc5f7b13d6727c0c5f657be3f7b4b12a92fa82fbe81fafe94" [label=""];
  "sha256:089c488cffe34ace22f6fdcaf72c01a5cda6b2745ddbf61197b4f40ee62c0f7c" -> "sha256:c99151b195e34e4bc5f7b13d6727c0c5f657be3f7b4b12a92fa82fbe81fafe94" [label=""];
  "sha256:c99151b195e34e4bc5f7b13d6727c0c5f657be3f7b4b12a92fa82fbe81fafe94" -> "sha256:8f307a0fd9a1f1e4e291e92e54e40f55b30bf5e159e42f0b412111c49bcd411c" [label=""];
  "sha256:8f307a0fd9a1f1e4e291e92e54e40f55b30bf5e159e42f0b412111c49bcd411c" -> "sha256:bfde53aa91e4ca7c8b0233867e521651faead5647dfc3a11b11ae0ba696e7487" [label=""];
  "sha256:089c488cffe34ace22f6fdcaf72c01a5cda6b2745ddbf61197b4f40ee62c0f7c" -> "sha256:bfde53aa91e4ca7c8b0233867e521651faead5647dfc3a11b11ae0ba696e7487" [label=""];
  "sha256:bfde53aa91e4ca7c8b0233867e521651faead5647dfc3a11b11ae0ba696e7487" -> "sha256:a0349f6b61fde5e0db5a0de4d69083e3a706ffcc6e15bc5884561cb8e1833095" [label=""];
  "sha256:a0349f6b61fde5e0db5a0de4d69083e3a706ffcc6e15bc5884561cb8e1833095" -> "sha256:99c491df4a8e1a75ce531b3fa28dbaff50a37cc964a94e5ed7362dfe515335b1" [label=""];
  "sha256:089c488cffe34ace22f6fdcaf72c01a5cda6b2745ddbf61197b4f40ee62c0f7c" -> "sha256:99c491df4a8e1a75ce531b3fa28dbaff50a37cc964a94e5ed7362dfe515335b1" [label=""];
  "sha256:99c491df4a8e1a75ce531b3fa28dbaff50a37cc964a94e5ed7362dfe515335b1" -> "sha256:845eba420e89decf84029543922c5a7fafaa55fa8c0202041e037bd194e69639" [label=""];
  "sha256:845eba420e89decf84029543922c5a7fafaa55fa8c0202041e037bd194e69639" -> "sha256:44a035a13024dbc5d53f71d19dc8b9c272c13a70fb1ea681c4f3bd016fe833a7" [label=""];
}

