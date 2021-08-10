[app/sources/318166626.Dockerfile]
digraph {
  "sha256:0060df3e5079a6e77ec19f28152d9132ad4ee9ec058b269d0e0d5d913aac4b0c" [label="docker-image://docker.io/fluent/fluentd:v0.12@sha256:3e2d157bd83e556d270299ce36b8260e54f1dc33cdcc63431fff4f9b1acc5b79" shape="ellipse"];
  "sha256:9a60a46e1d47d0473fd70453ef6c2b94314d4790cc41a92e114f028b4af13426" [label="/bin/sh -c apk --no-cache add sudo ca-certificates openssl &&     gem install gelf" shape="box"];
  "sha256:217702fc969625d7b4721d00e731e73514f513814d7ff6cafbe82b4c26b343b6" [label="/bin/sh -c cd /fluentd/plugins &&     wget https://raw.githubusercontent.com/emsearcy/fluent-plugin-gelf/master/lib/fluent/plugin/out_gelf.rb" shape="box"];
  "sha256:636904650a0f4df991bb9b336de5887298741adccead7e41d4b6f448b528e64d" [label="local://context" shape="ellipse"];
  "sha256:e927c76d865dece660b4aa7bacc7e9ea42fbfd58498311d8cac311337a017548" [label="copy{src=/fluent.conf, dest=/fluentd/etc/fluent.conf}" shape="note"];
  "sha256:cd39ea35d57ff7f10c94d9c60c5d347dcb4c4dbc3666d543b9533c6036d9d072" [label="sha256:cd39ea35d57ff7f10c94d9c60c5d347dcb4c4dbc3666d543b9533c6036d9d072" shape="plaintext"];
  "sha256:0060df3e5079a6e77ec19f28152d9132ad4ee9ec058b269d0e0d5d913aac4b0c" -> "sha256:9a60a46e1d47d0473fd70453ef6c2b94314d4790cc41a92e114f028b4af13426" [label=""];
  "sha256:9a60a46e1d47d0473fd70453ef6c2b94314d4790cc41a92e114f028b4af13426" -> "sha256:217702fc969625d7b4721d00e731e73514f513814d7ff6cafbe82b4c26b343b6" [label=""];
  "sha256:217702fc969625d7b4721d00e731e73514f513814d7ff6cafbe82b4c26b343b6" -> "sha256:e927c76d865dece660b4aa7bacc7e9ea42fbfd58498311d8cac311337a017548" [label=""];
  "sha256:636904650a0f4df991bb9b336de5887298741adccead7e41d4b6f448b528e64d" -> "sha256:e927c76d865dece660b4aa7bacc7e9ea42fbfd58498311d8cac311337a017548" [label=""];
  "sha256:e927c76d865dece660b4aa7bacc7e9ea42fbfd58498311d8cac311337a017548" -> "sha256:cd39ea35d57ff7f10c94d9c60c5d347dcb4c4dbc3666d543b9533c6036d9d072" [label=""];
}

