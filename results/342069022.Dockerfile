[app/sources/342069022.Dockerfile]
digraph {
  "sha256:3322836ed235966d459871466d8ce082a50654fa4ee46d775c6f476ffd5b2443" [label="docker-image://docker.io/library/python:2.7.13@sha256:ac21ec6277f7da89c32f977b25224abbbbb0f4d3d10ce37461210c14019bc955" shape="ellipse"];
  "sha256:82f5825bd736fa7a6095b31b30f4dd94157cbeccc681cecbf79e880194ef3ab3" [label="local://context" shape="ellipse"];
  "sha256:fbb535f986c46a617c39d16ce13166d0fe888ceff7a030158c4582a3cdfe1e25" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:161afe0b3d5e055f74d8d219e315d942e34eb722ec9199472829421d4c81d13d" [label="pip install requests" shape="box"];
  "sha256:39d1ae75f002834c6e660b08f7571e8bb6c05dde0585da03deb477cb7b166489" [label="pip install lxml" shape="box"];
  "sha256:cb5fabd2a62b6adc337a10796c201dc605b16012a4c956a2cc1f14c1b2cadd76" [label="sha256:cb5fabd2a62b6adc337a10796c201dc605b16012a4c956a2cc1f14c1b2cadd76" shape="plaintext"];
  "sha256:3322836ed235966d459871466d8ce082a50654fa4ee46d775c6f476ffd5b2443" -> "sha256:fbb535f986c46a617c39d16ce13166d0fe888ceff7a030158c4582a3cdfe1e25" [label=""];
  "sha256:82f5825bd736fa7a6095b31b30f4dd94157cbeccc681cecbf79e880194ef3ab3" -> "sha256:fbb535f986c46a617c39d16ce13166d0fe888ceff7a030158c4582a3cdfe1e25" [label=""];
  "sha256:fbb535f986c46a617c39d16ce13166d0fe888ceff7a030158c4582a3cdfe1e25" -> "sha256:161afe0b3d5e055f74d8d219e315d942e34eb722ec9199472829421d4c81d13d" [label=""];
  "sha256:161afe0b3d5e055f74d8d219e315d942e34eb722ec9199472829421d4c81d13d" -> "sha256:39d1ae75f002834c6e660b08f7571e8bb6c05dde0585da03deb477cb7b166489" [label=""];
  "sha256:39d1ae75f002834c6e660b08f7571e8bb6c05dde0585da03deb477cb7b166489" -> "sha256:cb5fabd2a62b6adc337a10796c201dc605b16012a4c956a2cc1f14c1b2cadd76" [label=""];
}

