[app/sources/229147660.Dockerfile]
digraph {
  "sha256:e5be83658cf7498668562d3e58ba3e1d12a37baf88eec664570752dbd2e9608b" [label="docker-image://docker.io/floydhub/dl-base:1.0.0-py2.6" shape="ellipse"];
  "sha256:99edddcdca14d0b8143472abafd5a1e3eb3e46099ad9a6fda2bd060056e94e4b" [label="/bin/sh -c pip --no-cache-dir install --upgrade http://download.pytorch.org/whl/cu80/torch-0.1.12.post1-cp27-none-linux_x86_64.whl     tensorboardX" shape="box"];
  "sha256:74c0e8ae93115169d84a4856951cc4b81980a7373f5c1c6a8ec895f8f05cc2d0" [label="/bin/sh -c git clone https://github.com/pytorch/vision     && cd vision     && git checkout 7492fae4c2cd16fb2783dce7e7583d7245cfbe92     && python setup.py install     && cd ..     && rm -rf vision" shape="box"];
  "sha256:d0899a6c355fb2f3b2adde98e99c1e642df6604210e6755463427cc4b9590f9d" [label="sha256:d0899a6c355fb2f3b2adde98e99c1e642df6604210e6755463427cc4b9590f9d" shape="plaintext"];
  "sha256:e5be83658cf7498668562d3e58ba3e1d12a37baf88eec664570752dbd2e9608b" -> "sha256:99edddcdca14d0b8143472abafd5a1e3eb3e46099ad9a6fda2bd060056e94e4b" [label=""];
  "sha256:99edddcdca14d0b8143472abafd5a1e3eb3e46099ad9a6fda2bd060056e94e4b" -> "sha256:74c0e8ae93115169d84a4856951cc4b81980a7373f5c1c6a8ec895f8f05cc2d0" [label=""];
  "sha256:74c0e8ae93115169d84a4856951cc4b81980a7373f5c1c6a8ec895f8f05cc2d0" -> "sha256:d0899a6c355fb2f3b2adde98e99c1e642df6604210e6755463427cc4b9590f9d" [label=""];
}

