[app/sources/262564908.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:2df1aa0eebeb9d0d6e13b0e6bc34c9cbf722167add9f1b2e19b7152fc8b6295f" [label="/bin/sh -c apk add --update --no-cache tzdata" shape="box"];
  "sha256:7d138d4d70b4c647daa3e099ecd05a8d15c61d28a24135e7fe5f1dbad91d5c4d" [label="docker-image://docker.io/umputun/baseimage:buildgo-latest" shape="ellipse"];
  "sha256:4f684d1ebe9be84587ecee39af2030b13ebaf998089130afa1a57296319198b0" [label="local://context" shape="ellipse"];
  "sha256:aab64989a4e5702d7b02591024c3c2f84b806910a651e5d44d916a5b1deb2e7f" [label="copy{src=/, dest=/build/docker-logger}" shape="note"];
  "sha256:bb80d3074185a22eb41c4200e99486067d3781c08da07b88695848a1bb65e125" [label="mkdir{path=/build/docker-logger}" shape="note"];
  "sha256:fea55164a07ba1c1e0f9628a4a96e3fd09699035615ada8034f32b8c2ed11645" [label="/bin/sh -c cd app && go test -v -mod=vendor -covermode=count -coverprofile=/profile.cov ./..." shape="box"];
  "sha256:7804ad406626b0fa5f620691fd867d48b93be774037ce2500c773b4fca40f9db" [label="/bin/sh -c golangci-lint run --out-format=tab --tests=false ./..." shape="box"];
  "sha256:75ae2d250d36d21d08a6783ed9f5353afd64779bac2879ccfb44908d1ed90944" [label="/bin/sh -c revison=$(/script/git-rev.sh) &&     echo \"revision=${revison}\" &&     go build -mod=vendor -o docker-logger -ldflags \"-X main.revision=$revison -s -w\" ./app" shape="box"];
  "sha256:db48c9006c57934e8116bd3e204fc4e5887e5082d7aa608b2a14029855b2a891" [label="/bin/sh -c if [ -z \"$COVERALLS_TOKEN\" ] ; then echo \"coverall not enabled\" ;     else goveralls -coverprofile=/profile.cov -service=travis-ci -repotoken $COVERALLS_TOKEN || echo \"coverall failed!\"; fi" shape="box"];
  "sha256:66e6fd7cf538a465de49afb5f223cecee58ce5bc7acba56338967981e70c5bb4" [label="copy{src=/build/docker-logger, dest=/srv/}" shape="note"];
  "sha256:a514ffdf9e65dc0a122bf78bf899568bccba2111e8a0328ec2dec31b2ebf3ea1" [label="copy{src=/init.sh, dest=/init.sh}" shape="note"];
  "sha256:5c06e8d5626ede136cf6544f7b164b9b97f1ecabf207def3405b87a4af09551b" [label="/bin/sh -c chmod +x /init.sh" shape="box"];
  "sha256:f7ec9424e1f9a64557aa3930d2bad8d1e19d210265b59def9959b7e642d0adc6" [label="mkdir{path=/srv}" shape="note"];
  "sha256:c4b5f2782dd376448c1b0b830eef2ec431cb062b15fe5ce49eabf2496130c82e" [label="sha256:c4b5f2782dd376448c1b0b830eef2ec431cb062b15fe5ce49eabf2496130c82e" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:2df1aa0eebeb9d0d6e13b0e6bc34c9cbf722167add9f1b2e19b7152fc8b6295f" [label=""];
  "sha256:7d138d4d70b4c647daa3e099ecd05a8d15c61d28a24135e7fe5f1dbad91d5c4d" -> "sha256:aab64989a4e5702d7b02591024c3c2f84b806910a651e5d44d916a5b1deb2e7f" [label=""];
  "sha256:4f684d1ebe9be84587ecee39af2030b13ebaf998089130afa1a57296319198b0" -> "sha256:aab64989a4e5702d7b02591024c3c2f84b806910a651e5d44d916a5b1deb2e7f" [label=""];
  "sha256:aab64989a4e5702d7b02591024c3c2f84b806910a651e5d44d916a5b1deb2e7f" -> "sha256:bb80d3074185a22eb41c4200e99486067d3781c08da07b88695848a1bb65e125" [label=""];
  "sha256:bb80d3074185a22eb41c4200e99486067d3781c08da07b88695848a1bb65e125" -> "sha256:fea55164a07ba1c1e0f9628a4a96e3fd09699035615ada8034f32b8c2ed11645" [label=""];
  "sha256:fea55164a07ba1c1e0f9628a4a96e3fd09699035615ada8034f32b8c2ed11645" -> "sha256:7804ad406626b0fa5f620691fd867d48b93be774037ce2500c773b4fca40f9db" [label=""];
  "sha256:7804ad406626b0fa5f620691fd867d48b93be774037ce2500c773b4fca40f9db" -> "sha256:75ae2d250d36d21d08a6783ed9f5353afd64779bac2879ccfb44908d1ed90944" [label=""];
  "sha256:75ae2d250d36d21d08a6783ed9f5353afd64779bac2879ccfb44908d1ed90944" -> "sha256:db48c9006c57934e8116bd3e204fc4e5887e5082d7aa608b2a14029855b2a891" [label=""];
  "sha256:2df1aa0eebeb9d0d6e13b0e6bc34c9cbf722167add9f1b2e19b7152fc8b6295f" -> "sha256:66e6fd7cf538a465de49afb5f223cecee58ce5bc7acba56338967981e70c5bb4" [label=""];
  "sha256:db48c9006c57934e8116bd3e204fc4e5887e5082d7aa608b2a14029855b2a891" -> "sha256:66e6fd7cf538a465de49afb5f223cecee58ce5bc7acba56338967981e70c5bb4" [label=""];
  "sha256:66e6fd7cf538a465de49afb5f223cecee58ce5bc7acba56338967981e70c5bb4" -> "sha256:a514ffdf9e65dc0a122bf78bf899568bccba2111e8a0328ec2dec31b2ebf3ea1" [label=""];
  "sha256:4f684d1ebe9be84587ecee39af2030b13ebaf998089130afa1a57296319198b0" -> "sha256:a514ffdf9e65dc0a122bf78bf899568bccba2111e8a0328ec2dec31b2ebf3ea1" [label=""];
  "sha256:a514ffdf9e65dc0a122bf78bf899568bccba2111e8a0328ec2dec31b2ebf3ea1" -> "sha256:5c06e8d5626ede136cf6544f7b164b9b97f1ecabf207def3405b87a4af09551b" [label=""];
  "sha256:5c06e8d5626ede136cf6544f7b164b9b97f1ecabf207def3405b87a4af09551b" -> "sha256:f7ec9424e1f9a64557aa3930d2bad8d1e19d210265b59def9959b7e642d0adc6" [label=""];
  "sha256:f7ec9424e1f9a64557aa3930d2bad8d1e19d210265b59def9959b7e642d0adc6" -> "sha256:c4b5f2782dd376448c1b0b830eef2ec431cb062b15fe5ce49eabf2496130c82e" [label=""];
}

