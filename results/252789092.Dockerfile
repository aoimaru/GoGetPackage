[app/sources/252789092.Dockerfile]
digraph {
  "sha256:d68add3e901d8c8997655ec177862d3bee16e9bc9b95b973d16b1c60e402d5e2" [label="docker-image://docker.io/dsdgroup/jupyter:gpu-cuda-8.0" shape="ellipse"];
  "sha256:2a87ff4d90347020c37380941a9c5d414c29403b2008d987a738eceef260177c" [label="/bin/sh -c apt-get update && apt-get install -y python-nose" shape="box"];
  "sha256:600eede2b600cf3537e8fb30dcda55a449f67787d9c11c53e215b6057ec89a26" [label="/bin/sh -c pip install --upgrade --no-deps git+git://github.com/Theano/Theano.git" shape="box"];
  "sha256:d22b56d6e52c166a722abc92523a2097d940f32fef0011d8698ac84a452f5644" [label="/bin/sh -c echo \"[global]\" > /root/.theanorc && echo \"device=gpu\" >> /root/.theanorc && echo \"floatX=float64\" >> /root/.theanorc && echo \"optimizer_including=cudnn\" >> /root/.theanorc && echo \"[lib]\" >> /root/.theanorc && echo \"cnmem=0.1\" >> /root/.theanorc && echo \"[nvcc]\" >> /root/.theanorc && echo \"fastmath=True\" >> /root/.theanorc" shape="box"];
  "sha256:9d157b28ae1d85eaa07b8123336d4ba7247d08125a762bbc412e7c9e0bfe07ca" [label="sha256:9d157b28ae1d85eaa07b8123336d4ba7247d08125a762bbc412e7c9e0bfe07ca" shape="plaintext"];
  "sha256:d68add3e901d8c8997655ec177862d3bee16e9bc9b95b973d16b1c60e402d5e2" -> "sha256:2a87ff4d90347020c37380941a9c5d414c29403b2008d987a738eceef260177c" [label=""];
  "sha256:2a87ff4d90347020c37380941a9c5d414c29403b2008d987a738eceef260177c" -> "sha256:600eede2b600cf3537e8fb30dcda55a449f67787d9c11c53e215b6057ec89a26" [label=""];
  "sha256:600eede2b600cf3537e8fb30dcda55a449f67787d9c11c53e215b6057ec89a26" -> "sha256:d22b56d6e52c166a722abc92523a2097d940f32fef0011d8698ac84a452f5644" [label=""];
  "sha256:d22b56d6e52c166a722abc92523a2097d940f32fef0011d8698ac84a452f5644" -> "sha256:9d157b28ae1d85eaa07b8123336d4ba7247d08125a762bbc412e7c9e0bfe07ca" [label=""];
}

