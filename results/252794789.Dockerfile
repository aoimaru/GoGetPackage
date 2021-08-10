[app/sources/252794789.Dockerfile]
digraph {
  "sha256:bd34ea592abe9ee78a4165c1fc85186f5cdd49eee93fcbdab5df157b902dea4f" [label="docker-image://docker.io/library/ruby:latest" shape="ellipse"];
  "sha256:62eae3d7da9107e66f27dd6787bdcde28ac781cd8431de7c299391687c7a3411" [label="/bin/sh -c gem update --system && gem install compass && gem install bootstrap-sass" shape="box"];
  "sha256:af0a3fbf69507d66a0b83a8f87e5a240a69228dfeb6a96deb2e3cb6b82143c74" [label="mkdir{path=/app}" shape="note"];
  "sha256:779e714908730d0b3a293a8f21fb6cd623f322a8deed1e4553f374526ef03ff5" [label="sha256:779e714908730d0b3a293a8f21fb6cd623f322a8deed1e4553f374526ef03ff5" shape="plaintext"];
  "sha256:bd34ea592abe9ee78a4165c1fc85186f5cdd49eee93fcbdab5df157b902dea4f" -> "sha256:62eae3d7da9107e66f27dd6787bdcde28ac781cd8431de7c299391687c7a3411" [label=""];
  "sha256:62eae3d7da9107e66f27dd6787bdcde28ac781cd8431de7c299391687c7a3411" -> "sha256:af0a3fbf69507d66a0b83a8f87e5a240a69228dfeb6a96deb2e3cb6b82143c74" [label=""];
  "sha256:af0a3fbf69507d66a0b83a8f87e5a240a69228dfeb6a96deb2e3cb6b82143c74" -> "sha256:779e714908730d0b3a293a8f21fb6cd623f322a8deed1e4553f374526ef03ff5" [label=""];
}

