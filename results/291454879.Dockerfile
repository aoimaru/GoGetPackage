[app/sources/291454879.Dockerfile]
digraph {
  "sha256:032492b653bf476a6c833707335ad8b26281f6c4b93f6e496e6da1ff5fa3dacf" [label="docker-image://gcr.io/distroless/base:latest@sha256:97f9cbf81590c7dd878d7e10c20116fa7488c2fb91b3c839df1ebdcb61ab13ca" shape="ellipse"];
  "sha256:22103fcbdbd634f8390a7ba8916f7068b478abc1355fa3a7f6a3034c96dce971" [label="local://context" shape="ellipse"];
  "sha256:b454bb409ae5346677afb70495e028ed858ddc19f5a28548c48f5fc092bd57ad" [label="copy{src=/bin_linux/save-fuel-price-data, dest=/bin/save-fuel-price-data}" shape="note"];
  "sha256:da894cc7301a5fe947f15e0ca0e78cca9bbcf6b782ddda2027615035212c7439" [label="mkdir{path=/bin}" shape="note"];
  "sha256:b3531778a8bff2ebada70da19b87a2cdbfdbf89971aae50c1c6a8df210e3ad0f" [label="sha256:b3531778a8bff2ebada70da19b87a2cdbfdbf89971aae50c1c6a8df210e3ad0f" shape="plaintext"];
  "sha256:032492b653bf476a6c833707335ad8b26281f6c4b93f6e496e6da1ff5fa3dacf" -> "sha256:b454bb409ae5346677afb70495e028ed858ddc19f5a28548c48f5fc092bd57ad" [label=""];
  "sha256:22103fcbdbd634f8390a7ba8916f7068b478abc1355fa3a7f6a3034c96dce971" -> "sha256:b454bb409ae5346677afb70495e028ed858ddc19f5a28548c48f5fc092bd57ad" [label=""];
  "sha256:b454bb409ae5346677afb70495e028ed858ddc19f5a28548c48f5fc092bd57ad" -> "sha256:da894cc7301a5fe947f15e0ca0e78cca9bbcf6b782ddda2027615035212c7439" [label=""];
  "sha256:da894cc7301a5fe947f15e0ca0e78cca9bbcf6b782ddda2027615035212c7439" -> "sha256:b3531778a8bff2ebada70da19b87a2cdbfdbf89971aae50c1c6a8df210e3ad0f" [label=""];
}

