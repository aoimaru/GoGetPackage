[app/sources/296784824.Dockerfile]
digraph {
  "sha256:712706cbb22d3f39eb6d032ae61fc4fdb07bc9e915e9825bd97ac8f20a927997" [label="docker-image://quay.io/pires/docker-elasticsearch:6.3.0@sha256:abdf64b848890380cdedb7dd4cdfee7516fae41294699814ecbdbb803d49284d" shape="ellipse"];
  "sha256:04651eb4baa9e92e7e14b4d03039de2349324654c5ba42f84416ae6f05a17040" [label="/bin/sh -c set -x   && apk add --update --no-cache runit curl" shape="box"];
  "sha256:698702f6990fc9aa1fa20ed570a5acf3c2032c339689a9483532e151177cde8c" [label="/bin/sh -c ./bin/elasticsearch-plugin install --batch ingest-attachment" shape="box"];
  "sha256:bbf6425940fcea4f38bb221051285d40f3da53a73359619abde6a38043706b0f" [label="/bin/sh -c ./bin/elasticsearch-plugin install --batch -b com.floragunn:search-guard-6:6.3.0-23.1" shape="box"];
  "sha256:7de1ae2a85381a73c0147432ceceb964211a32dfe87b2fe64a28dd0eddd90c6d" [label="/bin/sh -c chmod +x -R plugins/search-guard-6/tools/*.sh" shape="box"];
  "sha256:7b52b555b587c4cd2f3ca1e737c6e5841632efe7c8346669f2f5c68f21b4bc84" [label="local://context" shape="ellipse"];
  "sha256:44703a8820991270c00acf90056a1ba84e7c494c7ae81589dfac76a8cc5787f1" [label="copy{src=/config, dest=/elasticsearch/config}" shape="note"];
  "sha256:61e7ac88bb18d0bffaf11185199483407936f4d4961a3af6f0914e9e81c87287" [label="copy{src=/fsloader, dest=/fsloader}" shape="note"];
  "sha256:f54037e819729f3104fe9a8c1e655ec1e545ddd7a8a65dde9ad7b77c9c4530db" [label="/bin/sh -c chmod +x /fsloader/*" shape="box"];
  "sha256:8a4d8d7d528ba185f284eccab3aae66fdcaad53010a1761af8df71fcfbc6cfca" [label="/bin/sh -c mkdir /elasticsearch/config/certs" shape="box"];
  "sha256:5b60857fd3c7c9ba215d003b1ba0a117a7ca39c177ff9a7c3f673ed422549e3a" [label="/bin/sh -c chown elasticsearch:elasticsearch -R /elasticsearch/config/certs" shape="box"];
  "sha256:5b9c8f4aa5fc2e811a82673c7757d0277d026d75775852ebb2f76a7fbd3588c7" [label="/bin/sh -c mkdir /etc/service/fsloader" shape="box"];
  "sha256:b0154e5ebbc57eb8849b6ea419a35001a93eb59007e1a527547e2cf866c9159b" [label="/bin/sh -c ln -s /fsloader/run_fsloader.sh /etc/service/fsloader/run" shape="box"];
  "sha256:ad4a380b698619429d9b6c6e9902096a95097c1fb444363748ba4c3a1735586e" [label="/bin/sh -c mkdir /etc/service/elasticsearch" shape="box"];
  "sha256:53e3bf7dc8818b6f6231872cd5c823f592fc06194dde36ebd4e36f4d053eb0d5" [label="/bin/sh -c ln -s /run.sh /etc/service/elasticsearch/run" shape="box"];
  "sha256:d5a8dfddee412c3f37e9fa55231e434ea3e9a4ec7306da3ee466dcfe0c1b3a92" [label="copy{src=/yq, dest=/usr/bin/yq}" shape="note"];
  "sha256:2a61d2fac62fdcee1096810a4b9a0956c65170a79d56dfd36d2179684b2d53c8" [label="copy{src=/config-merger.sh, dest=/usr/bin/config-merger.sh}" shape="note"];
  "sha256:c82813da846c533b2e609a3fec3e4eee300c56c06b5ffb53dea6549dcb98e533" [label="copy{src=/runit.sh, dest=/runit.sh}" shape="note"];
  "sha256:25b3479577b8eae57e45bd7dfbdada408479ed32fed7c0e45f5c8ecdd31b26ca" [label="sha256:25b3479577b8eae57e45bd7dfbdada408479ed32fed7c0e45f5c8ecdd31b26ca" shape="plaintext"];
  "sha256:712706cbb22d3f39eb6d032ae61fc4fdb07bc9e915e9825bd97ac8f20a927997" -> "sha256:04651eb4baa9e92e7e14b4d03039de2349324654c5ba42f84416ae6f05a17040" [label=""];
  "sha256:04651eb4baa9e92e7e14b4d03039de2349324654c5ba42f84416ae6f05a17040" -> "sha256:698702f6990fc9aa1fa20ed570a5acf3c2032c339689a9483532e151177cde8c" [label=""];
  "sha256:698702f6990fc9aa1fa20ed570a5acf3c2032c339689a9483532e151177cde8c" -> "sha256:bbf6425940fcea4f38bb221051285d40f3da53a73359619abde6a38043706b0f" [label=""];
  "sha256:bbf6425940fcea4f38bb221051285d40f3da53a73359619abde6a38043706b0f" -> "sha256:7de1ae2a85381a73c0147432ceceb964211a32dfe87b2fe64a28dd0eddd90c6d" [label=""];
  "sha256:7de1ae2a85381a73c0147432ceceb964211a32dfe87b2fe64a28dd0eddd90c6d" -> "sha256:44703a8820991270c00acf90056a1ba84e7c494c7ae81589dfac76a8cc5787f1" [label=""];
  "sha256:7b52b555b587c4cd2f3ca1e737c6e5841632efe7c8346669f2f5c68f21b4bc84" -> "sha256:44703a8820991270c00acf90056a1ba84e7c494c7ae81589dfac76a8cc5787f1" [label=""];
  "sha256:44703a8820991270c00acf90056a1ba84e7c494c7ae81589dfac76a8cc5787f1" -> "sha256:61e7ac88bb18d0bffaf11185199483407936f4d4961a3af6f0914e9e81c87287" [label=""];
  "sha256:7b52b555b587c4cd2f3ca1e737c6e5841632efe7c8346669f2f5c68f21b4bc84" -> "sha256:61e7ac88bb18d0bffaf11185199483407936f4d4961a3af6f0914e9e81c87287" [label=""];
  "sha256:61e7ac88bb18d0bffaf11185199483407936f4d4961a3af6f0914e9e81c87287" -> "sha256:f54037e819729f3104fe9a8c1e655ec1e545ddd7a8a65dde9ad7b77c9c4530db" [label=""];
  "sha256:f54037e819729f3104fe9a8c1e655ec1e545ddd7a8a65dde9ad7b77c9c4530db" -> "sha256:8a4d8d7d528ba185f284eccab3aae66fdcaad53010a1761af8df71fcfbc6cfca" [label=""];
  "sha256:8a4d8d7d528ba185f284eccab3aae66fdcaad53010a1761af8df71fcfbc6cfca" -> "sha256:5b60857fd3c7c9ba215d003b1ba0a117a7ca39c177ff9a7c3f673ed422549e3a" [label=""];
  "sha256:5b60857fd3c7c9ba215d003b1ba0a117a7ca39c177ff9a7c3f673ed422549e3a" -> "sha256:5b9c8f4aa5fc2e811a82673c7757d0277d026d75775852ebb2f76a7fbd3588c7" [label=""];
  "sha256:5b9c8f4aa5fc2e811a82673c7757d0277d026d75775852ebb2f76a7fbd3588c7" -> "sha256:b0154e5ebbc57eb8849b6ea419a35001a93eb59007e1a527547e2cf866c9159b" [label=""];
  "sha256:b0154e5ebbc57eb8849b6ea419a35001a93eb59007e1a527547e2cf866c9159b" -> "sha256:ad4a380b698619429d9b6c6e9902096a95097c1fb444363748ba4c3a1735586e" [label=""];
  "sha256:ad4a380b698619429d9b6c6e9902096a95097c1fb444363748ba4c3a1735586e" -> "sha256:53e3bf7dc8818b6f6231872cd5c823f592fc06194dde36ebd4e36f4d053eb0d5" [label=""];
  "sha256:53e3bf7dc8818b6f6231872cd5c823f592fc06194dde36ebd4e36f4d053eb0d5" -> "sha256:d5a8dfddee412c3f37e9fa55231e434ea3e9a4ec7306da3ee466dcfe0c1b3a92" [label=""];
  "sha256:7b52b555b587c4cd2f3ca1e737c6e5841632efe7c8346669f2f5c68f21b4bc84" -> "sha256:d5a8dfddee412c3f37e9fa55231e434ea3e9a4ec7306da3ee466dcfe0c1b3a92" [label=""];
  "sha256:d5a8dfddee412c3f37e9fa55231e434ea3e9a4ec7306da3ee466dcfe0c1b3a92" -> "sha256:2a61d2fac62fdcee1096810a4b9a0956c65170a79d56dfd36d2179684b2d53c8" [label=""];
  "sha256:7b52b555b587c4cd2f3ca1e737c6e5841632efe7c8346669f2f5c68f21b4bc84" -> "sha256:2a61d2fac62fdcee1096810a4b9a0956c65170a79d56dfd36d2179684b2d53c8" [label=""];
  "sha256:2a61d2fac62fdcee1096810a4b9a0956c65170a79d56dfd36d2179684b2d53c8" -> "sha256:c82813da846c533b2e609a3fec3e4eee300c56c06b5ffb53dea6549dcb98e533" [label=""];
  "sha256:7b52b555b587c4cd2f3ca1e737c6e5841632efe7c8346669f2f5c68f21b4bc84" -> "sha256:c82813da846c533b2e609a3fec3e4eee300c56c06b5ffb53dea6549dcb98e533" [label=""];
  "sha256:c82813da846c533b2e609a3fec3e4eee300c56c06b5ffb53dea6549dcb98e533" -> "sha256:25b3479577b8eae57e45bd7dfbdada408479ed32fed7c0e45f5c8ecdd31b26ca" [label=""];
}

