[app/sources/454504899.Dockerfile]
digraph {
  "sha256:595969331e998aa4063f99f0238f54f270bc7fdc0391a51e88dd4942ac46e8f7" [label="docker-image://docker.io/library/golang:1.5.1" shape="ellipse"];
  "sha256:ec4080fccfca973b1dea83bdb0b00717cf7d3bfa8c9785f3441cd25bc04e6f43" [label="local://context" shape="ellipse"];
  "sha256:08690dd5ec681e46e54edf796d646610855d8acc8c659af834284ee7025062b1" [label="copy{src=/go/src/kubeproxy/kubeproxy, dest=/bin/goproxy}" shape="note"];
  "sha256:1d3295cfef630fb21a4ed598124842b940b809cd31bf0d31e48f28a4380cf4ca" [label="/bin/sh -c wget https://storage.googleapis.com/kubernetes-release/release/v1.2.4/bin/linux/amd64/kubectl" shape="box"];
  "sha256:0ba26c721d521beddb132bb83b74967ab8eb69eea1ad0bcd77bd1677a162b25a" [label="/bin/sh -c mv kubectl /bin/kubectl" shape="box"];
  "sha256:401ed2fef3808f8c449a257f37754d062381d7203a3a10eeb3f4cdd52f531adc" [label="/bin/sh -c chmod +x /bin/kubectl" shape="box"];
  "sha256:f1ca44e3c3c46ab9bf5b187d47156dba34311ab45c38f6753e4618ea8fcbd4dc" [label="mkdir{path=/srv}" shape="note"];
  "sha256:8388f09e8e244e4c7502b079c2608d52da99afbe04cc453fcbe727179762ae09" [label="/bin/sh -c sh -c \"$(wget -qO - https://raw.githubusercontent.com/cuberite/cuberite/master/easyinstall.sh)\" && mv Server cuberite_server" shape="box"];
  "sha256:27336e014a041d7a480bf37d165e028961293d7c1120e661888bce8555cab8c5" [label="copy{src=/world, dest=/srv/world}" shape="note"];
  "sha256:fa8328238e94bbd52b979337161a4a1d238f822d9164ea92fd4c15f7a575efd5" [label="copy{src=/docs/img/logo64x64.png, dest=/srv/logo.png}" shape="note"];
  "sha256:59db84e5202e29b0d053001881d1b536c98e0c468473ffb969b89a3b10a8eab9" [label="copy{src=/start.sh, dest=/srv/start.sh}" shape="note"];
  "sha256:e8da089d34806cf7f96df86f8bf409cead943176a50819257183f56d42c58ef0" [label="sha256:e8da089d34806cf7f96df86f8bf409cead943176a50819257183f56d42c58ef0" shape="plaintext"];
  "sha256:595969331e998aa4063f99f0238f54f270bc7fdc0391a51e88dd4942ac46e8f7" -> "sha256:08690dd5ec681e46e54edf796d646610855d8acc8c659af834284ee7025062b1" [label=""];
  "sha256:ec4080fccfca973b1dea83bdb0b00717cf7d3bfa8c9785f3441cd25bc04e6f43" -> "sha256:08690dd5ec681e46e54edf796d646610855d8acc8c659af834284ee7025062b1" [label=""];
  "sha256:08690dd5ec681e46e54edf796d646610855d8acc8c659af834284ee7025062b1" -> "sha256:1d3295cfef630fb21a4ed598124842b940b809cd31bf0d31e48f28a4380cf4ca" [label=""];
  "sha256:1d3295cfef630fb21a4ed598124842b940b809cd31bf0d31e48f28a4380cf4ca" -> "sha256:0ba26c721d521beddb132bb83b74967ab8eb69eea1ad0bcd77bd1677a162b25a" [label=""];
  "sha256:0ba26c721d521beddb132bb83b74967ab8eb69eea1ad0bcd77bd1677a162b25a" -> "sha256:401ed2fef3808f8c449a257f37754d062381d7203a3a10eeb3f4cdd52f531adc" [label=""];
  "sha256:401ed2fef3808f8c449a257f37754d062381d7203a3a10eeb3f4cdd52f531adc" -> "sha256:f1ca44e3c3c46ab9bf5b187d47156dba34311ab45c38f6753e4618ea8fcbd4dc" [label=""];
  "sha256:f1ca44e3c3c46ab9bf5b187d47156dba34311ab45c38f6753e4618ea8fcbd4dc" -> "sha256:8388f09e8e244e4c7502b079c2608d52da99afbe04cc453fcbe727179762ae09" [label=""];
  "sha256:8388f09e8e244e4c7502b079c2608d52da99afbe04cc453fcbe727179762ae09" -> "sha256:27336e014a041d7a480bf37d165e028961293d7c1120e661888bce8555cab8c5" [label=""];
  "sha256:ec4080fccfca973b1dea83bdb0b00717cf7d3bfa8c9785f3441cd25bc04e6f43" -> "sha256:27336e014a041d7a480bf37d165e028961293d7c1120e661888bce8555cab8c5" [label=""];
  "sha256:27336e014a041d7a480bf37d165e028961293d7c1120e661888bce8555cab8c5" -> "sha256:fa8328238e94bbd52b979337161a4a1d238f822d9164ea92fd4c15f7a575efd5" [label=""];
  "sha256:ec4080fccfca973b1dea83bdb0b00717cf7d3bfa8c9785f3441cd25bc04e6f43" -> "sha256:fa8328238e94bbd52b979337161a4a1d238f822d9164ea92fd4c15f7a575efd5" [label=""];
  "sha256:fa8328238e94bbd52b979337161a4a1d238f822d9164ea92fd4c15f7a575efd5" -> "sha256:59db84e5202e29b0d053001881d1b536c98e0c468473ffb969b89a3b10a8eab9" [label=""];
  "sha256:ec4080fccfca973b1dea83bdb0b00717cf7d3bfa8c9785f3441cd25bc04e6f43" -> "sha256:59db84e5202e29b0d053001881d1b536c98e0c468473ffb969b89a3b10a8eab9" [label=""];
  "sha256:59db84e5202e29b0d053001881d1b536c98e0c468473ffb969b89a3b10a8eab9" -> "sha256:e8da089d34806cf7f96df86f8bf409cead943176a50819257183f56d42c58ef0" [label=""];
}

