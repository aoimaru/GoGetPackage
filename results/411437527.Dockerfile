[app/sources/411437527.Dockerfile]
digraph {
  "sha256:748e6469db2a8213bdbd503b59b5ab811713764704979861d3452a71b00eed76" [label="docker-image://docker.io/library/ubuntu:14.04.2@sha256:a1cec70421f71f00c8bdb0adf0226dc548ff5ba9699cbd5fa09acdb68df82a02" shape="ellipse"];
  "sha256:7dffd548c7c54f42f3e40818267da69b1ad3445e2364a7321d8a947ba124f628" [label="/bin/sh -c if [ ! $(echo $NEWMAN_VERSION | grep -oE \"^[0-9]+\\.[0-9]+\\.[0-9]+$\") ]; then         echo \"\\033[0;31mA valid semver Newman version is required in the NEWMAN_VERSION build-arg\\033[0m\";         exit 1;     fi" shape="box"];
  "sha256:e5d683ca7d05d698318f38f22ffafd0336825eda84e2b60b72680bc370a6eec7" [label="https://deb.nodesource.com/setup_10.x" shape="ellipse"];
  "sha256:2ac84e73134f08560e3d8e3e092393fbc8284e2e15ce6997c33be7825ce749e4" [label="copy{src=/setup_10.x, dest=/opt/install_node.sh}" shape="note"];
  "sha256:1fc20e7bb0f61ece6be185e6224626ce26396fec60991d3e83d150c841c7f712" [label="/bin/sh -c bash /opt/install_node.sh &&     apt-get install -y nodejs &&     npm install -g newman@${NEWMAN_VERSION} &&     rm /opt/install_node.sh;" shape="box"];
  "sha256:751c2db7468a74853310bc17b301d72da9334fe41938a48d3cda0094d95f5e82" [label="mkdir{path=/etc/newman}" shape="note"];
  "sha256:3356858ace8a980650a3f983200f6d6a7113dd3c7daa2cddb4d0dd65ac8a954b" [label="sha256:3356858ace8a980650a3f983200f6d6a7113dd3c7daa2cddb4d0dd65ac8a954b" shape="plaintext"];
  "sha256:748e6469db2a8213bdbd503b59b5ab811713764704979861d3452a71b00eed76" -> "sha256:7dffd548c7c54f42f3e40818267da69b1ad3445e2364a7321d8a947ba124f628" [label=""];
  "sha256:7dffd548c7c54f42f3e40818267da69b1ad3445e2364a7321d8a947ba124f628" -> "sha256:2ac84e73134f08560e3d8e3e092393fbc8284e2e15ce6997c33be7825ce749e4" [label=""];
  "sha256:e5d683ca7d05d698318f38f22ffafd0336825eda84e2b60b72680bc370a6eec7" -> "sha256:2ac84e73134f08560e3d8e3e092393fbc8284e2e15ce6997c33be7825ce749e4" [label=""];
  "sha256:2ac84e73134f08560e3d8e3e092393fbc8284e2e15ce6997c33be7825ce749e4" -> "sha256:1fc20e7bb0f61ece6be185e6224626ce26396fec60991d3e83d150c841c7f712" [label=""];
  "sha256:1fc20e7bb0f61ece6be185e6224626ce26396fec60991d3e83d150c841c7f712" -> "sha256:751c2db7468a74853310bc17b301d72da9334fe41938a48d3cda0094d95f5e82" [label=""];
  "sha256:751c2db7468a74853310bc17b301d72da9334fe41938a48d3cda0094d95f5e82" -> "sha256:3356858ace8a980650a3f983200f6d6a7113dd3c7daa2cddb4d0dd65ac8a954b" [label=""];
}

