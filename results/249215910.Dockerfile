[app/sources/249215910.Dockerfile]
digraph {
  "sha256:f347dab25697342c9ce8850783556baadfc3816b70a8b6c0f9cf298595e7b029" [label="docker-image://docker.io/edxops/xenial-common:latest" shape="ellipse"];
  "sha256:3c6e91ef572a5c296eb43440d4cfc5097a85634572fc7ba1dc8520f5621d36c5" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:e68cfe9cc93055d9ae668e7f454a77dec3156e23af88f68019b4283acbb98acc" [label="local://context" shape="ellipse"];
  "sha256:2a781a307742c88707667b7c2190a9355b5c4b38572f893b2729c34a6316db73" [label="copy{src=/, dest=/edx/app/edx_ansible/edx_ansible}" shape="note"];
  "sha256:a74ef1686ad7fbf1330db4eb0c2f4ce5b5a07e5eec81737a0c368e83ce0c96bd" [label="copy{src=/docker/build/analytics_api/ansible_overrides.yml, dest=/}" shape="note"];
  "sha256:974d9f4996a543b375d834ef5daf26686c594ccc927a1299c1a799ec83731cd8" [label="mkdir{path=/edx/app/edx_ansible/edx_ansible/docker/plays}" shape="note"];
  "sha256:0fdf957b071d8a92c071141921eda8d634fcf89303d379075cc59a6906899833" [label="copy{src=/docker/build/analytics_api/ansible_overrides.yml, dest=/}" shape="note"];
  "sha256:0150ca15656a42386f36bf6eff9ad948e9c0d7a39f613939da2e8bdfe4eeca49" [label="/bin/sh -c /edx/app/edx_ansible/venvs/edx_ansible/bin/ansible-playbook analytics_api.yml -i '127.0.0.1,' -c local -t \"install:base,install:system-requirements,install:configuration,install:app-requirements,install:code\" -e@/ansible_overrides.yml" shape="box"];
  "sha256:8aba4e039fa6c0d23ff3d477910b50f88a4870b6a72b3e7070cebc6b05905090" [label="mkdir{path=/edx/app}" shape="note"];
  "sha256:de14a15845d64d40a82c2567111d855c5ceee25d99c6b43a3d7e66d9bda564a1" [label="sha256:de14a15845d64d40a82c2567111d855c5ceee25d99c6b43a3d7e66d9bda564a1" shape="plaintext"];
  "sha256:f347dab25697342c9ce8850783556baadfc3816b70a8b6c0f9cf298595e7b029" -> "sha256:3c6e91ef572a5c296eb43440d4cfc5097a85634572fc7ba1dc8520f5621d36c5" [label=""];
  "sha256:3c6e91ef572a5c296eb43440d4cfc5097a85634572fc7ba1dc8520f5621d36c5" -> "sha256:2a781a307742c88707667b7c2190a9355b5c4b38572f893b2729c34a6316db73" [label=""];
  "sha256:e68cfe9cc93055d9ae668e7f454a77dec3156e23af88f68019b4283acbb98acc" -> "sha256:2a781a307742c88707667b7c2190a9355b5c4b38572f893b2729c34a6316db73" [label=""];
  "sha256:2a781a307742c88707667b7c2190a9355b5c4b38572f893b2729c34a6316db73" -> "sha256:a74ef1686ad7fbf1330db4eb0c2f4ce5b5a07e5eec81737a0c368e83ce0c96bd" [label=""];
  "sha256:e68cfe9cc93055d9ae668e7f454a77dec3156e23af88f68019b4283acbb98acc" -> "sha256:a74ef1686ad7fbf1330db4eb0c2f4ce5b5a07e5eec81737a0c368e83ce0c96bd" [label=""];
  "sha256:a74ef1686ad7fbf1330db4eb0c2f4ce5b5a07e5eec81737a0c368e83ce0c96bd" -> "sha256:974d9f4996a543b375d834ef5daf26686c594ccc927a1299c1a799ec83731cd8" [label=""];
  "sha256:974d9f4996a543b375d834ef5daf26686c594ccc927a1299c1a799ec83731cd8" -> "sha256:0fdf957b071d8a92c071141921eda8d634fcf89303d379075cc59a6906899833" [label=""];
  "sha256:e68cfe9cc93055d9ae668e7f454a77dec3156e23af88f68019b4283acbb98acc" -> "sha256:0fdf957b071d8a92c071141921eda8d634fcf89303d379075cc59a6906899833" [label=""];
  "sha256:0fdf957b071d8a92c071141921eda8d634fcf89303d379075cc59a6906899833" -> "sha256:0150ca15656a42386f36bf6eff9ad948e9c0d7a39f613939da2e8bdfe4eeca49" [label=""];
  "sha256:0150ca15656a42386f36bf6eff9ad948e9c0d7a39f613939da2e8bdfe4eeca49" -> "sha256:8aba4e039fa6c0d23ff3d477910b50f88a4870b6a72b3e7070cebc6b05905090" [label=""];
  "sha256:8aba4e039fa6c0d23ff3d477910b50f88a4870b6a72b3e7070cebc6b05905090" -> "sha256:de14a15845d64d40a82c2567111d855c5ceee25d99c6b43a3d7e66d9bda564a1" [label=""];
}

