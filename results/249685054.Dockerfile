[app/sources/249685054.Dockerfile]
digraph {
  "sha256:0fb064259234a92d7277bd92e277ed6bb8da6ca1bffb6875447d1a078b626bd9" [label="local://context" shape="ellipse"];
  "sha256:6a6fa6f026fcd2a0c8593dc809c5465ad749da78442eae3a061b41965456c627" [label="docker-image://docker.io/library/fedora:23" shape="ellipse"];
  "sha256:9b994db3a72ef473160f911c6e2058f0d9c9db750545512cc1220d486a650534" [label="mkdir{path=/run/os}" shape="note"];
  "sha256:7a18d7f982a6f203c36f0f4313d41a558fead4a3ce514375684659335adf0eba" [label="copy{src=/gssapi-tests.sh, dest=/run/os/gssapi-tests.sh}" shape="note"];
  "sha256:5e2f295f8604c80d8f97ba4cb005ea08ce43641517f96150a8d5d55f992c42f6" [label="copy{src=/test-wrapper.sh, dest=/run/os/test-wrapper.sh}" shape="note"];
  "sha256:baf9985d9b2e0bb3d8d7e205fb2be2039a6315ecd0d05d9c9d6f50565a20bd40" [label="copy{src=/kubeconfig, dest=/run/os/kubeconfig}" shape="note"];
  "sha256:a90f9281999571f8f2cc5b6d52152b63b96e586b66ad4c4d9fdf145772b84724" [label="copy{src=/hack, dest=/run/os/hack}" shape="note"];
  "sha256:79622646cb70e9df6ef830e9fffa5a204cd18b1d0e6e436ace3093b034557d0c" [label="copy{src=/oc, dest=/run/os/bin/oc}" shape="note"];
  "sha256:cab3cf608c8c84b2044005a85e47282bdb8b3070e89ecae9b1cb66f0824cf40e" [label="/bin/sh -c sed -i.bak1 's#KEYRING:persistent:#DIR:/tmp/krb5cc_#' /etc/krb5.conf &&     dnf install -y findutils bc &&     chmod +x gssapi-tests.sh test-wrapper.sh" shape="box"];
  "sha256:e942a39dc44d2f0ff9a05efa8d1f87ebf168ec1be12da119993013795f60feed" [label="sha256:e942a39dc44d2f0ff9a05efa8d1f87ebf168ec1be12da119993013795f60feed" shape="plaintext"];
  "sha256:6a6fa6f026fcd2a0c8593dc809c5465ad749da78442eae3a061b41965456c627" -> "sha256:9b994db3a72ef473160f911c6e2058f0d9c9db750545512cc1220d486a650534" [label=""];
  "sha256:9b994db3a72ef473160f911c6e2058f0d9c9db750545512cc1220d486a650534" -> "sha256:7a18d7f982a6f203c36f0f4313d41a558fead4a3ce514375684659335adf0eba" [label=""];
  "sha256:0fb064259234a92d7277bd92e277ed6bb8da6ca1bffb6875447d1a078b626bd9" -> "sha256:7a18d7f982a6f203c36f0f4313d41a558fead4a3ce514375684659335adf0eba" [label=""];
  "sha256:7a18d7f982a6f203c36f0f4313d41a558fead4a3ce514375684659335adf0eba" -> "sha256:5e2f295f8604c80d8f97ba4cb005ea08ce43641517f96150a8d5d55f992c42f6" [label=""];
  "sha256:0fb064259234a92d7277bd92e277ed6bb8da6ca1bffb6875447d1a078b626bd9" -> "sha256:5e2f295f8604c80d8f97ba4cb005ea08ce43641517f96150a8d5d55f992c42f6" [label=""];
  "sha256:5e2f295f8604c80d8f97ba4cb005ea08ce43641517f96150a8d5d55f992c42f6" -> "sha256:baf9985d9b2e0bb3d8d7e205fb2be2039a6315ecd0d05d9c9d6f50565a20bd40" [label=""];
  "sha256:0fb064259234a92d7277bd92e277ed6bb8da6ca1bffb6875447d1a078b626bd9" -> "sha256:baf9985d9b2e0bb3d8d7e205fb2be2039a6315ecd0d05d9c9d6f50565a20bd40" [label=""];
  "sha256:baf9985d9b2e0bb3d8d7e205fb2be2039a6315ecd0d05d9c9d6f50565a20bd40" -> "sha256:a90f9281999571f8f2cc5b6d52152b63b96e586b66ad4c4d9fdf145772b84724" [label=""];
  "sha256:0fb064259234a92d7277bd92e277ed6bb8da6ca1bffb6875447d1a078b626bd9" -> "sha256:a90f9281999571f8f2cc5b6d52152b63b96e586b66ad4c4d9fdf145772b84724" [label=""];
  "sha256:a90f9281999571f8f2cc5b6d52152b63b96e586b66ad4c4d9fdf145772b84724" -> "sha256:79622646cb70e9df6ef830e9fffa5a204cd18b1d0e6e436ace3093b034557d0c" [label=""];
  "sha256:0fb064259234a92d7277bd92e277ed6bb8da6ca1bffb6875447d1a078b626bd9" -> "sha256:79622646cb70e9df6ef830e9fffa5a204cd18b1d0e6e436ace3093b034557d0c" [label=""];
  "sha256:79622646cb70e9df6ef830e9fffa5a204cd18b1d0e6e436ace3093b034557d0c" -> "sha256:cab3cf608c8c84b2044005a85e47282bdb8b3070e89ecae9b1cb66f0824cf40e" [label=""];
  "sha256:cab3cf608c8c84b2044005a85e47282bdb8b3070e89ecae9b1cb66f0824cf40e" -> "sha256:e942a39dc44d2f0ff9a05efa8d1f87ebf168ec1be12da119993013795f60feed" [label=""];
}

