[app/sources/314604081.Dockerfile]
digraph {
  "sha256:4954229d0e5f396f0781850dd377ecdc8abc208e1fb8740c3a6c75cbc4794510" [label="docker-image://docker.io/library/debian:stretch@sha256:06f9296409de8cfecaff43aaee6d608ed48a95c0cac0da2a418ff526acedf67b" shape="ellipse"];
  "sha256:064a09de2e5692a1baa50d5c1b4a5ada7c124688944f4bb44b8615307fad5458" [label="mkdir{path=/agent}" shape="note"];
  "sha256:5b1657867b9807486054a042a9072a9a769603a2fff2080ed6f2960c9e6966c3" [label="/bin/sh -c useradd vsts" shape="box"];
  "sha256:763e529f5d7158374299e626b6419c8091a10006673d2ce25736be0192ae3c13" [label="/bin/sh -c apt-get update   && apt-get install -y git python python-setuptools python-pip   && rm -rf /var/lib/apt/lists/*   && pip install wheel" shape="box"];
  "sha256:b3d8247f7cc5362c27f1e98ed05c73df3ab2b57c403a87b95054d4a54190401e" [label="https://vstsagentpackage.azureedge.net/agent/2.131.0/vsts-agent-linux-x64-2.131.0.tar.gz" shape="ellipse"];
  "sha256:e0c9957670f30ce6a0fdf06f960ceda0773aacd1dd45c98c4477f410a5a474e9" [label="copy{src=/vsts-agent-linux-x64-2.131.0.tar.gz, dest=/agent/}" shape="note"];
  "sha256:049f3e05e4b184381ecc4fb986399921386d2501c08ef8de56d250e723795a4d" [label="/bin/sh -c tar xzf vsts-agent-linux-x64-$VSTS_VERSION.tar.gz   && ./bin/installdependencies.sh   && chown -R vsts:vsts /agent" shape="box"];
  "sha256:ace24cd14b4fb52b67c7db5ec3efbe2240c8a5a47eed92305be912d17fa6fe45" [label="sha256:ace24cd14b4fb52b67c7db5ec3efbe2240c8a5a47eed92305be912d17fa6fe45" shape="plaintext"];
  "sha256:4954229d0e5f396f0781850dd377ecdc8abc208e1fb8740c3a6c75cbc4794510" -> "sha256:064a09de2e5692a1baa50d5c1b4a5ada7c124688944f4bb44b8615307fad5458" [label=""];
  "sha256:064a09de2e5692a1baa50d5c1b4a5ada7c124688944f4bb44b8615307fad5458" -> "sha256:5b1657867b9807486054a042a9072a9a769603a2fff2080ed6f2960c9e6966c3" [label=""];
  "sha256:5b1657867b9807486054a042a9072a9a769603a2fff2080ed6f2960c9e6966c3" -> "sha256:763e529f5d7158374299e626b6419c8091a10006673d2ce25736be0192ae3c13" [label=""];
  "sha256:763e529f5d7158374299e626b6419c8091a10006673d2ce25736be0192ae3c13" -> "sha256:e0c9957670f30ce6a0fdf06f960ceda0773aacd1dd45c98c4477f410a5a474e9" [label=""];
  "sha256:b3d8247f7cc5362c27f1e98ed05c73df3ab2b57c403a87b95054d4a54190401e" -> "sha256:e0c9957670f30ce6a0fdf06f960ceda0773aacd1dd45c98c4477f410a5a474e9" [label=""];
  "sha256:e0c9957670f30ce6a0fdf06f960ceda0773aacd1dd45c98c4477f410a5a474e9" -> "sha256:049f3e05e4b184381ecc4fb986399921386d2501c08ef8de56d250e723795a4d" [label=""];
  "sha256:049f3e05e4b184381ecc4fb986399921386d2501c08ef8de56d250e723795a4d" -> "sha256:ace24cd14b4fb52b67c7db5ec3efbe2240c8a5a47eed92305be912d17fa6fe45" [label=""];
}

