[app/sources/417425711.Dockerfile]
digraph {
  "sha256:55e5a852dd00b3f8dee0934177813cb66215eb86832721bcf3a854fa8b0172e4" [label="docker-image://docker.io/library/python:3.6.8-alpine3.9" shape="ellipse"];
  "sha256:934ae508c121ffe52ebb20e8393733e2905f774bb794f2f592688b5428e7e672" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:aaf6dd168aa94dabe09072052827cf2f102e27f1ecc74e0ebd756cd444cb9974" [label="local://context" shape="ellipse"];
  "sha256:4d90bb44f50196268fc566e9bcce0a176abd456cf4901d2ca25316b559bfb2c6" [label="copy{src=/material, dest=/tmp/material}" shape="note"];
  "sha256:146abb9730ae33acf6230219c9e08b01804be227ae6526f67ac49a2df2612005" [label="copy{src=/MANIFEST.in, dest=/tmp/MANIFEST.in}" shape="note"];
  "sha256:9e610b2e175210a6370845de73978f97dc96701b63d6303171b76e676780951c" [label="copy{src=/package.json, dest=/tmp/package.json}" shape="note"];
  "sha256:a00b0bb4d93c268677fda4055d4ed84605b2b8f32284d6945f3e915b4d7f90ee" [label="copy{src=/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:7974373cdc43d883bdca3abd275b3258c968ba73f78913516175715e2efc0d82" [label="copy{src=/setup.py, dest=/tmp/setup.py}" shape="note"];
  "sha256:892bd42dab6861f718716a815a588f4a2e781619dce32f9e6c2e1c73c3a3f0b4" [label="/bin/sh -c apk add --no-cache     git     git-fast-import     openssh   && python setup.py install 2>/dev/null   && rm -rf /tmp/*" shape="box"];
  "sha256:630a8b38a478d50e1e3c148bf477efff5c12aed718c0497b590e9d40ca3d8f36" [label="mkdir{path=/docs}" shape="note"];
  "sha256:693d549ec90f6551b77202dc7006f57d130cdc2044db6fcdac6a289141b67a4b" [label="sha256:693d549ec90f6551b77202dc7006f57d130cdc2044db6fcdac6a289141b67a4b" shape="plaintext"];
  "sha256:55e5a852dd00b3f8dee0934177813cb66215eb86832721bcf3a854fa8b0172e4" -> "sha256:934ae508c121ffe52ebb20e8393733e2905f774bb794f2f592688b5428e7e672" [label=""];
  "sha256:934ae508c121ffe52ebb20e8393733e2905f774bb794f2f592688b5428e7e672" -> "sha256:4d90bb44f50196268fc566e9bcce0a176abd456cf4901d2ca25316b559bfb2c6" [label=""];
  "sha256:aaf6dd168aa94dabe09072052827cf2f102e27f1ecc74e0ebd756cd444cb9974" -> "sha256:4d90bb44f50196268fc566e9bcce0a176abd456cf4901d2ca25316b559bfb2c6" [label=""];
  "sha256:4d90bb44f50196268fc566e9bcce0a176abd456cf4901d2ca25316b559bfb2c6" -> "sha256:146abb9730ae33acf6230219c9e08b01804be227ae6526f67ac49a2df2612005" [label=""];
  "sha256:aaf6dd168aa94dabe09072052827cf2f102e27f1ecc74e0ebd756cd444cb9974" -> "sha256:146abb9730ae33acf6230219c9e08b01804be227ae6526f67ac49a2df2612005" [label=""];
  "sha256:146abb9730ae33acf6230219c9e08b01804be227ae6526f67ac49a2df2612005" -> "sha256:9e610b2e175210a6370845de73978f97dc96701b63d6303171b76e676780951c" [label=""];
  "sha256:aaf6dd168aa94dabe09072052827cf2f102e27f1ecc74e0ebd756cd444cb9974" -> "sha256:9e610b2e175210a6370845de73978f97dc96701b63d6303171b76e676780951c" [label=""];
  "sha256:9e610b2e175210a6370845de73978f97dc96701b63d6303171b76e676780951c" -> "sha256:a00b0bb4d93c268677fda4055d4ed84605b2b8f32284d6945f3e915b4d7f90ee" [label=""];
  "sha256:aaf6dd168aa94dabe09072052827cf2f102e27f1ecc74e0ebd756cd444cb9974" -> "sha256:a00b0bb4d93c268677fda4055d4ed84605b2b8f32284d6945f3e915b4d7f90ee" [label=""];
  "sha256:a00b0bb4d93c268677fda4055d4ed84605b2b8f32284d6945f3e915b4d7f90ee" -> "sha256:7974373cdc43d883bdca3abd275b3258c968ba73f78913516175715e2efc0d82" [label=""];
  "sha256:aaf6dd168aa94dabe09072052827cf2f102e27f1ecc74e0ebd756cd444cb9974" -> "sha256:7974373cdc43d883bdca3abd275b3258c968ba73f78913516175715e2efc0d82" [label=""];
  "sha256:7974373cdc43d883bdca3abd275b3258c968ba73f78913516175715e2efc0d82" -> "sha256:892bd42dab6861f718716a815a588f4a2e781619dce32f9e6c2e1c73c3a3f0b4" [label=""];
  "sha256:892bd42dab6861f718716a815a588f4a2e781619dce32f9e6c2e1c73c3a3f0b4" -> "sha256:630a8b38a478d50e1e3c148bf477efff5c12aed718c0497b590e9d40ca3d8f36" [label=""];
  "sha256:630a8b38a478d50e1e3c148bf477efff5c12aed718c0497b590e9d40ca3d8f36" -> "sha256:693d549ec90f6551b77202dc7006f57d130cdc2044db6fcdac6a289141b67a4b" [label=""];
}

