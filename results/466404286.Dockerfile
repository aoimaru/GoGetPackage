[app/sources/466404286.Dockerfile]
digraph {
  "sha256:ac9f8e8fa4330b636f7338d83dc46893393901c302bcd119500ce0ee4fac63d9" [label="docker-image://docker.io/floydhub/pytorch:0.4.1-gpu.cuda9cudnn7-py3.34" shape="ellipse"];
  "sha256:9f15c45582254d9dbe150a2612a2df8bb1d1410c29716c7203e94a6ea772711b" [label="/bin/sh -c pip3 install --upgrade pip &&    pip3 install     pycocotools==2.0.0    torchsummary    scikit-optimize    pretrainedmodels    pytorch-argus==0.0.5    cffi    tqdm    shapely" shape="box"];
  "sha256:b64d9c3e0b57d665184f4180c1e24eced4f8aaee2651b12998748a52741e6ebd" [label="mkdir{path=/workdir}" shape="note"];
  "sha256:28c805f75ebcb9f9332113a1162ad978ed713be68e148027a565d98d4754611c" [label="sha256:28c805f75ebcb9f9332113a1162ad978ed713be68e148027a565d98d4754611c" shape="plaintext"];
  "sha256:ac9f8e8fa4330b636f7338d83dc46893393901c302bcd119500ce0ee4fac63d9" -> "sha256:9f15c45582254d9dbe150a2612a2df8bb1d1410c29716c7203e94a6ea772711b" [label=""];
  "sha256:9f15c45582254d9dbe150a2612a2df8bb1d1410c29716c7203e94a6ea772711b" -> "sha256:b64d9c3e0b57d665184f4180c1e24eced4f8aaee2651b12998748a52741e6ebd" [label=""];
  "sha256:b64d9c3e0b57d665184f4180c1e24eced4f8aaee2651b12998748a52741e6ebd" -> "sha256:28c805f75ebcb9f9332113a1162ad978ed713be68e148027a565d98d4754611c" [label=""];
}

