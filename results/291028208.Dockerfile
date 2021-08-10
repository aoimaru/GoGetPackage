[app/sources/291028208.Dockerfile]
digraph {
  "sha256:14d3dfa3ecd7a5d0508623b1c915b562e88d2b0c16ba69cd661ef0979e1bf07a" [label="docker-image://docker.io/microsoft/aspnetcore:2.0-jessie" shape="ellipse"];
  "sha256:f33efabcbb24b183f8ebbaa90c67076361f3e970127fee9859fb6e0b2ffaaeeb" [label="mkdir{path=/app}" shape="note"];
  "sha256:7f393512843b71331b86dada732e94b07220a546f5bfe16a12120c1a228662c1" [label="mkdir{path=/app}" shape="note"];
  "sha256:ad70d552773a58f648c1dc92d65850b1e1e118abbc204a4bc7bec17ef77d3b83" [label="docker-image://docker.io/library/publish:latest" shape="ellipse"];
  "sha256:82e3a91b40ca02c79512d915acda4990da1e7a67b7290a47e00b60fac8638600" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:1c56d632ff17dfc7ba428346bfbdb0154594eb4a4edd9c99b52954f52f246493" [label="sha256:1c56d632ff17dfc7ba428346bfbdb0154594eb4a4edd9c99b52954f52f246493" shape="plaintext"];
  "sha256:14d3dfa3ecd7a5d0508623b1c915b562e88d2b0c16ba69cd661ef0979e1bf07a" -> "sha256:f33efabcbb24b183f8ebbaa90c67076361f3e970127fee9859fb6e0b2ffaaeeb" [label=""];
  "sha256:f33efabcbb24b183f8ebbaa90c67076361f3e970127fee9859fb6e0b2ffaaeeb" -> "sha256:7f393512843b71331b86dada732e94b07220a546f5bfe16a12120c1a228662c1" [label=""];
  "sha256:7f393512843b71331b86dada732e94b07220a546f5bfe16a12120c1a228662c1" -> "sha256:82e3a91b40ca02c79512d915acda4990da1e7a67b7290a47e00b60fac8638600" [label=""];
  "sha256:ad70d552773a58f648c1dc92d65850b1e1e118abbc204a4bc7bec17ef77d3b83" -> "sha256:82e3a91b40ca02c79512d915acda4990da1e7a67b7290a47e00b60fac8638600" [label=""];
  "sha256:82e3a91b40ca02c79512d915acda4990da1e7a67b7290a47e00b60fac8638600" -> "sha256:1c56d632ff17dfc7ba428346bfbdb0154594eb4a4edd9c99b52954f52f246493" [label=""];
}

