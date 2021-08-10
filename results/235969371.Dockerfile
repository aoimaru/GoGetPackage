[app/sources/235969371.Dockerfile]
digraph {
  "sha256:7a53eb75ea5ed45e187e95bcce573a01822c98b6ba401d37b937745982c4de31" [label="local://context" shape="ellipse"];
  "sha256:d672af9cb94892f46f5abab40e164cf33909489e5748ace3a7619382bcec5dd3" [label="copy{src=/mybin, dest=/}" shape="note"];
  "sha256:6c64a0332ea0c2af3080d8023d51540703fec60a921ed32fbbb2e7d928c8c70b" [label="sha256:6c64a0332ea0c2af3080d8023d51540703fec60a921ed32fbbb2e7d928c8c70b" shape="plaintext"];
  "sha256:7a53eb75ea5ed45e187e95bcce573a01822c98b6ba401d37b937745982c4de31" -> "sha256:d672af9cb94892f46f5abab40e164cf33909489e5748ace3a7619382bcec5dd3" [label=""];
  "sha256:d672af9cb94892f46f5abab40e164cf33909489e5748ace3a7619382bcec5dd3" -> "sha256:6c64a0332ea0c2af3080d8023d51540703fec60a921ed32fbbb2e7d928c8c70b" [label=""];
}

