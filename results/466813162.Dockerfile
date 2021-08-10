[app/sources/466813162.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:e299d11cb2d3570ed62331cd3c961ed356ed2a035ff692faec4988f42ec9d171" [label="/bin/sh -c apt-get -y update &&     apt-get -y install git wget python-dev python3-dev libopenmpi-dev                        python-pip libglib2.0-0                        libsm6 libxext6 libfontconfig1 libxrender1                        swig cmake libopenmpi-dev zlib1g-dev ffmpeg                        freeglut3-dev xvfb" shape="box"];
  "sha256:ed7d14a90dadc05fa8dd5bfd1a6077bd9ed823487a0ed99be03fafcbc9e1850c" [label="/bin/sh -c pip install virtualenv &&     virtualenv $VENV --python=python3 &&     . $VENV/bin/activate &&     mkdir $CODE_DIR &&     cd $CODE_DIR &&     pip install --upgrade pip &&     pip install tensorflow==1.8.0 &&     pip install pytest==3.5.1 &&     pip install pytest-cov &&     pip install pyyaml &&     pip install box2d-py==2.3.5 &&     pip install stable-baselines &&     pip install pybullet &&     pip install gym-minigrid &&     pip install optuna &&     pip install pytablewriter==0.36.0" shape="box"];
  "sha256:331967d321b09de928a8b3f468894db9e961990f0175c12d5749e074f44c00a5" [label="local://context" shape="ellipse"];
  "sha256:d786081d47b50dfaf815dcea2b2ad1420a7c0cd38be6a6f5222e8af000fcf399" [label="copy{src=/docker/entrypoint.sh, dest=/tmp/}" shape="note"];
  "sha256:b30dcee4cf4b3f8169af980d499cc63b1915c6ca1f2e4278e61a31e4c8e2d92c" [label="sha256:b30dcee4cf4b3f8169af980d499cc63b1915c6ca1f2e4278e61a31e4c8e2d92c" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:e299d11cb2d3570ed62331cd3c961ed356ed2a035ff692faec4988f42ec9d171" [label=""];
  "sha256:e299d11cb2d3570ed62331cd3c961ed356ed2a035ff692faec4988f42ec9d171" -> "sha256:ed7d14a90dadc05fa8dd5bfd1a6077bd9ed823487a0ed99be03fafcbc9e1850c" [label=""];
  "sha256:ed7d14a90dadc05fa8dd5bfd1a6077bd9ed823487a0ed99be03fafcbc9e1850c" -> "sha256:d786081d47b50dfaf815dcea2b2ad1420a7c0cd38be6a6f5222e8af000fcf399" [label=""];
  "sha256:331967d321b09de928a8b3f468894db9e961990f0175c12d5749e074f44c00a5" -> "sha256:d786081d47b50dfaf815dcea2b2ad1420a7c0cd38be6a6f5222e8af000fcf399" [label=""];
  "sha256:d786081d47b50dfaf815dcea2b2ad1420a7c0cd38be6a6f5222e8af000fcf399" -> "sha256:b30dcee4cf4b3f8169af980d499cc63b1915c6ca1f2e4278e61a31e4c8e2d92c" [label=""];
}

