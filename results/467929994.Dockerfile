[app/sources/467929994.Dockerfile]
digraph {
  "sha256:eb28e9050f7c413abfe66448ef472d34a4c7dc88c9eb88a7206f3c420d592e52" [label="local://context" shape="ellipse"];
  "sha256:ed96a37f8f49a5eef9dd010e78f254b22d1981760d4843351e03ae3e821a5fb7" [label="docker-image://docker.io/library/python:3.6-stretch" shape="ellipse"];
  "sha256:b7fc486fa11481624e93dcf33532ca0f6dbb6c9d0ef552b1c647eccefa8c3267" [label="mkdir{path=/var/www/testex}" shape="note"];
  "sha256:e8e5b48166354818663a0a3f27c8220de8b8206d3d0aa25c4544509eefdd6a7c" [label="copy{src=/requirements.txt, dest=/var/www/testex/requirements.txt}" shape="note"];
  "sha256:5b0e636a2dc8a69f23e4cab4f08cad2b74286dbebfb94e19dc5857086abdf544" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:5a263274824763196923d5f181f732c60ce9c4e969b78d27bc0fcccf9cea1975" [label="copy{src=/, dest=/var/www/testex}" shape="note"];
  "sha256:b7b36e4be9295eb3e3a3fb6418eda977969533abfd18fb25e1a9cebe7cedd59e" [label="sha256:b7b36e4be9295eb3e3a3fb6418eda977969533abfd18fb25e1a9cebe7cedd59e" shape="plaintext"];
  "sha256:ed96a37f8f49a5eef9dd010e78f254b22d1981760d4843351e03ae3e821a5fb7" -> "sha256:b7fc486fa11481624e93dcf33532ca0f6dbb6c9d0ef552b1c647eccefa8c3267" [label=""];
  "sha256:b7fc486fa11481624e93dcf33532ca0f6dbb6c9d0ef552b1c647eccefa8c3267" -> "sha256:e8e5b48166354818663a0a3f27c8220de8b8206d3d0aa25c4544509eefdd6a7c" [label=""];
  "sha256:eb28e9050f7c413abfe66448ef472d34a4c7dc88c9eb88a7206f3c420d592e52" -> "sha256:e8e5b48166354818663a0a3f27c8220de8b8206d3d0aa25c4544509eefdd6a7c" [label=""];
  "sha256:e8e5b48166354818663a0a3f27c8220de8b8206d3d0aa25c4544509eefdd6a7c" -> "sha256:5b0e636a2dc8a69f23e4cab4f08cad2b74286dbebfb94e19dc5857086abdf544" [label=""];
  "sha256:5b0e636a2dc8a69f23e4cab4f08cad2b74286dbebfb94e19dc5857086abdf544" -> "sha256:5a263274824763196923d5f181f732c60ce9c4e969b78d27bc0fcccf9cea1975" [label=""];
  "sha256:eb28e9050f7c413abfe66448ef472d34a4c7dc88c9eb88a7206f3c420d592e52" -> "sha256:5a263274824763196923d5f181f732c60ce9c4e969b78d27bc0fcccf9cea1975" [label=""];
  "sha256:5a263274824763196923d5f181f732c60ce9c4e969b78d27bc0fcccf9cea1975" -> "sha256:b7b36e4be9295eb3e3a3fb6418eda977969533abfd18fb25e1a9cebe7cedd59e" [label=""];
}

