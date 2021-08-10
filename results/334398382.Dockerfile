[app/sources/334398382.Dockerfile]
digraph {
  "sha256:21711833ff6b7ef794c1f9d1f44f79f0a7510409ee3743bea992f55c0542fda0" [label="docker-image://docker.io/library/node:8.9.3-alpine" shape="ellipse"];
  "sha256:118c48e0f51edade1f8692f48fc63cb0601462b35c07eac5d99284b7e84f506e" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:9ab930e0c05688ae9a0523c047c36c0c9db5552e53584b993ca89e24925ed718" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:9f14a8241e7c5d3481ab6b95ed6a1365bbfb241ec1c858152f915aea00e0eebe" [label="local://context" shape="ellipse"];
  "sha256:1435466ad0175e5d5f6a60b7bac4a738e53b09d15de5c75d0479a401d6bccbd4" [label="copy{src=/package.json, dest=/tmp}" shape="note"];
  "sha256:793a23d54d9848765a2c53cb132dabe2201257a934966f80d4097f748269ac3c" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:a25498b08b348d584c78db3e9e515b90156babe0363c29cf89fb761f5be160dd" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:f7693aa4b30ac8f7e0781745aab12ff15a5b00b7a93f81c251aca6282dc22197" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:452295a2ae1934705d874335111e43985a2cdd728c91433e934a1b77ad455585" [label="/bin/sh -c rm -rf /usr/src/app/node_modules" shape="box"];
  "sha256:478cc611405d15bea999933c820379f9e972f368dba152aafdad291998a5e0dc" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:a92162c90a5067f69dfd872dfdcb9e4a1757c20d202ef673ea1bcdc689351511" [label="/bin/sh -c cp -r node_modules /usr/src/app/node_modules || true" shape="box"];
  "sha256:432c222190df8c64faed05dc740740830523f1c33ca60a71788b8b01b87c474f" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:c51a9ef84399c1a84500f85087efaff8a9b0b8d9ac9f58cf6e77c7b01fb2a978" [label="sha256:c51a9ef84399c1a84500f85087efaff8a9b0b8d9ac9f58cf6e77c7b01fb2a978" shape="plaintext"];
  "sha256:21711833ff6b7ef794c1f9d1f44f79f0a7510409ee3743bea992f55c0542fda0" -> "sha256:118c48e0f51edade1f8692f48fc63cb0601462b35c07eac5d99284b7e84f506e" [label=""];
  "sha256:118c48e0f51edade1f8692f48fc63cb0601462b35c07eac5d99284b7e84f506e" -> "sha256:9ab930e0c05688ae9a0523c047c36c0c9db5552e53584b993ca89e24925ed718" [label=""];
  "sha256:9ab930e0c05688ae9a0523c047c36c0c9db5552e53584b993ca89e24925ed718" -> "sha256:1435466ad0175e5d5f6a60b7bac4a738e53b09d15de5c75d0479a401d6bccbd4" [label=""];
  "sha256:9f14a8241e7c5d3481ab6b95ed6a1365bbfb241ec1c858152f915aea00e0eebe" -> "sha256:1435466ad0175e5d5f6a60b7bac4a738e53b09d15de5c75d0479a401d6bccbd4" [label=""];
  "sha256:1435466ad0175e5d5f6a60b7bac4a738e53b09d15de5c75d0479a401d6bccbd4" -> "sha256:793a23d54d9848765a2c53cb132dabe2201257a934966f80d4097f748269ac3c" [label=""];
  "sha256:793a23d54d9848765a2c53cb132dabe2201257a934966f80d4097f748269ac3c" -> "sha256:a25498b08b348d584c78db3e9e515b90156babe0363c29cf89fb761f5be160dd" [label=""];
  "sha256:9f14a8241e7c5d3481ab6b95ed6a1365bbfb241ec1c858152f915aea00e0eebe" -> "sha256:a25498b08b348d584c78db3e9e515b90156babe0363c29cf89fb761f5be160dd" [label=""];
  "sha256:a25498b08b348d584c78db3e9e515b90156babe0363c29cf89fb761f5be160dd" -> "sha256:f7693aa4b30ac8f7e0781745aab12ff15a5b00b7a93f81c251aca6282dc22197" [label=""];
  "sha256:f7693aa4b30ac8f7e0781745aab12ff15a5b00b7a93f81c251aca6282dc22197" -> "sha256:452295a2ae1934705d874335111e43985a2cdd728c91433e934a1b77ad455585" [label=""];
  "sha256:452295a2ae1934705d874335111e43985a2cdd728c91433e934a1b77ad455585" -> "sha256:478cc611405d15bea999933c820379f9e972f368dba152aafdad291998a5e0dc" [label=""];
  "sha256:478cc611405d15bea999933c820379f9e972f368dba152aafdad291998a5e0dc" -> "sha256:a92162c90a5067f69dfd872dfdcb9e4a1757c20d202ef673ea1bcdc689351511" [label=""];
  "sha256:a92162c90a5067f69dfd872dfdcb9e4a1757c20d202ef673ea1bcdc689351511" -> "sha256:432c222190df8c64faed05dc740740830523f1c33ca60a71788b8b01b87c474f" [label=""];
  "sha256:432c222190df8c64faed05dc740740830523f1c33ca60a71788b8b01b87c474f" -> "sha256:c51a9ef84399c1a84500f85087efaff8a9b0b8d9ac9f58cf6e77c7b01fb2a978" [label=""];
}

