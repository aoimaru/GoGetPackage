[app/sources/237727842.Dockerfile]
digraph {
  "sha256:bd34ea592abe9ee78a4165c1fc85186f5cdd49eee93fcbdab5df157b902dea4f" [label="docker-image://docker.io/library/ruby:latest" shape="ellipse"];
  "sha256:bd9e684fe10c69d5d9ed56b4deac6aa6a32f0b0a4cc43cbf0da4b4b38e68d921" [label="/bin/sh -c gem install gherkin_lint --no-format-exec" shape="box"];
  "sha256:7641707d2c722d17dff2d494033198f5102fcf3f5e1cd9d0436ff0d9a9c2223f" [label="sha256:7641707d2c722d17dff2d494033198f5102fcf3f5e1cd9d0436ff0d9a9c2223f" shape="plaintext"];
  "sha256:bd34ea592abe9ee78a4165c1fc85186f5cdd49eee93fcbdab5df157b902dea4f" -> "sha256:bd9e684fe10c69d5d9ed56b4deac6aa6a32f0b0a4cc43cbf0da4b4b38e68d921" [label=""];
  "sha256:bd9e684fe10c69d5d9ed56b4deac6aa6a32f0b0a4cc43cbf0da4b4b38e68d921" -> "sha256:7641707d2c722d17dff2d494033198f5102fcf3f5e1cd9d0436ff0d9a9c2223f" [label=""];
}

