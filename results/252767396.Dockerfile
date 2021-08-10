[app/sources/252767396.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:18a2c279505ed607d63d769c8f43d3285292731f3b795fb9188d73b628e41c88" [label="/bin/sh -c apt-get -q update" shape="box"];
  "sha256:3305da6bf3e4c1c0bb60c211eb57e2925df8b00b5140d62adf5024821f510697" [label="/bin/sh -c apt-get install -y python-requests python-boto" shape="box"];
  "sha256:18a2673fed2a667005338e8ec2f32cf107e47ee2c1ee5d0721b300f0d31c76af" [label="local://context" shape="ellipse"];
  "sha256:996f3e1e7f945bb9b1f3ac57772b56d5f2fc841f42c0b763b82de11e6264f1f4" [label="copy{src=/ebs-attach.py, dest=/ebs-attach.py}" shape="note"];
  "sha256:45870805b01c40311c28f9928cca5a3372430f9c9c5444e81d0538fd801da2d8" [label="sha256:45870805b01c40311c28f9928cca5a3372430f9c9c5444e81d0538fd801da2d8" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:18a2c279505ed607d63d769c8f43d3285292731f3b795fb9188d73b628e41c88" [label=""];
  "sha256:18a2c279505ed607d63d769c8f43d3285292731f3b795fb9188d73b628e41c88" -> "sha256:3305da6bf3e4c1c0bb60c211eb57e2925df8b00b5140d62adf5024821f510697" [label=""];
  "sha256:3305da6bf3e4c1c0bb60c211eb57e2925df8b00b5140d62adf5024821f510697" -> "sha256:996f3e1e7f945bb9b1f3ac57772b56d5f2fc841f42c0b763b82de11e6264f1f4" [label=""];
  "sha256:18a2673fed2a667005338e8ec2f32cf107e47ee2c1ee5d0721b300f0d31c76af" -> "sha256:996f3e1e7f945bb9b1f3ac57772b56d5f2fc841f42c0b763b82de11e6264f1f4" [label=""];
  "sha256:996f3e1e7f945bb9b1f3ac57772b56d5f2fc841f42c0b763b82de11e6264f1f4" -> "sha256:45870805b01c40311c28f9928cca5a3372430f9c9c5444e81d0538fd801da2d8" [label=""];
}

