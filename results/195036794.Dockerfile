[app/sources/195036794.Dockerfile]
digraph {
  "sha256:9970a47437e9c186f750aede8e3fa98c5b8c4e5186ec93293570ddfb63e6e7c9" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:8b213e54338ae6a3ad035f06817732e3da11b6546a1531806408263ae8c8740c" [label="/bin/sh -c apt-get update && apt-get install -y         curl         libfreetype6-dev         libpng12-dev         libzmq3-dev         pkg-config         python-numpy         python-pip         python-scipy         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:77dd663e3aae9475c257e57dabd333a7d98ffd3205cc248bc0c0171f3b39b427" [label="/bin/sh -c curl -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:82ec5c70a4bbd5105344d94cd9aced9a085a54b204af6cfb61b8b321425266da" [label="/bin/sh -c pip --no-cache-dir install         ipykernel         jupyter         matplotlib         &&     python -m ipykernel.kernelspec" shape="box"];
  "sha256:013eac0206a3b151fa36d08b3420320cf3b44c63be7fc5b06ccad6ce96a12a72" [label="/bin/sh -c pip --no-cache-dir install     https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-${TENSORFLOW_VERSION}-cp27-none-linux_x86_64.whl" shape="box"];
  "sha256:2df963edebf20e89ce737c37b3dec641d12629aacf82a853af705d963745b358" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:dfed87e795407cd2f573f574d4672d18f29f121a6d59cc0b832e987feab1d0be" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:29c0bf1744cc3828a6f60624b68dc873cb7b86908e180c9f18937dc3c910c2d5" [label="mkdir{path=/root}" shape="note"];
  "sha256:e5d2d637d6f46a60727a70d351782f39e0737169bbc571f7ae0241195239e3a8" [label="sha256:e5d2d637d6f46a60727a70d351782f39e0737169bbc571f7ae0241195239e3a8" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:8b213e54338ae6a3ad035f06817732e3da11b6546a1531806408263ae8c8740c" [label=""];
  "sha256:8b213e54338ae6a3ad035f06817732e3da11b6546a1531806408263ae8c8740c" -> "sha256:77dd663e3aae9475c257e57dabd333a7d98ffd3205cc248bc0c0171f3b39b427" [label=""];
  "sha256:77dd663e3aae9475c257e57dabd333a7d98ffd3205cc248bc0c0171f3b39b427" -> "sha256:82ec5c70a4bbd5105344d94cd9aced9a085a54b204af6cfb61b8b321425266da" [label=""];
  "sha256:82ec5c70a4bbd5105344d94cd9aced9a085a54b204af6cfb61b8b321425266da" -> "sha256:013eac0206a3b151fa36d08b3420320cf3b44c63be7fc5b06ccad6ce96a12a72" [label=""];
  "sha256:013eac0206a3b151fa36d08b3420320cf3b44c63be7fc5b06ccad6ce96a12a72" -> "sha256:2df963edebf20e89ce737c37b3dec641d12629aacf82a853af705d963745b358" [label=""];
  "sha256:9970a47437e9c186f750aede8e3fa98c5b8c4e5186ec93293570ddfb63e6e7c9" -> "sha256:2df963edebf20e89ce737c37b3dec641d12629aacf82a853af705d963745b358" [label=""];
  "sha256:2df963edebf20e89ce737c37b3dec641d12629aacf82a853af705d963745b358" -> "sha256:dfed87e795407cd2f573f574d4672d18f29f121a6d59cc0b832e987feab1d0be" [label=""];
  "sha256:9970a47437e9c186f750aede8e3fa98c5b8c4e5186ec93293570ddfb63e6e7c9" -> "sha256:dfed87e795407cd2f573f574d4672d18f29f121a6d59cc0b832e987feab1d0be" [label=""];
  "sha256:dfed87e795407cd2f573f574d4672d18f29f121a6d59cc0b832e987feab1d0be" -> "sha256:29c0bf1744cc3828a6f60624b68dc873cb7b86908e180c9f18937dc3c910c2d5" [label=""];
  "sha256:29c0bf1744cc3828a6f60624b68dc873cb7b86908e180c9f18937dc3c910c2d5" -> "sha256:e5d2d637d6f46a60727a70d351782f39e0737169bbc571f7ae0241195239e3a8" [label=""];
}

