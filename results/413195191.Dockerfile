[app/sources/413195191.Dockerfile]
digraph {
  "sha256:0d9a276e6dcfbf0b7cb44c77d1b0ab9d3121f0d9c9b7307ab0843c7dfe51bbb9" [label="docker-image://docker.io/library/openjdk:11-jdk-slim" shape="ellipse"];
  "sha256:4eba6b9e7bba48e0f514a1b48b14321afcc1e994c71ac5bf2979d656b0a4c9d3" [label="/bin/sh -c apt-get update --no-install-recommends && apt-get install -y zip procps wget && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c3a95d99af422fdec802add896e9b324725db48847b3474d17e4cf381e4823e4" [label="local://context" shape="ellipse"];
  "sha256:ce8f44cb0dc05f1ec0ecda57dd8079683e2b5d74dbf1e96229cf50b75331a672" [label="copy{src=/cloudbreak.jar, dest=/}" shape="note"];
  "sha256:50bdcd8e7be639a6092a4703fd52c3a5f8272b308015251b7de62065a257cac4" [label="copy{src=/start_cloudbreak_app.sh, dest=/}" shape="note"];
  "sha256:71f282afaabd73586f16d7a88a443c1461fe1a12348bbde0944954b13623f80a" [label="copy{src=/wait_for_cloudbreak_api.sh, dest=/}" shape="note"];
  "sha256:52b6629078f0ea59d9a2876141815e6f4badb9263d8cf0232caf74b12d330142" [label="copy{src=/jmx_prometheus_javaagent-0.10.jar, dest=/}" shape="note"];
  "sha256:988ddf8d97c64306398334f65052839cba51d10f1ffa1ef68706c5a4f717df22" [label="/bin/sh -c unzip -o cloudbreak.jar BOOT-INF/classes/schema/* -d /tmp/     && mv /tmp/BOOT-INF/classes/schema/ /schema/" shape="box"];
  "sha256:85247257f40c58496820a88958d55bf6a55da2a5b1acb5f5041e47b7f7700c0e" [label="sha256:85247257f40c58496820a88958d55bf6a55da2a5b1acb5f5041e47b7f7700c0e" shape="plaintext"];
  "sha256:0d9a276e6dcfbf0b7cb44c77d1b0ab9d3121f0d9c9b7307ab0843c7dfe51bbb9" -> "sha256:4eba6b9e7bba48e0f514a1b48b14321afcc1e994c71ac5bf2979d656b0a4c9d3" [label=""];
  "sha256:4eba6b9e7bba48e0f514a1b48b14321afcc1e994c71ac5bf2979d656b0a4c9d3" -> "sha256:ce8f44cb0dc05f1ec0ecda57dd8079683e2b5d74dbf1e96229cf50b75331a672" [label=""];
  "sha256:c3a95d99af422fdec802add896e9b324725db48847b3474d17e4cf381e4823e4" -> "sha256:ce8f44cb0dc05f1ec0ecda57dd8079683e2b5d74dbf1e96229cf50b75331a672" [label=""];
  "sha256:ce8f44cb0dc05f1ec0ecda57dd8079683e2b5d74dbf1e96229cf50b75331a672" -> "sha256:50bdcd8e7be639a6092a4703fd52c3a5f8272b308015251b7de62065a257cac4" [label=""];
  "sha256:c3a95d99af422fdec802add896e9b324725db48847b3474d17e4cf381e4823e4" -> "sha256:50bdcd8e7be639a6092a4703fd52c3a5f8272b308015251b7de62065a257cac4" [label=""];
  "sha256:50bdcd8e7be639a6092a4703fd52c3a5f8272b308015251b7de62065a257cac4" -> "sha256:71f282afaabd73586f16d7a88a443c1461fe1a12348bbde0944954b13623f80a" [label=""];
  "sha256:c3a95d99af422fdec802add896e9b324725db48847b3474d17e4cf381e4823e4" -> "sha256:71f282afaabd73586f16d7a88a443c1461fe1a12348bbde0944954b13623f80a" [label=""];
  "sha256:71f282afaabd73586f16d7a88a443c1461fe1a12348bbde0944954b13623f80a" -> "sha256:52b6629078f0ea59d9a2876141815e6f4badb9263d8cf0232caf74b12d330142" [label=""];
  "sha256:c3a95d99af422fdec802add896e9b324725db48847b3474d17e4cf381e4823e4" -> "sha256:52b6629078f0ea59d9a2876141815e6f4badb9263d8cf0232caf74b12d330142" [label=""];
  "sha256:52b6629078f0ea59d9a2876141815e6f4badb9263d8cf0232caf74b12d330142" -> "sha256:988ddf8d97c64306398334f65052839cba51d10f1ffa1ef68706c5a4f717df22" [label=""];
  "sha256:988ddf8d97c64306398334f65052839cba51d10f1ffa1ef68706c5a4f717df22" -> "sha256:85247257f40c58496820a88958d55bf6a55da2a5b1acb5f5041e47b7f7700c0e" [label=""];
}

