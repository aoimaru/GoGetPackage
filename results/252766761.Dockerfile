[app/sources/252766761.Dockerfile]
digraph {
  "sha256:a825e0c823ad0e6dbdd632aafc40e6b0f46951b4ca2e20bcb7767399a791c31d" [label="docker-image://docker.io/alaindomissy/docker-miniconda2:latest" shape="ellipse"];
  "sha256:7598574b3b3683639b50413226336465913ce779024302ff2be7a0674ead0567" [label="local://context" shape="ellipse"];
  "sha256:0734d228106d3c131ec1bf2f9d5b9c85e4f708fcdc488fd94d2506dd009cc9af" [label="copy{src=/files, dest=/root/}" shape="note"];
  "sha256:9cc56abb2d285ae62a16c79536fb1c554692e6a98baaee7d6e431953b30adbfb" [label="sha256:9cc56abb2d285ae62a16c79536fb1c554692e6a98baaee7d6e431953b30adbfb" shape="plaintext"];
  "sha256:a825e0c823ad0e6dbdd632aafc40e6b0f46951b4ca2e20bcb7767399a791c31d" -> "sha256:0734d228106d3c131ec1bf2f9d5b9c85e4f708fcdc488fd94d2506dd009cc9af" [label=""];
  "sha256:7598574b3b3683639b50413226336465913ce779024302ff2be7a0674ead0567" -> "sha256:0734d228106d3c131ec1bf2f9d5b9c85e4f708fcdc488fd94d2506dd009cc9af" [label=""];
  "sha256:0734d228106d3c131ec1bf2f9d5b9c85e4f708fcdc488fd94d2506dd009cc9af" -> "sha256:9cc56abb2d285ae62a16c79536fb1c554692e6a98baaee7d6e431953b30adbfb" [label=""];
}

