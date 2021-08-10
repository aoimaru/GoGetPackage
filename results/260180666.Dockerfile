[app/sources/260180666.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:ef60e851b22b1b59dbb64cb9718f0a2cf64dcc37cdadf56fe5adbf42b25fcd80" [label="local://context" shape="ellipse"];
  "sha256:90ee77b76cc5f9d94d23f110d4f7906d0394a5882d85cccdd3ab678c4c967c2e" [label="copy{src=/index.html, dest=/usr/share/nginx/html/index.html}" shape="note"];
  "sha256:5dfcb511007d8dfd4afc763b956893c2d9b5cb672fc2d8d5a87d6ea59a7a101f" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:b5d28b04b5500aacdfff944698afded3ddad30c7e93aa96a420aae14d0578598" [label="/bin/sh -c apt-get install -y linkchecker" shape="box"];
  "sha256:6633e42ffc870e9ceaa9207e0118c410e305924511dc113df83bed9838acb83a" [label="sha256:6633e42ffc870e9ceaa9207e0118c410e305924511dc113df83bed9838acb83a" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:90ee77b76cc5f9d94d23f110d4f7906d0394a5882d85cccdd3ab678c4c967c2e" [label=""];
  "sha256:ef60e851b22b1b59dbb64cb9718f0a2cf64dcc37cdadf56fe5adbf42b25fcd80" -> "sha256:90ee77b76cc5f9d94d23f110d4f7906d0394a5882d85cccdd3ab678c4c967c2e" [label=""];
  "sha256:90ee77b76cc5f9d94d23f110d4f7906d0394a5882d85cccdd3ab678c4c967c2e" -> "sha256:5dfcb511007d8dfd4afc763b956893c2d9b5cb672fc2d8d5a87d6ea59a7a101f" [label=""];
  "sha256:5dfcb511007d8dfd4afc763b956893c2d9b5cb672fc2d8d5a87d6ea59a7a101f" -> "sha256:b5d28b04b5500aacdfff944698afded3ddad30c7e93aa96a420aae14d0578598" [label=""];
  "sha256:b5d28b04b5500aacdfff944698afded3ddad30c7e93aa96a420aae14d0578598" -> "sha256:6633e42ffc870e9ceaa9207e0118c410e305924511dc113df83bed9838acb83a" [label=""];
}

