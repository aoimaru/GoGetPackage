[app/sources/253401105.Dockerfile]
digraph {
  "sha256:af900c6faeb6077f9cddbfa40761b950b94f2a5afa190ba5823cb17144a208a7" [label="docker-image://registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift:latest" shape="ellipse"];
  "sha256:589dff8839cf6531163c3fe169fa58a3ab4e6d20fb24e184c763c2377abbaf0b" [label="local://context" shape="ellipse"];
  "sha256:d31c778e06efdcb506b77afd39e92b42dd54587c8ee41751c7955bf90cb46847" [label="copy{src=/target/ac-1.0.0.jar, dest=/server.jar}" shape="note"];
  "sha256:f714c8c0a3c979eea76d8938de49e4b61aa949fc81055d489e92bad1ebe0ff21" [label="sha256:f714c8c0a3c979eea76d8938de49e4b61aa949fc81055d489e92bad1ebe0ff21" shape="plaintext"];
  "sha256:af900c6faeb6077f9cddbfa40761b950b94f2a5afa190ba5823cb17144a208a7" -> "sha256:d31c778e06efdcb506b77afd39e92b42dd54587c8ee41751c7955bf90cb46847" [label=""];
  "sha256:589dff8839cf6531163c3fe169fa58a3ab4e6d20fb24e184c763c2377abbaf0b" -> "sha256:d31c778e06efdcb506b77afd39e92b42dd54587c8ee41751c7955bf90cb46847" [label=""];
  "sha256:d31c778e06efdcb506b77afd39e92b42dd54587c8ee41751c7955bf90cb46847" -> "sha256:f714c8c0a3c979eea76d8938de49e4b61aa949fc81055d489e92bad1ebe0ff21" [label=""];
}

