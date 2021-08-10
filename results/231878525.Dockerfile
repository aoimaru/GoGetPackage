[app/sources/231878525.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:93ab00bde3a90979d459de8789cedd6c26490ebda0886cc36d0389eb67c68970" [label="local://context" shape="ellipse"];
  "sha256:70c541a942cafd15a07c1b3828413aff52b789a366081e0f941bd153acf37e3f" [label="copy{src=/dist, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:b7dc9a0b7ce119052a31bcf06225eabe1dc9eb397b54249c7920775b3d47862e" [label="sha256:b7dc9a0b7ce119052a31bcf06225eabe1dc9eb397b54249c7920775b3d47862e" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:70c541a942cafd15a07c1b3828413aff52b789a366081e0f941bd153acf37e3f" [label=""];
  "sha256:93ab00bde3a90979d459de8789cedd6c26490ebda0886cc36d0389eb67c68970" -> "sha256:70c541a942cafd15a07c1b3828413aff52b789a366081e0f941bd153acf37e3f" [label=""];
  "sha256:70c541a942cafd15a07c1b3828413aff52b789a366081e0f941bd153acf37e3f" -> "sha256:b7dc9a0b7ce119052a31bcf06225eabe1dc9eb397b54249c7920775b3d47862e" [label=""];
}

