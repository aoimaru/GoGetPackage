[app/sources/254491892.Dockerfile]
digraph {
  "sha256:19c79dfc40d0dd5ebf7ea1dfdcfb9594bec7b286c1365ba9a43b59309934ee64" [label="local://context" shape="ellipse"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" [label="docker-image://docker.io/library/openjdk:8" shape="ellipse"];
  "sha256:07afe76c46f72e78a568ceec7f46059b1b779bd3a906663f65fa50ab51f45e67" [label="/bin/sh -c mkdir /app &&     wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein &&     chmod +x lein &&     mv lein /usr/local/bin &&     export LEIN_ROOT=ok" shape="box"];
  "sha256:e140df14a64b8bf0ffaaa2187273ea10d8fdfa34ee6bb077e4cd8707fdedccb3" [label="copy{src=/project.clj, dest=/app/}" shape="note"];
  "sha256:5ce94f1bd1c8d1d4affa1e7d87dc8e0250d2dc5fb66d154b0841b3930408bb8e" [label="copy{src=/resources, dest=/app/resources/}" shape="note"];
  "sha256:16baa74365680cbb5775095e830e56f0058ba6229195b3d73b3dc1b63c87acc3" [label="copy{src=/src, dest=/app/src/}" shape="note"];
  "sha256:92f9c4fcb1748e6e53b6726eb5829347c46fd4d6703480c4b520aad1eb2c6b45" [label="copy{src=/test, dest=/app/test/}" shape="note"];
  "sha256:30e41ec31bb74c0e9b203ea276644aa702594c95ac59c65304af6b41cb821923" [label="/bin/sh -c cd /app &&     lein do clean, compile, test, uberjar &&     cp target/uberjar/tron-*-standalone.jar /tron.jar &&     cd / &&     rm -rf app &&     rm -rf ~/.m2" shape="box"];
  "sha256:6d0ead0b030053f207d2278b452c6d814b759e055b763cdaf0e18bf5789df012" [label="sha256:6d0ead0b030053f207d2278b452c6d814b759e055b763cdaf0e18bf5789df012" shape="plaintext"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" -> "sha256:07afe76c46f72e78a568ceec7f46059b1b779bd3a906663f65fa50ab51f45e67" [label=""];
  "sha256:07afe76c46f72e78a568ceec7f46059b1b779bd3a906663f65fa50ab51f45e67" -> "sha256:e140df14a64b8bf0ffaaa2187273ea10d8fdfa34ee6bb077e4cd8707fdedccb3" [label=""];
  "sha256:19c79dfc40d0dd5ebf7ea1dfdcfb9594bec7b286c1365ba9a43b59309934ee64" -> "sha256:e140df14a64b8bf0ffaaa2187273ea10d8fdfa34ee6bb077e4cd8707fdedccb3" [label=""];
  "sha256:e140df14a64b8bf0ffaaa2187273ea10d8fdfa34ee6bb077e4cd8707fdedccb3" -> "sha256:5ce94f1bd1c8d1d4affa1e7d87dc8e0250d2dc5fb66d154b0841b3930408bb8e" [label=""];
  "sha256:19c79dfc40d0dd5ebf7ea1dfdcfb9594bec7b286c1365ba9a43b59309934ee64" -> "sha256:5ce94f1bd1c8d1d4affa1e7d87dc8e0250d2dc5fb66d154b0841b3930408bb8e" [label=""];
  "sha256:5ce94f1bd1c8d1d4affa1e7d87dc8e0250d2dc5fb66d154b0841b3930408bb8e" -> "sha256:16baa74365680cbb5775095e830e56f0058ba6229195b3d73b3dc1b63c87acc3" [label=""];
  "sha256:19c79dfc40d0dd5ebf7ea1dfdcfb9594bec7b286c1365ba9a43b59309934ee64" -> "sha256:16baa74365680cbb5775095e830e56f0058ba6229195b3d73b3dc1b63c87acc3" [label=""];
  "sha256:16baa74365680cbb5775095e830e56f0058ba6229195b3d73b3dc1b63c87acc3" -> "sha256:92f9c4fcb1748e6e53b6726eb5829347c46fd4d6703480c4b520aad1eb2c6b45" [label=""];
  "sha256:19c79dfc40d0dd5ebf7ea1dfdcfb9594bec7b286c1365ba9a43b59309934ee64" -> "sha256:92f9c4fcb1748e6e53b6726eb5829347c46fd4d6703480c4b520aad1eb2c6b45" [label=""];
  "sha256:92f9c4fcb1748e6e53b6726eb5829347c46fd4d6703480c4b520aad1eb2c6b45" -> "sha256:30e41ec31bb74c0e9b203ea276644aa702594c95ac59c65304af6b41cb821923" [label=""];
  "sha256:30e41ec31bb74c0e9b203ea276644aa702594c95ac59c65304af6b41cb821923" -> "sha256:6d0ead0b030053f207d2278b452c6d814b759e055b763cdaf0e18bf5789df012" [label=""];
}

