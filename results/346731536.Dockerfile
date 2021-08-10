[app/sources/346731536.Dockerfile]
digraph {
  "sha256:937c9862e56c4ce2cc1b471b3640f67cb543d4600e6f743ffb261d0d866cd08f" [label="docker-image://docker.io/bgruening/galaxy-stable:latest" shape="ellipse"];
  "sha256:d75ecc6c271701472b884c2bc95c1f3b16f876cf2dc1ba4e063644d1e4fd91f3" [label="local://context" shape="ellipse"];
  "sha256:73c3873befadfc4754a01bd08b1d3a5ed6271b5560c97cedd4073dcbdf7d5a22" [label="copy{src=/topics/assembly/tutorials, dest=/tutorials/}" shape="note"];
  "sha256:d1561e8b166b352dd1facc85bde57c2e579019808bc44ec4f37d35d881f34a50" [label="copy{src=/bin/docker-install-tutorials.sh, dest=/setup-tutorials.sh}" shape="note"];
  "sha256:2bbcf95e28232341d0687aa0db8d3aa2f73abfdad862de7d59176ef4d6a244aa" [label="copy{src=/bin/mergeyaml.py, dest=/mergeyaml.py}" shape="note"];
  "sha256:7e81096da1c14aa33ce2cf86829466d027788c82379980c13d8f6721af8855b6" [label="/bin/sh -c /setup-tutorials.sh" shape="box"];
  "sha256:3b3649987d7c3ce63366bf4ebf84eeb409bfd7a271d63499d555b503dde44b10" [label="sha256:3b3649987d7c3ce63366bf4ebf84eeb409bfd7a271d63499d555b503dde44b10" shape="plaintext"];
  "sha256:937c9862e56c4ce2cc1b471b3640f67cb543d4600e6f743ffb261d0d866cd08f" -> "sha256:73c3873befadfc4754a01bd08b1d3a5ed6271b5560c97cedd4073dcbdf7d5a22" [label=""];
  "sha256:d75ecc6c271701472b884c2bc95c1f3b16f876cf2dc1ba4e063644d1e4fd91f3" -> "sha256:73c3873befadfc4754a01bd08b1d3a5ed6271b5560c97cedd4073dcbdf7d5a22" [label=""];
  "sha256:73c3873befadfc4754a01bd08b1d3a5ed6271b5560c97cedd4073dcbdf7d5a22" -> "sha256:d1561e8b166b352dd1facc85bde57c2e579019808bc44ec4f37d35d881f34a50" [label=""];
  "sha256:d75ecc6c271701472b884c2bc95c1f3b16f876cf2dc1ba4e063644d1e4fd91f3" -> "sha256:d1561e8b166b352dd1facc85bde57c2e579019808bc44ec4f37d35d881f34a50" [label=""];
  "sha256:d1561e8b166b352dd1facc85bde57c2e579019808bc44ec4f37d35d881f34a50" -> "sha256:2bbcf95e28232341d0687aa0db8d3aa2f73abfdad862de7d59176ef4d6a244aa" [label=""];
  "sha256:d75ecc6c271701472b884c2bc95c1f3b16f876cf2dc1ba4e063644d1e4fd91f3" -> "sha256:2bbcf95e28232341d0687aa0db8d3aa2f73abfdad862de7d59176ef4d6a244aa" [label=""];
  "sha256:2bbcf95e28232341d0687aa0db8d3aa2f73abfdad862de7d59176ef4d6a244aa" -> "sha256:7e81096da1c14aa33ce2cf86829466d027788c82379980c13d8f6721af8855b6" [label=""];
  "sha256:7e81096da1c14aa33ce2cf86829466d027788c82379980c13d8f6721af8855b6" -> "sha256:3b3649987d7c3ce63366bf4ebf84eeb409bfd7a271d63499d555b503dde44b10" [label=""];
}

