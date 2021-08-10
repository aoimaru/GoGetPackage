[app/sources/253990184.Dockerfile]
digraph {
  "sha256:af900c6faeb6077f9cddbfa40761b950b94f2a5afa190ba5823cb17144a208a7" [label="docker-image://registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift:latest" shape="ellipse"];
  "sha256:98d38bce8f431c6d8b81f1462d5fa4ecae47d67978f001bf2b68ccb44e5b105f" [label="local://context" shape="ellipse"];
  "sha256:2af232b3318d67e5364937d0a8268b75072abc54015ef2b404f88ea25dad018f" [label="copy{src=/target/apib-1.0.0.jar, dest=/server.jar}" shape="note"];
  "sha256:8c36532841185f17d748e7a4f699d8aa3597c7f3acdb0266365e6a71bc564b5a" [label="sha256:8c36532841185f17d748e7a4f699d8aa3597c7f3acdb0266365e6a71bc564b5a" shape="plaintext"];
  "sha256:af900c6faeb6077f9cddbfa40761b950b94f2a5afa190ba5823cb17144a208a7" -> "sha256:2af232b3318d67e5364937d0a8268b75072abc54015ef2b404f88ea25dad018f" [label=""];
  "sha256:98d38bce8f431c6d8b81f1462d5fa4ecae47d67978f001bf2b68ccb44e5b105f" -> "sha256:2af232b3318d67e5364937d0a8268b75072abc54015ef2b404f88ea25dad018f" [label=""];
  "sha256:2af232b3318d67e5364937d0a8268b75072abc54015ef2b404f88ea25dad018f" -> "sha256:8c36532841185f17d748e7a4f699d8aa3597c7f3acdb0266365e6a71bc564b5a" [label=""];
}

