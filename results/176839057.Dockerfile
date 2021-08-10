[app/sources/176839057.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:5375052f0581c736fb908286709a86d1e6453eb711f41a236fabf78138dc73a4" [label="/bin/sh -c apt-get update -qy && apt-get install tmux zsh weechat-curses -y" shape="box"];
  "sha256:d800bd92a1bbef737d48092a2b9f983f667a8ccd547bc348ac304fc92748c888" [label="local://context" shape="ellipse"];
  "sha256:3763c464c9bc0e6b01e9684d78783162211be4fe961cd6c14ba8f3044e4dc331" [label="copy{src=/.weechat, dest=/.weechat}" shape="note"];
  "sha256:cb62d8122f08534b1ede78b8ba4554e6807344a8f6b3cc8eed00c802053f5742" [label="copy{src=/.tmux.conf, dest=/}" shape="note"];
  "sha256:0db6f80dacc76d3cfa12b0ec0b6c14b262b7ef8ce1f23c118a9c7878a53f664b" [label="/bin/sh -c echo \"export TERM=screen-256color\" >/.zshenv" shape="box"];
  "sha256:e476776c780e5b39ee7b033b1bf88cd06d6bf67f7bf5884f09f5b34c08b28fd5" [label="sha256:e476776c780e5b39ee7b033b1bf88cd06d6bf67f7bf5884f09f5b34c08b28fd5" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:5375052f0581c736fb908286709a86d1e6453eb711f41a236fabf78138dc73a4" [label=""];
  "sha256:5375052f0581c736fb908286709a86d1e6453eb711f41a236fabf78138dc73a4" -> "sha256:3763c464c9bc0e6b01e9684d78783162211be4fe961cd6c14ba8f3044e4dc331" [label=""];
  "sha256:d800bd92a1bbef737d48092a2b9f983f667a8ccd547bc348ac304fc92748c888" -> "sha256:3763c464c9bc0e6b01e9684d78783162211be4fe961cd6c14ba8f3044e4dc331" [label=""];
  "sha256:3763c464c9bc0e6b01e9684d78783162211be4fe961cd6c14ba8f3044e4dc331" -> "sha256:cb62d8122f08534b1ede78b8ba4554e6807344a8f6b3cc8eed00c802053f5742" [label=""];
  "sha256:d800bd92a1bbef737d48092a2b9f983f667a8ccd547bc348ac304fc92748c888" -> "sha256:cb62d8122f08534b1ede78b8ba4554e6807344a8f6b3cc8eed00c802053f5742" [label=""];
  "sha256:cb62d8122f08534b1ede78b8ba4554e6807344a8f6b3cc8eed00c802053f5742" -> "sha256:0db6f80dacc76d3cfa12b0ec0b6c14b262b7ef8ce1f23c118a9c7878a53f664b" [label=""];
  "sha256:0db6f80dacc76d3cfa12b0ec0b6c14b262b7ef8ce1f23c118a9c7878a53f664b" -> "sha256:e476776c780e5b39ee7b033b1bf88cd06d6bf67f7bf5884f09f5b34c08b28fd5" [label=""];
}

