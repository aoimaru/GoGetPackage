[app/sources/279085849.Dockerfile]
digraph {
  "sha256:68eaafb15a085e9093459b3e2b4760141e83a5bd2c72131d6d2c2e3ac521fa36" [label="local://context" shape="ellipse"];
  "sha256:7f8b42db4143df241a4bea4b14115566041dbeab5c80c6d3e11adf6f1945e8bf" [label="https://github.com/openfaas/faas/releases/download/0.5.1-alpha/fwatchdog" shape="ellipse"];
  "sha256:a33c5d2db87382bb52bd62eca2c9102ccf653aa710b64055dc0d292a83cd105d" [label="docker-image://docker.io/library/node:6.9.1-alpine" shape="ellipse"];
  "sha256:634965f1b5ab530c938ebfb90bf352f2a29601a8883f9544bd3074d8c80e2a47" [label="copy{src=/fwatchdog, dest=/usr/bin}" shape="note"];
  "sha256:a6d38ffbe41e38ef82cfc90932cc1a18d5c0c9a02db6959fbd1d8957bdc9e1b8" [label="/bin/sh -c chmod +x /usr/bin/fwatchdog" shape="box"];
  "sha256:3f8fdd7cb8b3d0392937b346968b2f4285edd363a3ed36d4c9edefe1c5716abb" [label="mkdir{path=/root}" shape="note"];
  "sha256:7810bd65e83eb7849b26e9f857fc9510486e17debf073a3b7fa061ebb3200799" [label="copy{src=/package.json, dest=/root/}" shape="note"];
  "sha256:263cf78ea144d6d307ee9896babaafe2c845393b6b3cc7e4034dfed6e3a48cf1" [label="/bin/sh -c npm i" shape="box"];
  "sha256:49a00725b46ec838c31724ec5ff51a5b579b8769b1cdcfcb3d7d14a606574798" [label="copy{src=/handler.js, dest=/root/}" shape="note"];
  "sha256:04debc3ae5f45154c499a5feb7b97c902944f934805e14a6836087d4199a60af" [label="sha256:04debc3ae5f45154c499a5feb7b97c902944f934805e14a6836087d4199a60af" shape="plaintext"];
  "sha256:a33c5d2db87382bb52bd62eca2c9102ccf653aa710b64055dc0d292a83cd105d" -> "sha256:634965f1b5ab530c938ebfb90bf352f2a29601a8883f9544bd3074d8c80e2a47" [label=""];
  "sha256:7f8b42db4143df241a4bea4b14115566041dbeab5c80c6d3e11adf6f1945e8bf" -> "sha256:634965f1b5ab530c938ebfb90bf352f2a29601a8883f9544bd3074d8c80e2a47" [label=""];
  "sha256:634965f1b5ab530c938ebfb90bf352f2a29601a8883f9544bd3074d8c80e2a47" -> "sha256:a6d38ffbe41e38ef82cfc90932cc1a18d5c0c9a02db6959fbd1d8957bdc9e1b8" [label=""];
  "sha256:a6d38ffbe41e38ef82cfc90932cc1a18d5c0c9a02db6959fbd1d8957bdc9e1b8" -> "sha256:3f8fdd7cb8b3d0392937b346968b2f4285edd363a3ed36d4c9edefe1c5716abb" [label=""];
  "sha256:3f8fdd7cb8b3d0392937b346968b2f4285edd363a3ed36d4c9edefe1c5716abb" -> "sha256:7810bd65e83eb7849b26e9f857fc9510486e17debf073a3b7fa061ebb3200799" [label=""];
  "sha256:68eaafb15a085e9093459b3e2b4760141e83a5bd2c72131d6d2c2e3ac521fa36" -> "sha256:7810bd65e83eb7849b26e9f857fc9510486e17debf073a3b7fa061ebb3200799" [label=""];
  "sha256:7810bd65e83eb7849b26e9f857fc9510486e17debf073a3b7fa061ebb3200799" -> "sha256:263cf78ea144d6d307ee9896babaafe2c845393b6b3cc7e4034dfed6e3a48cf1" [label=""];
  "sha256:263cf78ea144d6d307ee9896babaafe2c845393b6b3cc7e4034dfed6e3a48cf1" -> "sha256:49a00725b46ec838c31724ec5ff51a5b579b8769b1cdcfcb3d7d14a606574798" [label=""];
  "sha256:68eaafb15a085e9093459b3e2b4760141e83a5bd2c72131d6d2c2e3ac521fa36" -> "sha256:49a00725b46ec838c31724ec5ff51a5b579b8769b1cdcfcb3d7d14a606574798" [label=""];
  "sha256:49a00725b46ec838c31724ec5ff51a5b579b8769b1cdcfcb3d7d14a606574798" -> "sha256:04debc3ae5f45154c499a5feb7b97c902944f934805e14a6836087d4199a60af" [label=""];
}

