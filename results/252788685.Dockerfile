[app/sources/252788685.Dockerfile]
digraph {
  "sha256:c01fb18adc761ff93163f0c58446f70875c6049bd95a5cfb51deed439cfb2282" [label="docker-image://docker.io/library/ruby:2.3.3" shape="ellipse"];
  "sha256:bd191cd2f0c942496e04e8b7811516c2e77177c725be2541715d5f9f2eeec374" [label="/bin/sh -c apt-get update && apt-get install -y net-tools nodejs" shape="box"];
  "sha256:dc5e014c2129dbefa76a767f68b304bea06521bc7944511f4895436a1acdc3d7" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:4a033f5e1b392bbd7083dd48c1edcebc4c20e83815787551e9d88993025a80bf" [label="mkdir{path=/app}" shape="note"];
  "sha256:f803cee4a7b7cc29b47a3835daaa25b8efc08fdb42338ce28370a50871ce2e17" [label="local://context" shape="ellipse"];
  "sha256:ca18601122b0a5871f74e9e511745f2b7ef0fce4df2ec200104bafb6fabba025" [label="copy{src=/Gemfile*, dest=/app/}" shape="note"];
  "sha256:42152dae3563d72beb1728557ddba990e44cb71811d1ccc90b9c58990a378935" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:212850d8c5d1d59247203a1bcd663f77ff846c6959eebba84f94a74beb3096cb" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:ddfede749d77dbfdaf86b352476265f8bd73853ceef7f62cb504133d4df76bf1" [label="/bin/sh -c useradd ruby" shape="box"];
  "sha256:3207dbfbe8c5435b4385a9629ec6ef5c1877ecbf2ad198bc437b7bdcd915008e" [label="/bin/sh -c chown -R ruby /app" shape="box"];
  "sha256:66707d536c5e6a9622f7c54223fd18ffb46321eacbf5ce4bf8e88967a081f448" [label="sha256:66707d536c5e6a9622f7c54223fd18ffb46321eacbf5ce4bf8e88967a081f448" shape="plaintext"];
  "sha256:c01fb18adc761ff93163f0c58446f70875c6049bd95a5cfb51deed439cfb2282" -> "sha256:bd191cd2f0c942496e04e8b7811516c2e77177c725be2541715d5f9f2eeec374" [label=""];
  "sha256:bd191cd2f0c942496e04e8b7811516c2e77177c725be2541715d5f9f2eeec374" -> "sha256:dc5e014c2129dbefa76a767f68b304bea06521bc7944511f4895436a1acdc3d7" [label=""];
  "sha256:dc5e014c2129dbefa76a767f68b304bea06521bc7944511f4895436a1acdc3d7" -> "sha256:4a033f5e1b392bbd7083dd48c1edcebc4c20e83815787551e9d88993025a80bf" [label=""];
  "sha256:4a033f5e1b392bbd7083dd48c1edcebc4c20e83815787551e9d88993025a80bf" -> "sha256:ca18601122b0a5871f74e9e511745f2b7ef0fce4df2ec200104bafb6fabba025" [label=""];
  "sha256:f803cee4a7b7cc29b47a3835daaa25b8efc08fdb42338ce28370a50871ce2e17" -> "sha256:ca18601122b0a5871f74e9e511745f2b7ef0fce4df2ec200104bafb6fabba025" [label=""];
  "sha256:ca18601122b0a5871f74e9e511745f2b7ef0fce4df2ec200104bafb6fabba025" -> "sha256:42152dae3563d72beb1728557ddba990e44cb71811d1ccc90b9c58990a378935" [label=""];
  "sha256:42152dae3563d72beb1728557ddba990e44cb71811d1ccc90b9c58990a378935" -> "sha256:212850d8c5d1d59247203a1bcd663f77ff846c6959eebba84f94a74beb3096cb" [label=""];
  "sha256:f803cee4a7b7cc29b47a3835daaa25b8efc08fdb42338ce28370a50871ce2e17" -> "sha256:212850d8c5d1d59247203a1bcd663f77ff846c6959eebba84f94a74beb3096cb" [label=""];
  "sha256:212850d8c5d1d59247203a1bcd663f77ff846c6959eebba84f94a74beb3096cb" -> "sha256:ddfede749d77dbfdaf86b352476265f8bd73853ceef7f62cb504133d4df76bf1" [label=""];
  "sha256:ddfede749d77dbfdaf86b352476265f8bd73853ceef7f62cb504133d4df76bf1" -> "sha256:3207dbfbe8c5435b4385a9629ec6ef5c1877ecbf2ad198bc437b7bdcd915008e" [label=""];
  "sha256:3207dbfbe8c5435b4385a9629ec6ef5c1877ecbf2ad198bc437b7bdcd915008e" -> "sha256:66707d536c5e6a9622f7c54223fd18ffb46321eacbf5ce4bf8e88967a081f448" [label=""];
}

