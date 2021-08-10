[app/sources/183432923.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:8f62330e7695c9e92f41061d49cd4ff1275bf8d0c0b658328adae8c824b227f1" [label="/bin/sh -c apt-get update &&     echo 'slapd/root_password password password' | debconf-set-selections &&     echo 'slapd/root_password_again password password' | debconf-set-selections &&     DEBIAN_FRONTEND=noninteractive apt-get install -y ldap-utils slapd" shape="box"];
  "sha256:8144fe43f40b1aac63072d84678352a49b1c0186bbcfc167feb5200c7f9f987f" [label="local://context" shape="ellipse"];
  "sha256:d2b4e71ab2230cfd10df65d00430597e145c7a59b35c1929d3fdaf7713164762" [label="copy{src=/init.ldif, dest=/}" shape="note"];
  "sha256:e4bc7c96df7e1264b3b2b944af9597d15b756b6fbcfc8e98e10a0717707bd8b1" [label="copy{src=/users.ldif, dest=/}" shape="note"];
  "sha256:fb60c6f37bdb28ec8dc121050e5344e1bde0cb556ef09629ca49f065dfa62ad4" [label="/bin/sh -c service slapd start     && mkdir -p /var/ldap/example     && chown -R openldap /var/ldap     && ldapadd -Y EXTERNAL -H ldapi:/// -f init.ldif     && ldapadd -H ldapi:/// -f users.ldif -x -D \"cn=admin,dc=example,dc=edu\" -w password     && rm /*.ldif" shape="box"];
  "sha256:ce1b1d8a6ce971f6256434acbd0642b6b3a52b5a78dcc0dbdcc71c83d443ba67" [label="sha256:ce1b1d8a6ce971f6256434acbd0642b6b3a52b5a78dcc0dbdcc71c83d443ba67" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:8f62330e7695c9e92f41061d49cd4ff1275bf8d0c0b658328adae8c824b227f1" [label=""];
  "sha256:8f62330e7695c9e92f41061d49cd4ff1275bf8d0c0b658328adae8c824b227f1" -> "sha256:d2b4e71ab2230cfd10df65d00430597e145c7a59b35c1929d3fdaf7713164762" [label=""];
  "sha256:8144fe43f40b1aac63072d84678352a49b1c0186bbcfc167feb5200c7f9f987f" -> "sha256:d2b4e71ab2230cfd10df65d00430597e145c7a59b35c1929d3fdaf7713164762" [label=""];
  "sha256:d2b4e71ab2230cfd10df65d00430597e145c7a59b35c1929d3fdaf7713164762" -> "sha256:e4bc7c96df7e1264b3b2b944af9597d15b756b6fbcfc8e98e10a0717707bd8b1" [label=""];
  "sha256:8144fe43f40b1aac63072d84678352a49b1c0186bbcfc167feb5200c7f9f987f" -> "sha256:e4bc7c96df7e1264b3b2b944af9597d15b756b6fbcfc8e98e10a0717707bd8b1" [label=""];
  "sha256:e4bc7c96df7e1264b3b2b944af9597d15b756b6fbcfc8e98e10a0717707bd8b1" -> "sha256:fb60c6f37bdb28ec8dc121050e5344e1bde0cb556ef09629ca49f065dfa62ad4" [label=""];
  "sha256:fb60c6f37bdb28ec8dc121050e5344e1bde0cb556ef09629ca49f065dfa62ad4" -> "sha256:ce1b1d8a6ce971f6256434acbd0642b6b3a52b5a78dcc0dbdcc71c83d443ba67" [label=""];
}

