[app/sources/228391510.Dockerfile]
digraph {
  "sha256:e264d1bb441be7809911ff53404849e7fb38c9f273c51db42f4ec269e27fa79e" [label="local://context" shape="ellipse"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:171e057f348ec27c558117f577adcfa8f447b76abd239cb874fa34b9fc7e3381" [label="copy{src=/repositories, dest=/etc/apk/}" shape="note"];
  "sha256:5cb87ace57d0010950bdd0e0f0a4761407ff4d9876de2989220ae16a3a76ff83" [label="/bin/sh -c apk update && apk upgrade -a &&   apk add --no-cache   dhcpcd   e2fsprogs   e2fsprogs-extra   policycoreutils   libselinux-utils   && true" shape="box"];
  "sha256:0fc4308c42d348dfa70d3d7a40e78d35becf0ca95161b7c38410cc56aee4ec94" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:1a2a88c25dd6523659b7f681440b9abd40eb33c0609a47e4fc62716bed5634c3" [label="sha256:1a2a88c25dd6523659b7f681440b9abd40eb33c0609a47e4fc62716bed5634c3" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:171e057f348ec27c558117f577adcfa8f447b76abd239cb874fa34b9fc7e3381" [label=""];
  "sha256:e264d1bb441be7809911ff53404849e7fb38c9f273c51db42f4ec269e27fa79e" -> "sha256:171e057f348ec27c558117f577adcfa8f447b76abd239cb874fa34b9fc7e3381" [label=""];
  "sha256:171e057f348ec27c558117f577adcfa8f447b76abd239cb874fa34b9fc7e3381" -> "sha256:5cb87ace57d0010950bdd0e0f0a4761407ff4d9876de2989220ae16a3a76ff83" [label=""];
  "sha256:5cb87ace57d0010950bdd0e0f0a4761407ff4d9876de2989220ae16a3a76ff83" -> "sha256:0fc4308c42d348dfa70d3d7a40e78d35becf0ca95161b7c38410cc56aee4ec94" [label=""];
  "sha256:e264d1bb441be7809911ff53404849e7fb38c9f273c51db42f4ec269e27fa79e" -> "sha256:0fc4308c42d348dfa70d3d7a40e78d35becf0ca95161b7c38410cc56aee4ec94" [label=""];
  "sha256:0fc4308c42d348dfa70d3d7a40e78d35becf0ca95161b7c38410cc56aee4ec94" -> "sha256:1a2a88c25dd6523659b7f681440b9abd40eb33c0609a47e4fc62716bed5634c3" [label=""];
}

