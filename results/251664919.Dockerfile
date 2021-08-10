[app/sources/251664919.Dockerfile]
digraph {
  "sha256:51de26134f3fc76a055c46088d2408c17766ec1bce9a834f71fe1926203f4468" [label="local://context" shape="ellipse"];
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" [label="docker-image://docker.io/library/golang:1.7" shape="ellipse"];
  "sha256:9eeef363f97326d988d95d6e23077e955f498ebcd0989111dbeba9927e96c395" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:8c878fcc27c8c7899bd928930f68a4df62d81017d7cf460901817f9f7dc94b36" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:97a973b900e5f8bed0884fed984d2725e425bf1aff37ab532a06e19b6508fff4" [label="sha256:97a973b900e5f8bed0884fed984d2725e425bf1aff37ab532a06e19b6508fff4" shape="plaintext"];
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" -> "sha256:9eeef363f97326d988d95d6e23077e955f498ebcd0989111dbeba9927e96c395" [label=""];
  "sha256:51de26134f3fc76a055c46088d2408c17766ec1bce9a834f71fe1926203f4468" -> "sha256:9eeef363f97326d988d95d6e23077e955f498ebcd0989111dbeba9927e96c395" [label=""];
  "sha256:9eeef363f97326d988d95d6e23077e955f498ebcd0989111dbeba9927e96c395" -> "sha256:8c878fcc27c8c7899bd928930f68a4df62d81017d7cf460901817f9f7dc94b36" [label=""];
  "sha256:8c878fcc27c8c7899bd928930f68a4df62d81017d7cf460901817f9f7dc94b36" -> "sha256:97a973b900e5f8bed0884fed984d2725e425bf1aff37ab532a06e19b6508fff4" [label=""];
}

