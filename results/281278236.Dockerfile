[app/sources/281278236.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:2ad5400916266066f2ae8e6e48dac085461ba44eed6086b1d4787c615b53c524" [label="/bin/sh -c mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app" shape="box"];
  "sha256:066042fb68affd6e31ae10d3e9857a3f215096a0dc5ed5d1ff312d5b033eb1f5" [label="mkdir{path=/home/node/app}" shape="note"];
  "sha256:5c7ade9bc1bdeeb9558ab8a2a205cbf3efc57c24a0fc554b582a6ca7f8082c61" [label="local://context" shape="ellipse"];
  "sha256:629de00ddfb02e22854a95b8a4b44e3bac42fec334e05d1a35bc162d55af54e9" [label="copy{src=/app/*, dest=/home/node/app/}" shape="note"];
  "sha256:e2c2334669a848221050d5b712917d723428e1b1b0efd0ce026301b93cc8fa07" [label="/bin/sh -c npm install" shape="box"];
  "sha256:bc6f3db18a67108fcc09a4df66a9ebe769d9eb469f22a2296b1b0ec10c790ac8" [label="copy{src=/, dest=/home/node/app/}" shape="note"];
  "sha256:6849dae7b5697e40a39925de614f0c202ea5f5295865e9fa062fa935ebd58544" [label="sha256:6849dae7b5697e40a39925de614f0c202ea5f5295865e9fa062fa935ebd58544" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:2ad5400916266066f2ae8e6e48dac085461ba44eed6086b1d4787c615b53c524" [label=""];
  "sha256:2ad5400916266066f2ae8e6e48dac085461ba44eed6086b1d4787c615b53c524" -> "sha256:066042fb68affd6e31ae10d3e9857a3f215096a0dc5ed5d1ff312d5b033eb1f5" [label=""];
  "sha256:066042fb68affd6e31ae10d3e9857a3f215096a0dc5ed5d1ff312d5b033eb1f5" -> "sha256:629de00ddfb02e22854a95b8a4b44e3bac42fec334e05d1a35bc162d55af54e9" [label=""];
  "sha256:5c7ade9bc1bdeeb9558ab8a2a205cbf3efc57c24a0fc554b582a6ca7f8082c61" -> "sha256:629de00ddfb02e22854a95b8a4b44e3bac42fec334e05d1a35bc162d55af54e9" [label=""];
  "sha256:629de00ddfb02e22854a95b8a4b44e3bac42fec334e05d1a35bc162d55af54e9" -> "sha256:e2c2334669a848221050d5b712917d723428e1b1b0efd0ce026301b93cc8fa07" [label=""];
  "sha256:e2c2334669a848221050d5b712917d723428e1b1b0efd0ce026301b93cc8fa07" -> "sha256:bc6f3db18a67108fcc09a4df66a9ebe769d9eb469f22a2296b1b0ec10c790ac8" [label=""];
  "sha256:5c7ade9bc1bdeeb9558ab8a2a205cbf3efc57c24a0fc554b582a6ca7f8082c61" -> "sha256:bc6f3db18a67108fcc09a4df66a9ebe769d9eb469f22a2296b1b0ec10c790ac8" [label=""];
  "sha256:bc6f3db18a67108fcc09a4df66a9ebe769d9eb469f22a2296b1b0ec10c790ac8" -> "sha256:6849dae7b5697e40a39925de614f0c202ea5f5295865e9fa062fa935ebd58544" [label=""];
}

