[app/sources/160571314.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:a301af6f2ea32ecfc9aaafd9a16f5e43d6779af9d5ec68f44d9327ccdbca6425" [label="/bin/sh -c apt-get -y install git" shape="box"];
  "sha256:b7df34096b3eb862c74c85ba2ac065b6983d985cc4c828851729fe931082bf49" [label="/bin/sh -c apt-get -y install nodejs" shape="box"];
  "sha256:9d6c152b32f4102c1b10d11521f65a13e624a946e8538a9e00a01b136954feb4" [label="/bin/sh -c apt-get -y install npm" shape="box"];
  "sha256:fc3540b96d4030116a88bd38fc34346981d9fab351292f9f61e8ea7e3db29dd7" [label="/bin/sh -c cd /var;git clone https://github.com/pandastrike/panda-panopticon.git" shape="box"];
  "sha256:4d0682969aaff6b2947fd19f4c1b18927020ae1340807bc132d24f5fb7f1c38d" [label="/bin/sh -c cd /var/panda-panopticon;npm install" shape="box"];
  "sha256:6bd95a0039d6172eb74cbec85353ec298580c9da6d623dd6bb5b9f5037fcb198" [label="sha256:6bd95a0039d6172eb74cbec85353ec298580c9da6d623dd6bb5b9f5037fcb198" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label=""];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" -> "sha256:a301af6f2ea32ecfc9aaafd9a16f5e43d6779af9d5ec68f44d9327ccdbca6425" [label=""];
  "sha256:a301af6f2ea32ecfc9aaafd9a16f5e43d6779af9d5ec68f44d9327ccdbca6425" -> "sha256:b7df34096b3eb862c74c85ba2ac065b6983d985cc4c828851729fe931082bf49" [label=""];
  "sha256:b7df34096b3eb862c74c85ba2ac065b6983d985cc4c828851729fe931082bf49" -> "sha256:9d6c152b32f4102c1b10d11521f65a13e624a946e8538a9e00a01b136954feb4" [label=""];
  "sha256:9d6c152b32f4102c1b10d11521f65a13e624a946e8538a9e00a01b136954feb4" -> "sha256:fc3540b96d4030116a88bd38fc34346981d9fab351292f9f61e8ea7e3db29dd7" [label=""];
  "sha256:fc3540b96d4030116a88bd38fc34346981d9fab351292f9f61e8ea7e3db29dd7" -> "sha256:4d0682969aaff6b2947fd19f4c1b18927020ae1340807bc132d24f5fb7f1c38d" [label=""];
  "sha256:4d0682969aaff6b2947fd19f4c1b18927020ae1340807bc132d24f5fb7f1c38d" -> "sha256:6bd95a0039d6172eb74cbec85353ec298580c9da6d623dd6bb5b9f5037fcb198" [label=""];
}

