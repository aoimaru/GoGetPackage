[app/sources/192483152.Dockerfile]
digraph {
  "sha256:ca687d8b0ee1cd3950e45a640604853d2f6c502990a65b770492ebed79871d88" [label="docker-image://docker.io/stackbrew/ubuntu:14.04" shape="ellipse"];
  "sha256:84bc35f4e2661014585fae6810ba2b7ece6e73aca411d05e95919d6b61c9af8f" [label="/bin/sh -c apt-get update && apt-get install -y     libpython2.7-dev     libyaml-dev     python2.7     python-pip" shape="box"];
  "sha256:09ac5c4117fbe6c4162659070295e0989d0ea13bc3ccc516f90a25b9de79497a" [label="mkdir{path=/conductor}" shape="note"];
  "sha256:2efb1ff2a6832303386a455838aadb28d7e1320f027aff4b22855bcd3029a6d3" [label="local://context" shape="ellipse"];
  "sha256:6cf5daca96964d72c0e23580911aac21bf3204c87843075722731056fe12aca9" [label="copy{src=/requirements.txt, dest=/conductor/requirements.txt}" shape="note"];
  "sha256:0a17b9ac502a7da1d255a782701e2e9f9ce3ac7972c6a2d525cfdd70d86b846a" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:ceb0a809aaa197b50457df6f9b3849af1a8918b085815eb6b109fa7b339a0348" [label="copy{src=/docker/entrypoint.sh, dest=/usr/local/bin/entrypoint}" shape="note"];
  "sha256:8a84a5cee8c86aaaae0f6a36529966ac688d2f326b46b271ae8dd9b4c0a14a6a" [label="copy{src=/, dest=/conductor}" shape="note"];
  "sha256:c8b880e73090b9c3d492c2f538efe07dfc08117894cd682d25edb02eb4ae69ba" [label="sha256:c8b880e73090b9c3d492c2f538efe07dfc08117894cd682d25edb02eb4ae69ba" shape="plaintext"];
  "sha256:ca687d8b0ee1cd3950e45a640604853d2f6c502990a65b770492ebed79871d88" -> "sha256:84bc35f4e2661014585fae6810ba2b7ece6e73aca411d05e95919d6b61c9af8f" [label=""];
  "sha256:84bc35f4e2661014585fae6810ba2b7ece6e73aca411d05e95919d6b61c9af8f" -> "sha256:09ac5c4117fbe6c4162659070295e0989d0ea13bc3ccc516f90a25b9de79497a" [label=""];
  "sha256:09ac5c4117fbe6c4162659070295e0989d0ea13bc3ccc516f90a25b9de79497a" -> "sha256:6cf5daca96964d72c0e23580911aac21bf3204c87843075722731056fe12aca9" [label=""];
  "sha256:2efb1ff2a6832303386a455838aadb28d7e1320f027aff4b22855bcd3029a6d3" -> "sha256:6cf5daca96964d72c0e23580911aac21bf3204c87843075722731056fe12aca9" [label=""];
  "sha256:6cf5daca96964d72c0e23580911aac21bf3204c87843075722731056fe12aca9" -> "sha256:0a17b9ac502a7da1d255a782701e2e9f9ce3ac7972c6a2d525cfdd70d86b846a" [label=""];
  "sha256:0a17b9ac502a7da1d255a782701e2e9f9ce3ac7972c6a2d525cfdd70d86b846a" -> "sha256:ceb0a809aaa197b50457df6f9b3849af1a8918b085815eb6b109fa7b339a0348" [label=""];
  "sha256:2efb1ff2a6832303386a455838aadb28d7e1320f027aff4b22855bcd3029a6d3" -> "sha256:ceb0a809aaa197b50457df6f9b3849af1a8918b085815eb6b109fa7b339a0348" [label=""];
  "sha256:ceb0a809aaa197b50457df6f9b3849af1a8918b085815eb6b109fa7b339a0348" -> "sha256:8a84a5cee8c86aaaae0f6a36529966ac688d2f326b46b271ae8dd9b4c0a14a6a" [label=""];
  "sha256:2efb1ff2a6832303386a455838aadb28d7e1320f027aff4b22855bcd3029a6d3" -> "sha256:8a84a5cee8c86aaaae0f6a36529966ac688d2f326b46b271ae8dd9b4c0a14a6a" [label=""];
  "sha256:8a84a5cee8c86aaaae0f6a36529966ac688d2f326b46b271ae8dd9b4c0a14a6a" -> "sha256:c8b880e73090b9c3d492c2f538efe07dfc08117894cd682d25edb02eb4ae69ba" [label=""];
}

