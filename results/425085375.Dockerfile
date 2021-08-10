[app/sources/425085375.Dockerfile]
digraph {
  "sha256:48bbf7f6edde5408d75cebfc684eb57e736481feeda051d1fd73fbf22028387d" [label="docker-image://docker.io/gewo/ruby-dependencies:latest" shape="ellipse"];
  "sha256:a7aaf5f8e27e9faf905ff1d51a08257d3dd8e46156a701893ad390ff0e235c38" [label="/bin/sh -c rvm install ruby-${APP_RUBY_VERSION} --default" shape="box"];
  "sha256:288987ce50943267a0ccda22533f17e6430d352b611ea68f012d89a7e85429e8" [label="sha256:288987ce50943267a0ccda22533f17e6430d352b611ea68f012d89a7e85429e8" shape="plaintext"];
  "sha256:48bbf7f6edde5408d75cebfc684eb57e736481feeda051d1fd73fbf22028387d" -> "sha256:a7aaf5f8e27e9faf905ff1d51a08257d3dd8e46156a701893ad390ff0e235c38" [label=""];
  "sha256:a7aaf5f8e27e9faf905ff1d51a08257d3dd8e46156a701893ad390ff0e235c38" -> "sha256:288987ce50943267a0ccda22533f17e6430d352b611ea68f012d89a7e85429e8" [label=""];
}

