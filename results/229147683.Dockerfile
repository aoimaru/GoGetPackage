[app/sources/229147683.Dockerfile]
digraph {
  "sha256:f343b6ac846b1bec1f0cc32ec43cf2fd81a2a8c45a05c09f62b57769bc9b2c79" [label="docker-image://docker.io/floydhub/tensorflow:1.13.0-gpu.cuda9cudnn7-py2_aws.42" shape="ellipse"];
  "sha256:77d7329af82165c2e0f5ff527e3c36e134fa796e81e0ff88df3e5055ffa095b0" [label="/bin/sh -c pip --no-cache-dir install --upgrade         http://download.pytorch.org/whl/cu92/torch-0.4.1-cp27-cp27mu-linux_x86_64.whl         torchvision==0.2.1         torchtext         tensorboardX==1.2     && rm -rf /tmp/*     && rm -rf /root/.cache" shape="box"];
  "sha256:558b4b397b9afae34c32f578e9e13c2b3d359f711c814c443b2fe27644e4ce3f" [label="sha256:558b4b397b9afae34c32f578e9e13c2b3d359f711c814c443b2fe27644e4ce3f" shape="plaintext"];
  "sha256:f343b6ac846b1bec1f0cc32ec43cf2fd81a2a8c45a05c09f62b57769bc9b2c79" -> "sha256:77d7329af82165c2e0f5ff527e3c36e134fa796e81e0ff88df3e5055ffa095b0" [label=""];
  "sha256:77d7329af82165c2e0f5ff527e3c36e134fa796e81e0ff88df3e5055ffa095b0" -> "sha256:558b4b397b9afae34c32f578e9e13c2b3d359f711c814c443b2fe27644e4ce3f" [label=""];
}

