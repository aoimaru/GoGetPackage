[app/sources/146680024.Dockerfile]
digraph {
  "sha256:353415e79fa295e380ef6500ab23e0da92402eada9eae28f5700911926c11a5f" [label="docker-image://docker.io/paultag/debile-slave-ursae:latest" shape="ellipse"];
  "sha256:2e2850ba4cd5b300d8cb9b044db251917cb876337a6252b414a9f25803b1117d" [label="local://context" shape="ellipse"];
  "sha256:7ab244b59361f0f381340ebeb20a3e7b8a1aadd8b2a36362c4b68611ec317da3" [label="copy{src=/config.tar.gz, dest=/tmp/config/}" shape="note"];
  "sha256:6023c2b8c77788d3a5d5605d563fab2ec850d6c1fad37503010ef91d454ac5c1" [label="/bin/sh -c cd /tmp/config; tar -zcvf ../config.tar.gz *" shape="box"];
  "sha256:644e85431f161943690ceef33b142cf6714e8e304fb433b4eb6371f7ac289bea" [label="/bin/sh -c /usr/share/debile-slave/debile-slave-import-conf /tmp/config.tar.gz" shape="box"];
  "sha256:1bfbed1fa11d71b1f4825496f70f27fb6cb0fa8b7c75189793420ed4289938a8" [label="/bin/sh -c /usr/share/debile-slave/debile-slave-import-gpg /tmp/config.tar.gz" shape="box"];
  "sha256:ec7d33852faaa4bd51d6cd2b9ee6eec29fd5d4e29143d9ec32b8cbd01b2b8b86" [label="/bin/sh -c sbuild-update --keygen" shape="box"];
  "sha256:2390d908af6d7a273ee16d1d8d16390272767fef3dd3129e9b4008c00ca195ea" [label="sha256:2390d908af6d7a273ee16d1d8d16390272767fef3dd3129e9b4008c00ca195ea" shape="plaintext"];
  "sha256:353415e79fa295e380ef6500ab23e0da92402eada9eae28f5700911926c11a5f" -> "sha256:7ab244b59361f0f381340ebeb20a3e7b8a1aadd8b2a36362c4b68611ec317da3" [label=""];
  "sha256:2e2850ba4cd5b300d8cb9b044db251917cb876337a6252b414a9f25803b1117d" -> "sha256:7ab244b59361f0f381340ebeb20a3e7b8a1aadd8b2a36362c4b68611ec317da3" [label=""];
  "sha256:7ab244b59361f0f381340ebeb20a3e7b8a1aadd8b2a36362c4b68611ec317da3" -> "sha256:6023c2b8c77788d3a5d5605d563fab2ec850d6c1fad37503010ef91d454ac5c1" [label=""];
  "sha256:6023c2b8c77788d3a5d5605d563fab2ec850d6c1fad37503010ef91d454ac5c1" -> "sha256:644e85431f161943690ceef33b142cf6714e8e304fb433b4eb6371f7ac289bea" [label=""];
  "sha256:644e85431f161943690ceef33b142cf6714e8e304fb433b4eb6371f7ac289bea" -> "sha256:1bfbed1fa11d71b1f4825496f70f27fb6cb0fa8b7c75189793420ed4289938a8" [label=""];
  "sha256:1bfbed1fa11d71b1f4825496f70f27fb6cb0fa8b7c75189793420ed4289938a8" -> "sha256:ec7d33852faaa4bd51d6cd2b9ee6eec29fd5d4e29143d9ec32b8cbd01b2b8b86" [label=""];
  "sha256:ec7d33852faaa4bd51d6cd2b9ee6eec29fd5d4e29143d9ec32b8cbd01b2b8b86" -> "sha256:2390d908af6d7a273ee16d1d8d16390272767fef3dd3129e9b4008c00ca195ea" [label=""];
}

