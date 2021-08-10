[app/sources/282953226.Dockerfile]
digraph {
  "sha256:a14d03bab233d073a0f8017d434d69d3ccdd2fce0e401cadefa3eff6bdd6562a" [label="docker-image://docker.io/library/node:8.10.0-alpine" shape="ellipse"];
  "sha256:c4a53377ca3c4264162f884754b5d3b599ff8c8177858f3062be6c170d95ab55" [label="/bin/sh -c npm install -g serverless" shape="box"];
  "sha256:4fd5b9e19df686d11372b2ac50b169fa104e6ece69d29ba1726d227b7216d7b5" [label="mkdir{path=/app}" shape="note"];
  "sha256:f571fb43f085d56b6fd268b0e87ef156c6106102db2e7b52a9dba95103625350" [label="local://context" shape="ellipse"];
  "sha256:43bfcc6da98728918e75e98cc568dd19e0808367d6e55ff68249a3371ff35e97" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:e5ce5d5155925afb6332900657f2901bdb4db426006a12a1d0c37ee7fa483028" [label="/bin/sh -c npm install" shape="box"];
  "sha256:af2d4a2b6888bda11abf9336e24932f4ee6cfd4bc74e4c913c773564e4da245e" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:39d7dadc0d31587b2b1ca70a6c4d0400144f8bd46211bbeecd82feb6effa077e" [label="sha256:39d7dadc0d31587b2b1ca70a6c4d0400144f8bd46211bbeecd82feb6effa077e" shape="plaintext"];
  "sha256:a14d03bab233d073a0f8017d434d69d3ccdd2fce0e401cadefa3eff6bdd6562a" -> "sha256:c4a53377ca3c4264162f884754b5d3b599ff8c8177858f3062be6c170d95ab55" [label=""];
  "sha256:c4a53377ca3c4264162f884754b5d3b599ff8c8177858f3062be6c170d95ab55" -> "sha256:4fd5b9e19df686d11372b2ac50b169fa104e6ece69d29ba1726d227b7216d7b5" [label=""];
  "sha256:4fd5b9e19df686d11372b2ac50b169fa104e6ece69d29ba1726d227b7216d7b5" -> "sha256:43bfcc6da98728918e75e98cc568dd19e0808367d6e55ff68249a3371ff35e97" [label=""];
  "sha256:f571fb43f085d56b6fd268b0e87ef156c6106102db2e7b52a9dba95103625350" -> "sha256:43bfcc6da98728918e75e98cc568dd19e0808367d6e55ff68249a3371ff35e97" [label=""];
  "sha256:43bfcc6da98728918e75e98cc568dd19e0808367d6e55ff68249a3371ff35e97" -> "sha256:e5ce5d5155925afb6332900657f2901bdb4db426006a12a1d0c37ee7fa483028" [label=""];
  "sha256:e5ce5d5155925afb6332900657f2901bdb4db426006a12a1d0c37ee7fa483028" -> "sha256:af2d4a2b6888bda11abf9336e24932f4ee6cfd4bc74e4c913c773564e4da245e" [label=""];
  "sha256:f571fb43f085d56b6fd268b0e87ef156c6106102db2e7b52a9dba95103625350" -> "sha256:af2d4a2b6888bda11abf9336e24932f4ee6cfd4bc74e4c913c773564e4da245e" [label=""];
  "sha256:af2d4a2b6888bda11abf9336e24932f4ee6cfd4bc74e4c913c773564e4da245e" -> "sha256:39d7dadc0d31587b2b1ca70a6c4d0400144f8bd46211bbeecd82feb6effa077e" [label=""];
}

