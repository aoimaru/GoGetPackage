[app/sources/465216258.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:6b935e82e6fb875dc9a723c187f8874a84abc02e6106583a21debe7a39c285be" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:efd312d66690a3743a08a6a164fb1e0b25b425988b5f297b136b51ae02268913" [label="local://context" shape="ellipse"];
  "sha256:258b2cbcc2e61448d9ecbed2795f7ea877daa0e90ce37681a4697e6ab86805ed" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:e6bcafb2f5a4fb000102bf2651ad4606c3e80be25f80a8c489d851832f67713f" [label="/bin/sh -c npm install --silent --no-cache" shape="box"];
  "sha256:9a0c86823c11452149324e46d26e0811bea4ec670d34be3fc817095883f73636" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:b86e5eb989eece6d3cf941625d1e1f4dae126607b0cdb81f5c13486c94609584" [label="sha256:b86e5eb989eece6d3cf941625d1e1f4dae126607b0cdb81f5c13486c94609584" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:6b935e82e6fb875dc9a723c187f8874a84abc02e6106583a21debe7a39c285be" [label=""];
  "sha256:6b935e82e6fb875dc9a723c187f8874a84abc02e6106583a21debe7a39c285be" -> "sha256:258b2cbcc2e61448d9ecbed2795f7ea877daa0e90ce37681a4697e6ab86805ed" [label=""];
  "sha256:efd312d66690a3743a08a6a164fb1e0b25b425988b5f297b136b51ae02268913" -> "sha256:258b2cbcc2e61448d9ecbed2795f7ea877daa0e90ce37681a4697e6ab86805ed" [label=""];
  "sha256:258b2cbcc2e61448d9ecbed2795f7ea877daa0e90ce37681a4697e6ab86805ed" -> "sha256:e6bcafb2f5a4fb000102bf2651ad4606c3e80be25f80a8c489d851832f67713f" [label=""];
  "sha256:e6bcafb2f5a4fb000102bf2651ad4606c3e80be25f80a8c489d851832f67713f" -> "sha256:9a0c86823c11452149324e46d26e0811bea4ec670d34be3fc817095883f73636" [label=""];
  "sha256:efd312d66690a3743a08a6a164fb1e0b25b425988b5f297b136b51ae02268913" -> "sha256:9a0c86823c11452149324e46d26e0811bea4ec670d34be3fc817095883f73636" [label=""];
  "sha256:9a0c86823c11452149324e46d26e0811bea4ec670d34be3fc817095883f73636" -> "sha256:b86e5eb989eece6d3cf941625d1e1f4dae126607b0cdb81f5c13486c94609584" [label=""];
}

