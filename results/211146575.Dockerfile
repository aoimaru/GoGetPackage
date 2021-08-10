[app/sources/211146575.Dockerfile]
digraph {
  "sha256:a945cbe714c8530dfcf6c4cdd54f0bd3357ea72c06c34343c20df0bcf2113779" [label="docker-image://docker.io/fluent/fluentd:v0.14.2@sha256:1510757f08a1065ba333e5a96a7f28e694240716223d1a2bc2a14e330378da93" shape="ellipse"];
  "sha256:50eea6a7f7e068748a1b90a3e6a95bb0bbc9a11041d47f46cd8d9eb3816bc5c2" [label="/bin/sh -c apk --no-cache --update add     \t\t\t\t\tbuild-base     \t\t\t\t\truby-dev &&     gem install fluent-plugin-elasticsearch &&     apk del build-base ruby-dev &&     rm -rf /tmp/* /var/tmp/* /var/cache/apk/*" shape="box"];
  "sha256:3544dd0302abe8e9e67ea6a2570769bf044fa12bdd989b12f8fbc328dab971f2" [label="local://context" shape="ellipse"];
  "sha256:181346c84aec0b8b303a18adca69d31cab673c6175bcf4572c8236de907ccc59" [label="copy{src=/fluent.elasticsearch.conf, dest=/fluentd/etc/fluent.conf}" shape="note"];
  "sha256:e92180d24514e1b3a0a7bbb249ae9a493f21167e4cf7590cd0edb7bac973e9c1" [label="sha256:e92180d24514e1b3a0a7bbb249ae9a493f21167e4cf7590cd0edb7bac973e9c1" shape="plaintext"];
  "sha256:a945cbe714c8530dfcf6c4cdd54f0bd3357ea72c06c34343c20df0bcf2113779" -> "sha256:50eea6a7f7e068748a1b90a3e6a95bb0bbc9a11041d47f46cd8d9eb3816bc5c2" [label=""];
  "sha256:50eea6a7f7e068748a1b90a3e6a95bb0bbc9a11041d47f46cd8d9eb3816bc5c2" -> "sha256:181346c84aec0b8b303a18adca69d31cab673c6175bcf4572c8236de907ccc59" [label=""];
  "sha256:3544dd0302abe8e9e67ea6a2570769bf044fa12bdd989b12f8fbc328dab971f2" -> "sha256:181346c84aec0b8b303a18adca69d31cab673c6175bcf4572c8236de907ccc59" [label=""];
  "sha256:181346c84aec0b8b303a18adca69d31cab673c6175bcf4572c8236de907ccc59" -> "sha256:e92180d24514e1b3a0a7bbb249ae9a493f21167e4cf7590cd0edb7bac973e9c1" [label=""];
}

