[app/sources/316885833.Dockerfile]
digraph {
  "sha256:2f923e247a073857b47dacc4745a042e980e674d479d04e54d16289ca52ca371" [label="local://context" shape="ellipse"];
  "sha256:620fd90159edad1365223b3ae5a20438eb86c9376f8f6071f0ab4d2e2c7cacc3" [label="docker-image://docker.io/opensuse/leap:15.0" shape="ellipse"];
  "sha256:684bb274d2f1df2eae992d7f31358c4bd62229dac29df0b5c4438be540ad37ed" [label="/bin/sh -c set -ex &&     zypper --gpg-auto-import-keys refresh &&     zypper -q update -y &&     zypper --non-interactive install --no-recommends         ca-certificates         curl         netcfg         python3-devel         python3-setuptools     && zypper clean -a     && rm -rf         /tmp/*         /var/tmp/*         /usr/share/man         /usr/share/doc         /usr/share/doc-base" shape="box"];
  "sha256:efef78df34699d8d917b34f6c716cde5fde292f1250e4978eeb1a040a6fdc70a" [label="/bin/sh -c useradd -ms /bin/bash shipyard     && mkdir -p /home/shipyard/shipyard     && mkdir -p /home/shipyard/shipyard_client" shape="box"];
  "sha256:04fee5881a03a9bfd8aa3db58bc5dd6c87f9bdab313e973eb422b8606cebae41" [label="copy{src=/src/bin/shipyard_airflow/entrypoint.sh, dest=/home/shipyard/entrypoint.sh}" shape="note"];
  "sha256:06747b4d81971a1025734a54562c8cff5637201985a47f543477a8c1b6d70f30" [label="/bin/sh -c chown -R shipyard: /home/shipyard     && chmod +x /home/shipyard/entrypoint.sh" shape="box"];
  "sha256:56dfed7a4369029faad96b28c0f9e590ff61dc85d2a976fa286d804462ee2891" [label="copy{src=/src/bin/shipyard_airflow/requirements.txt, dest=/home/shipyard/api_requirements.txt}" shape="note"];
  "sha256:d4c2ffc5597337c1cb23a915498a2dbd14ffb37063c8691b7363e5e14a245a57" [label="copy{src=/src/bin/shipyard_client/requirements.txt, dest=/home/shipyard/client_requirements.txt}" shape="note"];
  "sha256:3d9d3f7cba614e2fb1808b36dfaa5bc72d2784c57c4692db500463c1fd285536" [label="copy{src=/src/bin/shipyard_client, dest=/home/shipyard/shipyard_client/}" shape="note"];
  "sha256:884eb7158d20dc7e71584a8e9265ec83ff8b72407cc9dcb7ae55f7cd16ed2d95" [label="copy{src=/src/bin/shipyard_airflow, dest=/home/shipyard/shipyard/}" shape="note"];
  "sha256:dd4c1561fa1ede67aa8789718dea8449cbe71a29c4f61d347653b1ef0a98c8dc" [label="/bin/sh -c set -ex     && buildDeps='       gcc       git-core       libopenssl-devel       make       python3-pip     '     && zypper -q update -y     && zypper --non-interactive install --no-recommends $buildDeps     && python3 -m pip install -U pip     && pip3 install -r /home/shipyard/client_requirements.txt --no-cache-dir     && cd /home/shipyard/shipyard_client     && python3 setup.py install     && pip3 install -r /home/shipyard/api_requirements.txt --no-cache-dir     && cd /home/shipyard/shipyard     && python3 setup.py install     && zypper remove -y --clean-deps $buildDeps     && zypper clean -a     && rm -rf         /tmp/*         /var/tmp/*         /var/log/*         /usr/share/man         /usr/share/doc         /usr/share/doc-base" shape="box"];
  "sha256:adb0e6016f12182741298275cde27d6bfafc63e5428cd950505ab809b84cac17" [label="sha256:adb0e6016f12182741298275cde27d6bfafc63e5428cd950505ab809b84cac17" shape="plaintext"];
  "sha256:620fd90159edad1365223b3ae5a20438eb86c9376f8f6071f0ab4d2e2c7cacc3" -> "sha256:684bb274d2f1df2eae992d7f31358c4bd62229dac29df0b5c4438be540ad37ed" [label=""];
  "sha256:684bb274d2f1df2eae992d7f31358c4bd62229dac29df0b5c4438be540ad37ed" -> "sha256:efef78df34699d8d917b34f6c716cde5fde292f1250e4978eeb1a040a6fdc70a" [label=""];
  "sha256:efef78df34699d8d917b34f6c716cde5fde292f1250e4978eeb1a040a6fdc70a" -> "sha256:04fee5881a03a9bfd8aa3db58bc5dd6c87f9bdab313e973eb422b8606cebae41" [label=""];
  "sha256:2f923e247a073857b47dacc4745a042e980e674d479d04e54d16289ca52ca371" -> "sha256:04fee5881a03a9bfd8aa3db58bc5dd6c87f9bdab313e973eb422b8606cebae41" [label=""];
  "sha256:04fee5881a03a9bfd8aa3db58bc5dd6c87f9bdab313e973eb422b8606cebae41" -> "sha256:06747b4d81971a1025734a54562c8cff5637201985a47f543477a8c1b6d70f30" [label=""];
  "sha256:06747b4d81971a1025734a54562c8cff5637201985a47f543477a8c1b6d70f30" -> "sha256:56dfed7a4369029faad96b28c0f9e590ff61dc85d2a976fa286d804462ee2891" [label=""];
  "sha256:2f923e247a073857b47dacc4745a042e980e674d479d04e54d16289ca52ca371" -> "sha256:56dfed7a4369029faad96b28c0f9e590ff61dc85d2a976fa286d804462ee2891" [label=""];
  "sha256:56dfed7a4369029faad96b28c0f9e590ff61dc85d2a976fa286d804462ee2891" -> "sha256:d4c2ffc5597337c1cb23a915498a2dbd14ffb37063c8691b7363e5e14a245a57" [label=""];
  "sha256:2f923e247a073857b47dacc4745a042e980e674d479d04e54d16289ca52ca371" -> "sha256:d4c2ffc5597337c1cb23a915498a2dbd14ffb37063c8691b7363e5e14a245a57" [label=""];
  "sha256:d4c2ffc5597337c1cb23a915498a2dbd14ffb37063c8691b7363e5e14a245a57" -> "sha256:3d9d3f7cba614e2fb1808b36dfaa5bc72d2784c57c4692db500463c1fd285536" [label=""];
  "sha256:2f923e247a073857b47dacc4745a042e980e674d479d04e54d16289ca52ca371" -> "sha256:3d9d3f7cba614e2fb1808b36dfaa5bc72d2784c57c4692db500463c1fd285536" [label=""];
  "sha256:3d9d3f7cba614e2fb1808b36dfaa5bc72d2784c57c4692db500463c1fd285536" -> "sha256:884eb7158d20dc7e71584a8e9265ec83ff8b72407cc9dcb7ae55f7cd16ed2d95" [label=""];
  "sha256:2f923e247a073857b47dacc4745a042e980e674d479d04e54d16289ca52ca371" -> "sha256:884eb7158d20dc7e71584a8e9265ec83ff8b72407cc9dcb7ae55f7cd16ed2d95" [label=""];
  "sha256:884eb7158d20dc7e71584a8e9265ec83ff8b72407cc9dcb7ae55f7cd16ed2d95" -> "sha256:dd4c1561fa1ede67aa8789718dea8449cbe71a29c4f61d347653b1ef0a98c8dc" [label=""];
  "sha256:dd4c1561fa1ede67aa8789718dea8449cbe71a29c4f61d347653b1ef0a98c8dc" -> "sha256:adb0e6016f12182741298275cde27d6bfafc63e5428cd950505ab809b84cac17" [label=""];
}

