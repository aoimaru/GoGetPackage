[app/sources/249215945.Dockerfile]
digraph {
  "sha256:f1e8817ac2d167ec50849434625e1b51a86805981ab0f60b1bb6e6197588c411" [label="local://context" shape="ellipse"];
  "sha256:f347dab25697342c9ce8850783556baadfc3816b70a8b6c0f9cf298595e7b029" [label="docker-image://docker.io/edxops/xenial-common:latest" shape="ellipse"];
  "sha256:bf4a1a0eff908dfa13af4fbcb7f398fea43ba025d13ce4e3d6a567e92baaa474" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:06a29a1c96ab5a66e57d2e2696785e0df79897cc3bc8ad4e5acdae52cc632119" [label="copy{src=/, dest=/edx/app/edx_ansible/edx_ansible}" shape="note"];
  "sha256:17f684465bddff4e4bb415bf9bdc5a0506207a7e28bc73832256b6d080c2ed46" [label="mkdir{path=/edx/app/edx_ansible/edx_ansible/docker/plays}" shape="note"];
  "sha256:5b694abac33bec41be9d340aeca8355eb3b0d715be6bca5ffdc0cecb9e57d237" [label="copy{src=/docker/build/jenkins_analytics/ansible_overrides.yml, dest=/}" shape="note"];
  "sha256:ffc2f1b2098d442939ca1b29f277cc043d9f40b9a6203c7e84387c2960385b7e" [label="/bin/sh -c PYTHONUNBUFFERED=1 /edx/app/edx_ansible/venvs/edx_ansible/bin/ansible-playbook -v jenkins_analytics.yml -i '127.0.0.1,' -c local -e@/ansible_overrides.yml" shape="box"];
  "sha256:fb5f52c8bf4b25503030a1d738aa4d2f83a0548613d4ba99026d8d780b42656f" [label="sha256:fb5f52c8bf4b25503030a1d738aa4d2f83a0548613d4ba99026d8d780b42656f" shape="plaintext"];
  "sha256:f347dab25697342c9ce8850783556baadfc3816b70a8b6c0f9cf298595e7b029" -> "sha256:bf4a1a0eff908dfa13af4fbcb7f398fea43ba025d13ce4e3d6a567e92baaa474" [label=""];
  "sha256:bf4a1a0eff908dfa13af4fbcb7f398fea43ba025d13ce4e3d6a567e92baaa474" -> "sha256:06a29a1c96ab5a66e57d2e2696785e0df79897cc3bc8ad4e5acdae52cc632119" [label=""];
  "sha256:f1e8817ac2d167ec50849434625e1b51a86805981ab0f60b1bb6e6197588c411" -> "sha256:06a29a1c96ab5a66e57d2e2696785e0df79897cc3bc8ad4e5acdae52cc632119" [label=""];
  "sha256:06a29a1c96ab5a66e57d2e2696785e0df79897cc3bc8ad4e5acdae52cc632119" -> "sha256:17f684465bddff4e4bb415bf9bdc5a0506207a7e28bc73832256b6d080c2ed46" [label=""];
  "sha256:17f684465bddff4e4bb415bf9bdc5a0506207a7e28bc73832256b6d080c2ed46" -> "sha256:5b694abac33bec41be9d340aeca8355eb3b0d715be6bca5ffdc0cecb9e57d237" [label=""];
  "sha256:f1e8817ac2d167ec50849434625e1b51a86805981ab0f60b1bb6e6197588c411" -> "sha256:5b694abac33bec41be9d340aeca8355eb3b0d715be6bca5ffdc0cecb9e57d237" [label=""];
  "sha256:5b694abac33bec41be9d340aeca8355eb3b0d715be6bca5ffdc0cecb9e57d237" -> "sha256:ffc2f1b2098d442939ca1b29f277cc043d9f40b9a6203c7e84387c2960385b7e" [label=""];
  "sha256:ffc2f1b2098d442939ca1b29f277cc043d9f40b9a6203c7e84387c2960385b7e" -> "sha256:fb5f52c8bf4b25503030a1d738aa4d2f83a0548613d4ba99026d8d780b42656f" [label=""];
}

