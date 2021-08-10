[app/sources/170707838.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:25c550fee77789171e8c2f41dbc1f74a5091a7aacdb41167644323171a459ed7" [label="local://context" shape="ellipse"];
  "sha256:a622126a4e0406b7acd9f8651ddacbe50ba6ae7228372f134c475f4c3641d47c" [label="copy{src=/install.sh, dest=/install.sh}" shape="note"];
  "sha256:4e4560a31aeb5fae2505790f4389369bea939b22ab148d647eca6f636c4321eb" [label="/bin/sh -c sh install.sh && rm install.sh" shape="box"];
  "sha256:cfde876a4f03205891b21f54e59073c3acf624ca482144008c8173d7e8bcf102" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:62143b94ca761ea4ff759f083a440022edd96721e0f5c75e95a77f6c6dad8fe9" [label="copy{src=/backup.sh, dest=/backup.sh}" shape="note"];
  "sha256:ffdb2293b7a2a0d0418179b81ddb64f0c8eae50ae95ae75bff9813b128dc5ff4" [label="sha256:ffdb2293b7a2a0d0418179b81ddb64f0c8eae50ae95ae75bff9813b128dc5ff4" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:a622126a4e0406b7acd9f8651ddacbe50ba6ae7228372f134c475f4c3641d47c" [label=""];
  "sha256:25c550fee77789171e8c2f41dbc1f74a5091a7aacdb41167644323171a459ed7" -> "sha256:a622126a4e0406b7acd9f8651ddacbe50ba6ae7228372f134c475f4c3641d47c" [label=""];
  "sha256:a622126a4e0406b7acd9f8651ddacbe50ba6ae7228372f134c475f4c3641d47c" -> "sha256:4e4560a31aeb5fae2505790f4389369bea939b22ab148d647eca6f636c4321eb" [label=""];
  "sha256:4e4560a31aeb5fae2505790f4389369bea939b22ab148d647eca6f636c4321eb" -> "sha256:cfde876a4f03205891b21f54e59073c3acf624ca482144008c8173d7e8bcf102" [label=""];
  "sha256:25c550fee77789171e8c2f41dbc1f74a5091a7aacdb41167644323171a459ed7" -> "sha256:cfde876a4f03205891b21f54e59073c3acf624ca482144008c8173d7e8bcf102" [label=""];
  "sha256:cfde876a4f03205891b21f54e59073c3acf624ca482144008c8173d7e8bcf102" -> "sha256:62143b94ca761ea4ff759f083a440022edd96721e0f5c75e95a77f6c6dad8fe9" [label=""];
  "sha256:25c550fee77789171e8c2f41dbc1f74a5091a7aacdb41167644323171a459ed7" -> "sha256:62143b94ca761ea4ff759f083a440022edd96721e0f5c75e95a77f6c6dad8fe9" [label=""];
  "sha256:62143b94ca761ea4ff759f083a440022edd96721e0f5c75e95a77f6c6dad8fe9" -> "sha256:ffdb2293b7a2a0d0418179b81ddb64f0c8eae50ae95ae75bff9813b128dc5ff4" [label=""];
}

