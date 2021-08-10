[app/sources/252787542.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:18a2c279505ed607d63d769c8f43d3285292731f3b795fb9188d73b628e41c88" [label="/bin/sh -c apt-get -q update" shape="box"];
  "sha256:3305da6bf3e4c1c0bb60c211eb57e2925df8b00b5140d62adf5024821f510697" [label="/bin/sh -c apt-get install -y python-requests python-boto" shape="box"];
  "sha256:8f2537bf7eda11bb88cb865a72f6c2c5af715a9dff75c376943c184b3ccb18f0" [label="local://context" shape="ellipse"];
  "sha256:195572f7452cfee8a5a1685b639597ec7f89e35058c4fb9d2677944c9c3a7592" [label="copy{src=/ebs-attach.py, dest=/ebs-attach.py}" shape="note"];
  "sha256:a4ad264f4322a2cc315f608f868ed0038d3ce458585d12a15b04ad67e8316658" [label="sha256:a4ad264f4322a2cc315f608f868ed0038d3ce458585d12a15b04ad67e8316658" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:18a2c279505ed607d63d769c8f43d3285292731f3b795fb9188d73b628e41c88" [label=""];
  "sha256:18a2c279505ed607d63d769c8f43d3285292731f3b795fb9188d73b628e41c88" -> "sha256:3305da6bf3e4c1c0bb60c211eb57e2925df8b00b5140d62adf5024821f510697" [label=""];
  "sha256:3305da6bf3e4c1c0bb60c211eb57e2925df8b00b5140d62adf5024821f510697" -> "sha256:195572f7452cfee8a5a1685b639597ec7f89e35058c4fb9d2677944c9c3a7592" [label=""];
  "sha256:8f2537bf7eda11bb88cb865a72f6c2c5af715a9dff75c376943c184b3ccb18f0" -> "sha256:195572f7452cfee8a5a1685b639597ec7f89e35058c4fb9d2677944c9c3a7592" [label=""];
  "sha256:195572f7452cfee8a5a1685b639597ec7f89e35058c4fb9d2677944c9c3a7592" -> "sha256:a4ad264f4322a2cc315f608f868ed0038d3ce458585d12a15b04ad67e8316658" [label=""];
}
