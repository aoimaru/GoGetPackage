[app/sources/252799454.Dockerfile]
digraph {
  "sha256:d28f875465c6572dc3fd114b8bfb8c5395f7a1cbdf88270ccd965fc9dc9e8feb" [label="local://context" shape="ellipse"];
  "sha256:89f83a398ddd7a7561f1df8f8c74620920526e06cd666cc36f009cae6c85fa4e" [label="docker-image://docker.io/library/node:4.6" shape="ellipse"];
  "sha256:7636cca15bca3bcf270b8d80a34bdd2ad10e8c1f9f7637b0494b531adfd57295" [label="mkdir{path=/app}" shape="note"];
  "sha256:734eafac5edd503b5c1a916ef86c12fd9910d15a3679ac38cdf520437f89e4a9" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:9b4446533e44d32d3dc39e28fd227f844f3e6817fb70e97e71ccc70557b04720" [label="/bin/sh -c npm install" shape="box"];
  "sha256:b41e81618209ad382e72fde08c78a08026b75874d0a37e976630c98853c7afb2" [label="sha256:b41e81618209ad382e72fde08c78a08026b75874d0a37e976630c98853c7afb2" shape="plaintext"];
  "sha256:89f83a398ddd7a7561f1df8f8c74620920526e06cd666cc36f009cae6c85fa4e" -> "sha256:7636cca15bca3bcf270b8d80a34bdd2ad10e8c1f9f7637b0494b531adfd57295" [label=""];
  "sha256:7636cca15bca3bcf270b8d80a34bdd2ad10e8c1f9f7637b0494b531adfd57295" -> "sha256:734eafac5edd503b5c1a916ef86c12fd9910d15a3679ac38cdf520437f89e4a9" [label=""];
  "sha256:d28f875465c6572dc3fd114b8bfb8c5395f7a1cbdf88270ccd965fc9dc9e8feb" -> "sha256:734eafac5edd503b5c1a916ef86c12fd9910d15a3679ac38cdf520437f89e4a9" [label=""];
  "sha256:734eafac5edd503b5c1a916ef86c12fd9910d15a3679ac38cdf520437f89e4a9" -> "sha256:9b4446533e44d32d3dc39e28fd227f844f3e6817fb70e97e71ccc70557b04720" [label=""];
  "sha256:9b4446533e44d32d3dc39e28fd227f844f3e6817fb70e97e71ccc70557b04720" -> "sha256:b41e81618209ad382e72fde08c78a08026b75874d0a37e976630c98853c7afb2" [label=""];
}

