[app/sources/162754328.Dockerfile]
digraph {
  "sha256:d60b00fca52d992615ce7449dfd58e44b933fa2e4824a9785528b8f593e02087" [label="local://context" shape="ellipse"];
  "sha256:6a6fa6f026fcd2a0c8593dc809c5465ad749da78442eae3a061b41965456c627" [label="docker-image://docker.io/library/fedora:23" shape="ellipse"];
  "sha256:9b994db3a72ef473160f911c6e2058f0d9c9db750545512cc1220d486a650534" [label="mkdir{path=/run/os}" shape="note"];
  "sha256:6f24f5171e926cf160570be001fb4961bb74e6656b7b307b09052f2e58f3fec6" [label="copy{src=/gssapi-tests.sh, dest=/run/os/gssapi-tests.sh}" shape="note"];
  "sha256:555a83ef6bb54bc79a4a9f7bec791a768b69cfbd11b116d08f798a98393f9d23" [label="copy{src=/test-wrapper.sh, dest=/run/os/test-wrapper.sh}" shape="note"];
  "sha256:ce412bccd07b1d4738de6ffd11c46e11af578c8b0558e53ba9aedec5e707eba5" [label="copy{src=/kubeconfig, dest=/run/os/kubeconfig}" shape="note"];
  "sha256:f71e7f033e31d56d536bbef40cc279692fd1ce06a54e978aeb388fc68853a1bc" [label="copy{src=/hack, dest=/run/os/hack}" shape="note"];
  "sha256:56b9c485f3b110558520cce98ddc302566d1f0d285ed6c5cf68faf4574aeee3c" [label="copy{src=/oc, dest=/run/os/bin/oc}" shape="note"];
  "sha256:a9f4f981d3bc37a5d8aecedb5dd0785dfa5bdf1c9b8ff3def472c5031a142ac6" [label="/bin/sh -c sed -i.bak1 's#KEYRING:persistent:#DIR:/tmp/krb5cc_#' /etc/krb5.conf &&     dnf install -y findutils bc &&     chmod +x gssapi-tests.sh test-wrapper.sh" shape="box"];
  "sha256:a543e833b51f8513d5ddc7b810b4d860202c773c94b659dd13c2d7685cc3cdc8" [label="sha256:a543e833b51f8513d5ddc7b810b4d860202c773c94b659dd13c2d7685cc3cdc8" shape="plaintext"];
  "sha256:6a6fa6f026fcd2a0c8593dc809c5465ad749da78442eae3a061b41965456c627" -> "sha256:9b994db3a72ef473160f911c6e2058f0d9c9db750545512cc1220d486a650534" [label=""];
  "sha256:9b994db3a72ef473160f911c6e2058f0d9c9db750545512cc1220d486a650534" -> "sha256:6f24f5171e926cf160570be001fb4961bb74e6656b7b307b09052f2e58f3fec6" [label=""];
  "sha256:d60b00fca52d992615ce7449dfd58e44b933fa2e4824a9785528b8f593e02087" -> "sha256:6f24f5171e926cf160570be001fb4961bb74e6656b7b307b09052f2e58f3fec6" [label=""];
  "sha256:6f24f5171e926cf160570be001fb4961bb74e6656b7b307b09052f2e58f3fec6" -> "sha256:555a83ef6bb54bc79a4a9f7bec791a768b69cfbd11b116d08f798a98393f9d23" [label=""];
  "sha256:d60b00fca52d992615ce7449dfd58e44b933fa2e4824a9785528b8f593e02087" -> "sha256:555a83ef6bb54bc79a4a9f7bec791a768b69cfbd11b116d08f798a98393f9d23" [label=""];
  "sha256:555a83ef6bb54bc79a4a9f7bec791a768b69cfbd11b116d08f798a98393f9d23" -> "sha256:ce412bccd07b1d4738de6ffd11c46e11af578c8b0558e53ba9aedec5e707eba5" [label=""];
  "sha256:d60b00fca52d992615ce7449dfd58e44b933fa2e4824a9785528b8f593e02087" -> "sha256:ce412bccd07b1d4738de6ffd11c46e11af578c8b0558e53ba9aedec5e707eba5" [label=""];
  "sha256:ce412bccd07b1d4738de6ffd11c46e11af578c8b0558e53ba9aedec5e707eba5" -> "sha256:f71e7f033e31d56d536bbef40cc279692fd1ce06a54e978aeb388fc68853a1bc" [label=""];
  "sha256:d60b00fca52d992615ce7449dfd58e44b933fa2e4824a9785528b8f593e02087" -> "sha256:f71e7f033e31d56d536bbef40cc279692fd1ce06a54e978aeb388fc68853a1bc" [label=""];
  "sha256:f71e7f033e31d56d536bbef40cc279692fd1ce06a54e978aeb388fc68853a1bc" -> "sha256:56b9c485f3b110558520cce98ddc302566d1f0d285ed6c5cf68faf4574aeee3c" [label=""];
  "sha256:d60b00fca52d992615ce7449dfd58e44b933fa2e4824a9785528b8f593e02087" -> "sha256:56b9c485f3b110558520cce98ddc302566d1f0d285ed6c5cf68faf4574aeee3c" [label=""];
  "sha256:56b9c485f3b110558520cce98ddc302566d1f0d285ed6c5cf68faf4574aeee3c" -> "sha256:a9f4f981d3bc37a5d8aecedb5dd0785dfa5bdf1c9b8ff3def472c5031a142ac6" [label=""];
  "sha256:a9f4f981d3bc37a5d8aecedb5dd0785dfa5bdf1c9b8ff3def472c5031a142ac6" -> "sha256:a543e833b51f8513d5ddc7b810b4d860202c773c94b659dd13c2d7685cc3cdc8" [label=""];
}

