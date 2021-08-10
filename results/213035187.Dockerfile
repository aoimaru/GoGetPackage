[app/sources/213035187.Dockerfile]
digraph {
  "sha256:cd9de870c838c64cc097f7059f9c1ab890a00e058ff2c6a244690b4e4319b674" [label="docker-image://docker.io/azuresdk/azure-cli-python:latest" shape="ellipse"];
  "sha256:9ae740432eba388ff7bc6f2b89a353cf7b62412ad0c0b14d6f07535283cb36fb" [label="local://context" shape="ellipse"];
  "sha256:6f85742ceff7f7939ab71dc431bfaeebfbb1d64ad7135c76420e70d2d5975ebf" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:09d8e08cf0b240695f8825931f1f9310043a1a0c7d203a1eef5b6db7d0a3d793" [label="sha256:09d8e08cf0b240695f8825931f1f9310043a1a0c7d203a1eef5b6db7d0a3d793" shape="plaintext"];
  "sha256:cd9de870c838c64cc097f7059f9c1ab890a00e058ff2c6a244690b4e4319b674" -> "sha256:6f85742ceff7f7939ab71dc431bfaeebfbb1d64ad7135c76420e70d2d5975ebf" [label=""];
  "sha256:9ae740432eba388ff7bc6f2b89a353cf7b62412ad0c0b14d6f07535283cb36fb" -> "sha256:6f85742ceff7f7939ab71dc431bfaeebfbb1d64ad7135c76420e70d2d5975ebf" [label=""];
  "sha256:6f85742ceff7f7939ab71dc431bfaeebfbb1d64ad7135c76420e70d2d5975ebf" -> "sha256:09d8e08cf0b240695f8825931f1f9310043a1a0c7d203a1eef5b6db7d0a3d793" [label=""];
}

