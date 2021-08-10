[app/sources/468514368.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:71f09713e0222a73f0f53efae136a2447d80ea3a4cc84b2aae4718df0696664d" [label="mkdir{path=/go/src/{{.ProjectPath}}}" shape="note"];
  "sha256:c5cfe32e68d926cd5d3782e433d6c90788d686bf102a152869542c1711f1e661" [label="local://context" shape="ellipse"];
  "sha256:271bf7ece60350a4ab895dcf1ec12937ae6573483cbba52438f06a2c774baaad" [label="copy{src=/, dest=/go/src/{{.ProjectPath}}/}" shape="note"];
  "sha256:1500b5395b5da3d424f64f4b524648650eca4ad5128be6860520a0f9c62aed2b" [label="/bin/sh -c apk add --no-cache git" shape="box"];
  "sha256:4e37a08140395198f8352e802198d2b4d853ad0f85e08c552f19c01887d41b95" [label="/bin/sh -c go get ./..." shape="box"];
  "sha256:e9b0ec1872b9395840bc73f722ce07022becb67018519c4dd7d4e27b66c43680" [label="/bin/sh -c go build -o {{.ProjectName}} ./cmd/main.go" shape="box"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:3374be7a93119ad754ed4ee859db5b79c35132f076d62f55a32f90f6c05eb5fb" [label="/bin/sh -c apk add --no-cache bash" shape="box"];
  "sha256:40579849f9edd2d8d8aef3efe369fb3c5ee3198055897da3aba87b0f876f55a3" [label="copy{src=/go/src/{{.ProjectPath}}/{{.ProjectName}}, dest=/{{.ProjectName}}}" shape="note"];
  "sha256:95324bc38cbebeaa61436f4ae8b1b23bf04fb3317ce6c7da0465bdf4f7222a1a" [label="copy{src=/go/src/{{.ProjectPath}}/config/config.yml, dest=/config.yml}" shape="note"];
  "sha256:670844f6f690857655a5c9f711afe47d0b1634483bc5c5672a4b4a3d41e18b76" [label="https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh" shape="ellipse"];
  "sha256:37a9e8cea5348514115249012f66f8e943eb19ff833193284b9ecd1047f67d29" [label="copy{src=/wait-for-it.sh, dest=/wait-for-it.sh}" shape="note"];
  "sha256:95c48ea635733d2ab0d7bc20b10789cb605e7fc4d4dc2cba4c9b73ca11e9ae90" [label="chmod +x ./wait-for-it.sh" shape="box"];
  "sha256:3ce0c10ee2b78ff5eb2d2c2a129bd5daa52ddfbb1fbaaf8c8e85b2c38207834f" [label="sha256:3ce0c10ee2b78ff5eb2d2c2a129bd5daa52ddfbb1fbaaf8c8e85b2c38207834f" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:71f09713e0222a73f0f53efae136a2447d80ea3a4cc84b2aae4718df0696664d" [label=""];
  "sha256:71f09713e0222a73f0f53efae136a2447d80ea3a4cc84b2aae4718df0696664d" -> "sha256:271bf7ece60350a4ab895dcf1ec12937ae6573483cbba52438f06a2c774baaad" [label=""];
  "sha256:c5cfe32e68d926cd5d3782e433d6c90788d686bf102a152869542c1711f1e661" -> "sha256:271bf7ece60350a4ab895dcf1ec12937ae6573483cbba52438f06a2c774baaad" [label=""];
  "sha256:271bf7ece60350a4ab895dcf1ec12937ae6573483cbba52438f06a2c774baaad" -> "sha256:1500b5395b5da3d424f64f4b524648650eca4ad5128be6860520a0f9c62aed2b" [label=""];
  "sha256:1500b5395b5da3d424f64f4b524648650eca4ad5128be6860520a0f9c62aed2b" -> "sha256:4e37a08140395198f8352e802198d2b4d853ad0f85e08c552f19c01887d41b95" [label=""];
  "sha256:4e37a08140395198f8352e802198d2b4d853ad0f85e08c552f19c01887d41b95" -> "sha256:e9b0ec1872b9395840bc73f722ce07022becb67018519c4dd7d4e27b66c43680" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label=""];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" -> "sha256:3374be7a93119ad754ed4ee859db5b79c35132f076d62f55a32f90f6c05eb5fb" [label=""];
  "sha256:3374be7a93119ad754ed4ee859db5b79c35132f076d62f55a32f90f6c05eb5fb" -> "sha256:40579849f9edd2d8d8aef3efe369fb3c5ee3198055897da3aba87b0f876f55a3" [label=""];
  "sha256:e9b0ec1872b9395840bc73f722ce07022becb67018519c4dd7d4e27b66c43680" -> "sha256:40579849f9edd2d8d8aef3efe369fb3c5ee3198055897da3aba87b0f876f55a3" [label=""];
  "sha256:40579849f9edd2d8d8aef3efe369fb3c5ee3198055897da3aba87b0f876f55a3" -> "sha256:95324bc38cbebeaa61436f4ae8b1b23bf04fb3317ce6c7da0465bdf4f7222a1a" [label=""];
  "sha256:e9b0ec1872b9395840bc73f722ce07022becb67018519c4dd7d4e27b66c43680" -> "sha256:95324bc38cbebeaa61436f4ae8b1b23bf04fb3317ce6c7da0465bdf4f7222a1a" [label=""];
  "sha256:95324bc38cbebeaa61436f4ae8b1b23bf04fb3317ce6c7da0465bdf4f7222a1a" -> "sha256:37a9e8cea5348514115249012f66f8e943eb19ff833193284b9ecd1047f67d29" [label=""];
  "sha256:670844f6f690857655a5c9f711afe47d0b1634483bc5c5672a4b4a3d41e18b76" -> "sha256:37a9e8cea5348514115249012f66f8e943eb19ff833193284b9ecd1047f67d29" [label=""];
  "sha256:37a9e8cea5348514115249012f66f8e943eb19ff833193284b9ecd1047f67d29" -> "sha256:95c48ea635733d2ab0d7bc20b10789cb605e7fc4d4dc2cba4c9b73ca11e9ae90" [label=""];
  "sha256:95c48ea635733d2ab0d7bc20b10789cb605e7fc4d4dc2cba4c9b73ca11e9ae90" -> "sha256:3ce0c10ee2b78ff5eb2d2c2a129bd5daa52ddfbb1fbaaf8c8e85b2c38207834f" [label=""];
}

