[app/sources/465284840.Dockerfile]
digraph {
  "sha256:b37a40afa037898fc7bf652c3f4da382323c09124728968e83524147cf48680c" [label="local://context" shape="ellipse"];
  "sha256:bb6db708f8327bb36fa1cee8ec079b94b1568ac758c45a191ccb53188ea5dc5e" [label="docker-image://docker.io/cp2k/toolchain:latest" shape="ellipse"];
  "sha256:18c5b20f0208e38b1e5c6eecd2a718b96325903da7450420e503b7d9a9279d1a" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:50be81227b5a7ba95ad1017888f779655a11e95b518527cb465f69f450851ae0" [label="copy{src=/scripts/install_basics.sh, dest=/workspace/}" shape="note"];
  "sha256:9edba37e672ac3a051c99c2ef027689bd61b7537af5d8821ba611c46c7046db8" [label="/bin/sh -c ./install_basics.sh" shape="box"];
  "sha256:c83c1ccfd11e5a524608544036bcb77bac2ba883d576b8071ed197a4f816b213" [label="copy{src=/scripts/install_regtest.sh, dest=/workspace/}" shape="note"];
  "sha256:5e2fc0f80327ef3962f275838d3fb5fdee939c1c524c6787a9c426bba51693fb" [label="/bin/sh -c ./install_regtest.sh local popt" shape="box"];
  "sha256:ea353df0ece15965099b64c8a8ea6f60df634080622eff6de145027796875e7c" [label="copy{src=/scripts/ci_entrypoint.sh, dest=/workspace/},copy{src=/scripts/test_farming.sh, dest=/workspace/}" shape="note"];
  "sha256:5cc44e8b015a975b23c95ec688fdb79cddb76e1c63680df9d9452c0d298828f4" [label="sha256:5cc44e8b015a975b23c95ec688fdb79cddb76e1c63680df9d9452c0d298828f4" shape="plaintext"];
  "sha256:bb6db708f8327bb36fa1cee8ec079b94b1568ac758c45a191ccb53188ea5dc5e" -> "sha256:18c5b20f0208e38b1e5c6eecd2a718b96325903da7450420e503b7d9a9279d1a" [label=""];
  "sha256:18c5b20f0208e38b1e5c6eecd2a718b96325903da7450420e503b7d9a9279d1a" -> "sha256:50be81227b5a7ba95ad1017888f779655a11e95b518527cb465f69f450851ae0" [label=""];
  "sha256:b37a40afa037898fc7bf652c3f4da382323c09124728968e83524147cf48680c" -> "sha256:50be81227b5a7ba95ad1017888f779655a11e95b518527cb465f69f450851ae0" [label=""];
  "sha256:50be81227b5a7ba95ad1017888f779655a11e95b518527cb465f69f450851ae0" -> "sha256:9edba37e672ac3a051c99c2ef027689bd61b7537af5d8821ba611c46c7046db8" [label=""];
  "sha256:9edba37e672ac3a051c99c2ef027689bd61b7537af5d8821ba611c46c7046db8" -> "sha256:c83c1ccfd11e5a524608544036bcb77bac2ba883d576b8071ed197a4f816b213" [label=""];
  "sha256:b37a40afa037898fc7bf652c3f4da382323c09124728968e83524147cf48680c" -> "sha256:c83c1ccfd11e5a524608544036bcb77bac2ba883d576b8071ed197a4f816b213" [label=""];
  "sha256:c83c1ccfd11e5a524608544036bcb77bac2ba883d576b8071ed197a4f816b213" -> "sha256:5e2fc0f80327ef3962f275838d3fb5fdee939c1c524c6787a9c426bba51693fb" [label=""];
  "sha256:5e2fc0f80327ef3962f275838d3fb5fdee939c1c524c6787a9c426bba51693fb" -> "sha256:ea353df0ece15965099b64c8a8ea6f60df634080622eff6de145027796875e7c" [label=""];
  "sha256:b37a40afa037898fc7bf652c3f4da382323c09124728968e83524147cf48680c" -> "sha256:ea353df0ece15965099b64c8a8ea6f60df634080622eff6de145027796875e7c" [label=""];
  "sha256:ea353df0ece15965099b64c8a8ea6f60df634080622eff6de145027796875e7c" -> "sha256:5cc44e8b015a975b23c95ec688fdb79cddb76e1c63680df9d9452c0d298828f4" [label=""];
}

