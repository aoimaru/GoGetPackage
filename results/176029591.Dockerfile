[app/sources/176029591.Dockerfile]
digraph {
  "sha256:8b5f969dd1fbfdf066bde4eef7d4b6ea7410635162c0faed80cfd13b96666f2d" [label="local://context" shape="ellipse"];
  "sha256:f02033f72e5aa46078318c500665754f54f4fe6ecbbf92f561953be43ecb00e1" [label="docker-image://docker.elastic.co/elasticsearch/elasticsearch:5.5.2@sha256:340f4457554bfb3eda013b8950009b77dde46f6224d6d96fb332d62dff0c191a" shape="ellipse"];
  "sha256:7a54755670f81a13f2610cf76c454b193053c332c1798b4beb1fd3867069fba4" [label="/bin/sh -c cd /tmp     && curl -o /usr/bin/jq -SL \"https://github.com/stedolan/jq/releases/download/jq-$JQ_VERSION/jq-linux64\"     && echo \"$JQ_SHA256  /usr/bin/jq\" | sha256sum -c -     && chmod +x /usr/bin/jq" shape="box"];
  "sha256:8eb474a2e959873403bb4b0f0b4f8d8edb0b628513df2a1c7d1247d640b069ea" [label="copy{src=/elasticsearch.yml, dest=/usr/share/elasticsearch/config/}" shape="note"];
  "sha256:f14753fa2cf6bdd6f2e6088da7bb59da721e45807bfaecb9a53ab7b6aca890ba" [label="/bin/sh -c chown elasticsearch:elasticsearch config/elasticsearch.yml" shape="box"];
  "sha256:edc20c7f6d05c54b57a0c3eb1434b70b446edd4060a145de7bd7729bb8dfeeea" [label="/bin/sh -c bin/elasticsearch-plugin install io.fabric8:elasticsearch-cloud-kubernetes:5.5.2" shape="box"];
  "sha256:dd6275cd3a6e47aca4c083c2ef6fd0f0d718c3a4f7caf8b2b7a0f24dda01aad2" [label="/bin/sh -c bin/elasticsearch-plugin install -b com.floragunn:search-guard-ssl:5.5.2-23" shape="box"];
  "sha256:60f2149d6e22fba0bc6aa0d1c467031d7e6a60d1cb91916a7d187d2bfa72a9ec" [label="sha256:60f2149d6e22fba0bc6aa0d1c467031d7e6a60d1cb91916a7d187d2bfa72a9ec" shape="plaintext"];
  "sha256:f02033f72e5aa46078318c500665754f54f4fe6ecbbf92f561953be43ecb00e1" -> "sha256:7a54755670f81a13f2610cf76c454b193053c332c1798b4beb1fd3867069fba4" [label=""];
  "sha256:7a54755670f81a13f2610cf76c454b193053c332c1798b4beb1fd3867069fba4" -> "sha256:8eb474a2e959873403bb4b0f0b4f8d8edb0b628513df2a1c7d1247d640b069ea" [label=""];
  "sha256:8b5f969dd1fbfdf066bde4eef7d4b6ea7410635162c0faed80cfd13b96666f2d" -> "sha256:8eb474a2e959873403bb4b0f0b4f8d8edb0b628513df2a1c7d1247d640b069ea" [label=""];
  "sha256:8eb474a2e959873403bb4b0f0b4f8d8edb0b628513df2a1c7d1247d640b069ea" -> "sha256:f14753fa2cf6bdd6f2e6088da7bb59da721e45807bfaecb9a53ab7b6aca890ba" [label=""];
  "sha256:f14753fa2cf6bdd6f2e6088da7bb59da721e45807bfaecb9a53ab7b6aca890ba" -> "sha256:edc20c7f6d05c54b57a0c3eb1434b70b446edd4060a145de7bd7729bb8dfeeea" [label=""];
  "sha256:edc20c7f6d05c54b57a0c3eb1434b70b446edd4060a145de7bd7729bb8dfeeea" -> "sha256:dd6275cd3a6e47aca4c083c2ef6fd0f0d718c3a4f7caf8b2b7a0f24dda01aad2" [label=""];
  "sha256:dd6275cd3a6e47aca4c083c2ef6fd0f0d718c3a4f7caf8b2b7a0f24dda01aad2" -> "sha256:60f2149d6e22fba0bc6aa0d1c467031d7e6a60d1cb91916a7d187d2bfa72a9ec" [label=""];
}

