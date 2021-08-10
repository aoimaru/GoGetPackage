[app/sources/252792590.Dockerfile]
digraph {
  "sha256:24eed8ed521588acfc58d86cb40a801a6bb7f24017cddd35dfaa3744baed7c5f" [label="docker-image://docker.io/danielbeck/cordova-base:latest" shape="ellipse"];
  "sha256:951686da6c2542ecbc02a2d5c54dce6b896c2916fc2200b06dbf5f472b4de4ed" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:19917be4fa6798d4c8eb729a583447b5eb295a26d53f40552ca7afa48743f225" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d58a2ada03c1f5f1816767adef0e48b54887171b0297fa9b695f9ec5eca60d53" [label="/bin/sh -c apt-get autoremove -y" shape="box"];
  "sha256:938f41a24dc3759a21339980c3352ddb9ab0bec45db9e7a8fe234e1f7e70d4bb" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:45b7ee604837d7e7484ac0c2e1917ea87cc19331571b2e37ea832441210049e6" [label="/bin/sh -c cd /tmp && cordova create fakeapp && cd /tmp/fakeapp && cordova platform add firefoxos && cordova build && cd ~/ && rm -rf /tmp/fakeapp" shape="box"];
  "sha256:3374cbe30cd706ec254ed9eb8e9434882421ee300c1403470c153d6574b1980d" [label="mkdir{path=/data}" shape="note"];
  "sha256:8e52ac5e35042a8f6e71eadb6a057cced6dd63e4a9b08e893d324b0f8e962e20" [label="sha256:8e52ac5e35042a8f6e71eadb6a057cced6dd63e4a9b08e893d324b0f8e962e20" shape="plaintext"];
  "sha256:24eed8ed521588acfc58d86cb40a801a6bb7f24017cddd35dfaa3744baed7c5f" -> "sha256:951686da6c2542ecbc02a2d5c54dce6b896c2916fc2200b06dbf5f472b4de4ed" [label=""];
  "sha256:951686da6c2542ecbc02a2d5c54dce6b896c2916fc2200b06dbf5f472b4de4ed" -> "sha256:19917be4fa6798d4c8eb729a583447b5eb295a26d53f40552ca7afa48743f225" [label=""];
  "sha256:19917be4fa6798d4c8eb729a583447b5eb295a26d53f40552ca7afa48743f225" -> "sha256:d58a2ada03c1f5f1816767adef0e48b54887171b0297fa9b695f9ec5eca60d53" [label=""];
  "sha256:d58a2ada03c1f5f1816767adef0e48b54887171b0297fa9b695f9ec5eca60d53" -> "sha256:938f41a24dc3759a21339980c3352ddb9ab0bec45db9e7a8fe234e1f7e70d4bb" [label=""];
  "sha256:938f41a24dc3759a21339980c3352ddb9ab0bec45db9e7a8fe234e1f7e70d4bb" -> "sha256:45b7ee604837d7e7484ac0c2e1917ea87cc19331571b2e37ea832441210049e6" [label=""];
  "sha256:45b7ee604837d7e7484ac0c2e1917ea87cc19331571b2e37ea832441210049e6" -> "sha256:3374cbe30cd706ec254ed9eb8e9434882421ee300c1403470c153d6574b1980d" [label=""];
  "sha256:3374cbe30cd706ec254ed9eb8e9434882421ee300c1403470c153d6574b1980d" -> "sha256:8e52ac5e35042a8f6e71eadb6a057cced6dd63e4a9b08e893d324b0f8e962e20" [label=""];
}

