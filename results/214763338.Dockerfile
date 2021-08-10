[app/sources/214763338.Dockerfile]
digraph {
  "sha256:6060ca206890234973d37999ae8de6ab5cee0302e9d3d88a3f4bf1681843d5c0" [label="docker-image://docker.io/jigg/jigg-dockers:knp" shape="ellipse"];
  "sha256:3d50d35c892cde57bd7eeb7d325bfb2ead2b5453df3f815d5c3fae493924d91e" [label="mkdir{path=/jigg}" shape="note"];
  "sha256:76c76d2325416525f132cb2f158fe643aa4b79183f6fb730ed6b805a7b8e8ccc" [label="local://context" shape="ellipse"];
  "sha256:7f92adff900207c5b3a9bdeab5be376a92e7acd1980e652868046bc12716604d" [label="copy{src=/build.sbt, dest=/jigg/}" shape="note"];
  "sha256:0e27ca1374526510773831fc87ada7fdcd6258c418ac45fa5a19e0e06c42d51c" [label="copy{src=/project/*.sbt, dest=/jigg/project/},copy{src=/project/build.properties, dest=/jigg/project/}" shape="note"];
  "sha256:9c29928723944c9801d022a57f6ff45d441bfb46ae4cb4cdaede7c13eb14ee4a" [label="copy{src=/bin, dest=/jigg/bin}" shape="note"];
  "sha256:7076f7d26a7c28c98ef68ac424fb6311cd591eb6657ec22a952cb7f1838fc85e" [label="/bin/sh -c bin/sbt update" shape="box"];
  "sha256:5acb33695cac732704fbc2d1aab129fa4e02bd92747f7c96b2cd51dc2478d442" [label="copy{src=/src, dest=/jigg/src}" shape="note"];
  "sha256:8b684bfc20877c565393654147b596187dfdefe46f7cf2af299fdb09d1c8eeb4" [label="copy{src=/jar, dest=/jigg/jar}" shape="note"];
  "sha256:0a7c1bdb9076b44f904f522f39dd32f851df85a3cbc76af5d5d7adf16c8e1744" [label="/bin/sh -c bin/sbt assembly" shape="box"];
  "sha256:bcf26faf73a1d63480d8eea43522c2e4585e50f2597033b13b188c828e75bd6c" [label="sha256:bcf26faf73a1d63480d8eea43522c2e4585e50f2597033b13b188c828e75bd6c" shape="plaintext"];
  "sha256:6060ca206890234973d37999ae8de6ab5cee0302e9d3d88a3f4bf1681843d5c0" -> "sha256:3d50d35c892cde57bd7eeb7d325bfb2ead2b5453df3f815d5c3fae493924d91e" [label=""];
  "sha256:3d50d35c892cde57bd7eeb7d325bfb2ead2b5453df3f815d5c3fae493924d91e" -> "sha256:7f92adff900207c5b3a9bdeab5be376a92e7acd1980e652868046bc12716604d" [label=""];
  "sha256:76c76d2325416525f132cb2f158fe643aa4b79183f6fb730ed6b805a7b8e8ccc" -> "sha256:7f92adff900207c5b3a9bdeab5be376a92e7acd1980e652868046bc12716604d" [label=""];
  "sha256:7f92adff900207c5b3a9bdeab5be376a92e7acd1980e652868046bc12716604d" -> "sha256:0e27ca1374526510773831fc87ada7fdcd6258c418ac45fa5a19e0e06c42d51c" [label=""];
  "sha256:76c76d2325416525f132cb2f158fe643aa4b79183f6fb730ed6b805a7b8e8ccc" -> "sha256:0e27ca1374526510773831fc87ada7fdcd6258c418ac45fa5a19e0e06c42d51c" [label=""];
  "sha256:0e27ca1374526510773831fc87ada7fdcd6258c418ac45fa5a19e0e06c42d51c" -> "sha256:9c29928723944c9801d022a57f6ff45d441bfb46ae4cb4cdaede7c13eb14ee4a" [label=""];
  "sha256:76c76d2325416525f132cb2f158fe643aa4b79183f6fb730ed6b805a7b8e8ccc" -> "sha256:9c29928723944c9801d022a57f6ff45d441bfb46ae4cb4cdaede7c13eb14ee4a" [label=""];
  "sha256:9c29928723944c9801d022a57f6ff45d441bfb46ae4cb4cdaede7c13eb14ee4a" -> "sha256:7076f7d26a7c28c98ef68ac424fb6311cd591eb6657ec22a952cb7f1838fc85e" [label=""];
  "sha256:7076f7d26a7c28c98ef68ac424fb6311cd591eb6657ec22a952cb7f1838fc85e" -> "sha256:5acb33695cac732704fbc2d1aab129fa4e02bd92747f7c96b2cd51dc2478d442" [label=""];
  "sha256:76c76d2325416525f132cb2f158fe643aa4b79183f6fb730ed6b805a7b8e8ccc" -> "sha256:5acb33695cac732704fbc2d1aab129fa4e02bd92747f7c96b2cd51dc2478d442" [label=""];
  "sha256:5acb33695cac732704fbc2d1aab129fa4e02bd92747f7c96b2cd51dc2478d442" -> "sha256:8b684bfc20877c565393654147b596187dfdefe46f7cf2af299fdb09d1c8eeb4" [label=""];
  "sha256:76c76d2325416525f132cb2f158fe643aa4b79183f6fb730ed6b805a7b8e8ccc" -> "sha256:8b684bfc20877c565393654147b596187dfdefe46f7cf2af299fdb09d1c8eeb4" [label=""];
  "sha256:8b684bfc20877c565393654147b596187dfdefe46f7cf2af299fdb09d1c8eeb4" -> "sha256:0a7c1bdb9076b44f904f522f39dd32f851df85a3cbc76af5d5d7adf16c8e1744" [label=""];
  "sha256:0a7c1bdb9076b44f904f522f39dd32f851df85a3cbc76af5d5d7adf16c8e1744" -> "sha256:bcf26faf73a1d63480d8eea43522c2e4585e50f2597033b13b188c828e75bd6c" [label=""];
}

