[app/sources/252769504.Dockerfile]
digraph {
  "sha256:0fad00e2ea721bb2963d06cc2a064958741a6ed1205661b88212d8da19bc142a" [label="docker-image://docker.io/ansibleplaybookbundle/apb-base:latest" shape="ellipse"];
  "sha256:a8538ea69f2207e2431414df2ad66f0dd1ee94567297bec87ca13ec56da13fe1" [label="local://context" shape="ellipse"];
  "sha256:397ba8b8bbd3be587ea212eba4047b5f31b1cd2e3235c34a1654c8bfb0879b52" [label="copy{src=/roles, dest=/opt/ansible/roles}" shape="note"];
  "sha256:45a586b6d96e7160458f3bc9274b1d13afab97914cce94ca58170c84e32e0d7a" [label="copy{src=/playbooks, dest=/opt/apb/actions}" shape="note"];
  "sha256:dadcbf57ab72be05ca34ed4c3b4a0b81411dc8f241efd1c5040a1fe82d01e116" [label="/bin/sh -c chmod -R g=u /opt/{ansible,apb}" shape="box"];
  "sha256:b5843d8cf68ab44e8c22798c986828a8610ef42eaac44aab0b919273ceb12b54" [label="sha256:b5843d8cf68ab44e8c22798c986828a8610ef42eaac44aab0b919273ceb12b54" shape="plaintext"];
  "sha256:0fad00e2ea721bb2963d06cc2a064958741a6ed1205661b88212d8da19bc142a" -> "sha256:397ba8b8bbd3be587ea212eba4047b5f31b1cd2e3235c34a1654c8bfb0879b52" [label=""];
  "sha256:a8538ea69f2207e2431414df2ad66f0dd1ee94567297bec87ca13ec56da13fe1" -> "sha256:397ba8b8bbd3be587ea212eba4047b5f31b1cd2e3235c34a1654c8bfb0879b52" [label=""];
  "sha256:397ba8b8bbd3be587ea212eba4047b5f31b1cd2e3235c34a1654c8bfb0879b52" -> "sha256:45a586b6d96e7160458f3bc9274b1d13afab97914cce94ca58170c84e32e0d7a" [label=""];
  "sha256:a8538ea69f2207e2431414df2ad66f0dd1ee94567297bec87ca13ec56da13fe1" -> "sha256:45a586b6d96e7160458f3bc9274b1d13afab97914cce94ca58170c84e32e0d7a" [label=""];
  "sha256:45a586b6d96e7160458f3bc9274b1d13afab97914cce94ca58170c84e32e0d7a" -> "sha256:dadcbf57ab72be05ca34ed4c3b4a0b81411dc8f241efd1c5040a1fe82d01e116" [label=""];
  "sha256:dadcbf57ab72be05ca34ed4c3b4a0b81411dc8f241efd1c5040a1fe82d01e116" -> "sha256:b5843d8cf68ab44e8c22798c986828a8610ef42eaac44aab0b919273ceb12b54" [label=""];
}

