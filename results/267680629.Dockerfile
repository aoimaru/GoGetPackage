[app/sources/267680629.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:ddd27854027f4180960b996fd8e8e0f7076e8b5998c9914838b63f17915d9011" [label="local://context" shape="ellipse"];
  "sha256:3a511bfa77696d5c5179faf254594ca2f3ea349908a5970d8378abc69ef58cb0" [label="copy{src=/, dest=/var/code/simplebank/statsd-agent}" shape="note"];
  "sha256:0ea41ac8dc624b13d2af087ee213e117c793325921b9b03fec0d6e65c9cb337b" [label="/bin/sh -c apk update && apk --update add       ruby       ruby-irb       ruby-json       ruby-rake       ruby-bigdecimal       ruby-io-console       libstdc++       tzdata       ca-certificates       bash" shape="box"];
  "sha256:8f15baa05f91836da55e8f8665191c083e688689dc2e4152d96fb844e0c18e6e" [label="/bin/sh -c gem install bundler --no-ri --no-rdoc     && cd $app_root$app_name ; bundle install     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:f50c3f3adb9c96165641474823dae53a6fdea380e156f482020108d8801a9d07" [label="/bin/sh -c chown -R nobody:nogroup $app_root$app_name" shape="box"];
  "sha256:c06f873e243868b1a8273dfc5a6927da8466f79e007bd0da03ac1833c10dcd7e" [label="/bin/sh -c chmod +x $app_root$app_name/statsd-agent.rb" shape="box"];
  "sha256:329fc2ab5b0044ebe49edc85581b305243dbdb8f57936b34d99fadd9b9f7c5e3" [label="mkdir{path=/var/code/simplebank/statsd-agent}" shape="note"];
  "sha256:7e80cce2e88278747fdc500a882a4e8a6bfdb8d3b699f8c444141375635240d9" [label="sha256:7e80cce2e88278747fdc500a882a4e8a6bfdb8d3b699f8c444141375635240d9" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:3a511bfa77696d5c5179faf254594ca2f3ea349908a5970d8378abc69ef58cb0" [label=""];
  "sha256:ddd27854027f4180960b996fd8e8e0f7076e8b5998c9914838b63f17915d9011" -> "sha256:3a511bfa77696d5c5179faf254594ca2f3ea349908a5970d8378abc69ef58cb0" [label=""];
  "sha256:3a511bfa77696d5c5179faf254594ca2f3ea349908a5970d8378abc69ef58cb0" -> "sha256:0ea41ac8dc624b13d2af087ee213e117c793325921b9b03fec0d6e65c9cb337b" [label=""];
  "sha256:0ea41ac8dc624b13d2af087ee213e117c793325921b9b03fec0d6e65c9cb337b" -> "sha256:8f15baa05f91836da55e8f8665191c083e688689dc2e4152d96fb844e0c18e6e" [label=""];
  "sha256:8f15baa05f91836da55e8f8665191c083e688689dc2e4152d96fb844e0c18e6e" -> "sha256:f50c3f3adb9c96165641474823dae53a6fdea380e156f482020108d8801a9d07" [label=""];
  "sha256:f50c3f3adb9c96165641474823dae53a6fdea380e156f482020108d8801a9d07" -> "sha256:c06f873e243868b1a8273dfc5a6927da8466f79e007bd0da03ac1833c10dcd7e" [label=""];
  "sha256:c06f873e243868b1a8273dfc5a6927da8466f79e007bd0da03ac1833c10dcd7e" -> "sha256:329fc2ab5b0044ebe49edc85581b305243dbdb8f57936b34d99fadd9b9f7c5e3" [label=""];
  "sha256:329fc2ab5b0044ebe49edc85581b305243dbdb8f57936b34d99fadd9b9f7c5e3" -> "sha256:7e80cce2e88278747fdc500a882a4e8a6bfdb8d3b699f8c444141375635240d9" [label=""];
}

