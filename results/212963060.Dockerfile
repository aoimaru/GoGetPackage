[app/sources/212963060.Dockerfile]
digraph {
  "sha256:c01fb18adc761ff93163f0c58446f70875c6049bd95a5cfb51deed439cfb2282" [label="docker-image://docker.io/library/ruby:2.3.3" shape="ellipse"];
  "sha256:83448ab2d1c320cc7c7977d0d896dc897dcf0eabaddfbb4d9f07e947598db69c" [label="/bin/sh -c apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs" shape="box"];
  "sha256:b77a8a12af6d7dc6a7adccfd028eae11044a85b4c3b63f0aed0c3b412446b63a" [label="/bin/sh -c mkdir /myapp" shape="box"];
  "sha256:7e094f634713a4096ade7ca3b891dd8cdad234aec9ec3b26a0ab443eafc4d3be" [label="mkdir{path=/myapp}" shape="note"];
  "sha256:ebf149a9ff5c1d0063ba8522950bef117aa6711bfb7a15c4e798bc8246d1646d" [label="local://context" shape="ellipse"];
  "sha256:882bc524732c18de692d9aea8747cc8507744755629bd9803091fb109fca420e" [label="copy{src=/Gemfile, dest=/myapp/Gemfile}" shape="note"];
  "sha256:0bbb75f3662a4b4daa962a97d18c198214f272247517f0ae0d96a431629741ce" [label="/bin/sh -c gem install bundler && bundle install --jobs 20 --retry 5" shape="box"];
  "sha256:9737f31008a918a95445440c6374560111697533d7b9356fa797e9d22bdbd60d" [label="copy{src=/, dest=/myapp}" shape="note"];
  "sha256:0b604e53dda25fff890bf0cdb2e0ecae74a312b02e4ebfff38ddc0b58c85bab6" [label="sha256:0b604e53dda25fff890bf0cdb2e0ecae74a312b02e4ebfff38ddc0b58c85bab6" shape="plaintext"];
  "sha256:c01fb18adc761ff93163f0c58446f70875c6049bd95a5cfb51deed439cfb2282" -> "sha256:83448ab2d1c320cc7c7977d0d896dc897dcf0eabaddfbb4d9f07e947598db69c" [label=""];
  "sha256:83448ab2d1c320cc7c7977d0d896dc897dcf0eabaddfbb4d9f07e947598db69c" -> "sha256:b77a8a12af6d7dc6a7adccfd028eae11044a85b4c3b63f0aed0c3b412446b63a" [label=""];
  "sha256:b77a8a12af6d7dc6a7adccfd028eae11044a85b4c3b63f0aed0c3b412446b63a" -> "sha256:7e094f634713a4096ade7ca3b891dd8cdad234aec9ec3b26a0ab443eafc4d3be" [label=""];
  "sha256:7e094f634713a4096ade7ca3b891dd8cdad234aec9ec3b26a0ab443eafc4d3be" -> "sha256:882bc524732c18de692d9aea8747cc8507744755629bd9803091fb109fca420e" [label=""];
  "sha256:ebf149a9ff5c1d0063ba8522950bef117aa6711bfb7a15c4e798bc8246d1646d" -> "sha256:882bc524732c18de692d9aea8747cc8507744755629bd9803091fb109fca420e" [label=""];
  "sha256:882bc524732c18de692d9aea8747cc8507744755629bd9803091fb109fca420e" -> "sha256:0bbb75f3662a4b4daa962a97d18c198214f272247517f0ae0d96a431629741ce" [label=""];
  "sha256:0bbb75f3662a4b4daa962a97d18c198214f272247517f0ae0d96a431629741ce" -> "sha256:9737f31008a918a95445440c6374560111697533d7b9356fa797e9d22bdbd60d" [label=""];
  "sha256:ebf149a9ff5c1d0063ba8522950bef117aa6711bfb7a15c4e798bc8246d1646d" -> "sha256:9737f31008a918a95445440c6374560111697533d7b9356fa797e9d22bdbd60d" [label=""];
  "sha256:9737f31008a918a95445440c6374560111697533d7b9356fa797e9d22bdbd60d" -> "sha256:0b604e53dda25fff890bf0cdb2e0ecae74a312b02e4ebfff38ddc0b58c85bab6" [label=""];
}

