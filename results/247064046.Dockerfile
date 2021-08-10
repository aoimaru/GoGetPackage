[app/sources/247064046.Dockerfile]
digraph {
  "sha256:46c648082534ca183cbc817ea35c37edcb154b2f8d990efd49b8c35fc7b4e9a8" [label="docker-image://docker.io/library/logstash:5" shape="ellipse"];
  "sha256:026191c210b1f2d4f584f209be3c48b57b930937ca09f39acfd66b228be5dcca" [label="/bin/sh -c logstash-plugin install  logstash-output-email logstash-filter-multiline" shape="box"];
  "sha256:26c025d1095114bd165b6cf23a53b87fe00cc3e78fc1a0d253471597444bcc6a" [label="local://context" shape="ellipse"];
  "sha256:92a6347da936055d385f04207af382caac5ac2302070acf78118753f83c03803" [label="copy{src=/conf/logstash.conf, dest=/etc/logstash/conf.d/logstash.conf}" shape="note"];
  "sha256:593f75d4d351bbab85eb97b923fbce5feb2a0c82be07518642ece9a9aee47d2b" [label="sha256:593f75d4d351bbab85eb97b923fbce5feb2a0c82be07518642ece9a9aee47d2b" shape="plaintext"];
  "sha256:46c648082534ca183cbc817ea35c37edcb154b2f8d990efd49b8c35fc7b4e9a8" -> "sha256:026191c210b1f2d4f584f209be3c48b57b930937ca09f39acfd66b228be5dcca" [label=""];
  "sha256:026191c210b1f2d4f584f209be3c48b57b930937ca09f39acfd66b228be5dcca" -> "sha256:92a6347da936055d385f04207af382caac5ac2302070acf78118753f83c03803" [label=""];
  "sha256:26c025d1095114bd165b6cf23a53b87fe00cc3e78fc1a0d253471597444bcc6a" -> "sha256:92a6347da936055d385f04207af382caac5ac2302070acf78118753f83c03803" [label=""];
  "sha256:92a6347da936055d385f04207af382caac5ac2302070acf78118753f83c03803" -> "sha256:593f75d4d351bbab85eb97b923fbce5feb2a0c82be07518642ece9a9aee47d2b" [label=""];
}

