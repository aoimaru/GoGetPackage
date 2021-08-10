[app/sources/165686822.Dockerfile]
digraph {
  "sha256:a3e4f121c50db0589a7eb125c489d8a117a1b974083b83f1fa2db64abdf01179" [label="docker-image://docker.io/library/julia:latest" shape="ellipse"];
  "sha256:50711a0c37229e335fb84b0d244966f6bd13ee2bd939491eee98add0876eea2f" [label="local://context" shape="ellipse"];
  "sha256:9cf0102aaf8fdb47a7302774ebbd9154b736e29efc84d3a98565009fd93963fa" [label="copy{src=/package_installs.jl, dest=/tmp/package_installs.jl}" shape="note"];
  "sha256:f03f5b5ff893f2096d6134a4bd2a57fc7753523302cf1b87c8a9e4be744aa0e6" [label="/bin/sh -c apt-get update &&     apt-get install -y build-essential hdf5-tools &&     julia /tmp/package_installs.jl &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3b4fbcf9cf56dfeeca8fd0ddbd5a7cab59078c4dc2ca7fffc8a10e3b6c0b186e" [label="copy{src=/train.jl, dest=/train.jl}" shape="note"];
  "sha256:18b642ae39f884b5f402e4fbcc78269ce2861fab79f8f1cdabe831578b4e2bd9" [label="sha256:18b642ae39f884b5f402e4fbcc78269ce2861fab79f8f1cdabe831578b4e2bd9" shape="plaintext"];
  "sha256:a3e4f121c50db0589a7eb125c489d8a117a1b974083b83f1fa2db64abdf01179" -> "sha256:9cf0102aaf8fdb47a7302774ebbd9154b736e29efc84d3a98565009fd93963fa" [label=""];
  "sha256:50711a0c37229e335fb84b0d244966f6bd13ee2bd939491eee98add0876eea2f" -> "sha256:9cf0102aaf8fdb47a7302774ebbd9154b736e29efc84d3a98565009fd93963fa" [label=""];
  "sha256:9cf0102aaf8fdb47a7302774ebbd9154b736e29efc84d3a98565009fd93963fa" -> "sha256:f03f5b5ff893f2096d6134a4bd2a57fc7753523302cf1b87c8a9e4be744aa0e6" [label=""];
  "sha256:f03f5b5ff893f2096d6134a4bd2a57fc7753523302cf1b87c8a9e4be744aa0e6" -> "sha256:3b4fbcf9cf56dfeeca8fd0ddbd5a7cab59078c4dc2ca7fffc8a10e3b6c0b186e" [label=""];
  "sha256:50711a0c37229e335fb84b0d244966f6bd13ee2bd939491eee98add0876eea2f" -> "sha256:3b4fbcf9cf56dfeeca8fd0ddbd5a7cab59078c4dc2ca7fffc8a10e3b6c0b186e" [label=""];
  "sha256:3b4fbcf9cf56dfeeca8fd0ddbd5a7cab59078c4dc2ca7fffc8a10e3b6c0b186e" -> "sha256:18b642ae39f884b5f402e4fbcc78269ce2861fab79f8f1cdabe831578b4e2bd9" [label=""];
}

