[app/sources/363544697.Dockerfile]
digraph {
  "sha256:9347a5f5335f8b4d6d4fa8baa99d40027155f8a18a98eab77145ba107cf0d591" [label="docker-image://nvcr.io/nvidia/caffe:19.05-py2@sha256:d8ffb703ca419f705a0516abb571f9719caaa80296338454afe48141bd7b8c9b" shape="ellipse"];
  "sha256:5149bfd09e87ed58cef566fa15c6cbf282c516df34c8ad07f63bb395271f56ed" [label="/bin/sh -c apt-get update &&     apt-get install -y libsm6 libxext6 libxrender-dev" shape="box"];
  "sha256:0b50d53f1312cf8851daedbfca3d0cecddaf4702e5fed270a11d530c70246db8" [label="/bin/sh -c python -m pip install --no-cache-dir -U pip setuptools &&     python -m pip install --no-cache-dir pillow &&     python -m pip install --no-cache-dir h5py &&     python -m pip install --no-cache-dir ipython &&     python -m pip install --no-cache-dir jupyter &&     python -m pip install --no-cache-dir jupyterlab" shape="box"];
  "sha256:e3cb2c15e9ec08acabe7305ed4941b0c271cae2a67f1edca9a798e1ecd5aebfa" [label="/bin/sh -c python -m ipykernel install --display-name \"Python2 (NGC/NV Caffe19.05) on Backend.AI\" &&     cat /usr/local/share/jupyter/kernels/python2/kernel.json" shape="box"];
  "sha256:7ce35fda464cb1df897d48d9afa7b221118167692674118e8416ac1b65e6eece" [label="/bin/sh -c mkdir -p /tmp &&     chown root:root /tmp &&     chmod 1777 /tmp" shape="box"];
  "sha256:218a55f355d0868a32f708758d2fe048775ae9b5b40c7e20f5bc2408dbb05856" [label="/bin/sh -c mkdir -p /home/work/.jupyter/custom" shape="box"];
  "sha256:bcfd5c9636514bf229b208f6d7c5220e995058ed890f2fa3e146384961c19d31" [label="local://context" shape="ellipse"];
  "sha256:21759c8645e62cc42b83ff08e9008dcf155927e283733ad8d2cfd1127e9c44b2" [label="copy{src=/custom.css, dest=/home/work/.jupyter/custom/custom.css}" shape="note"];
  "sha256:d4b85a669a2193d94ff789e831ce84e9f44e1a7c4ffe3faef0184a40ea98f54f" [label="copy{src=/logo.svg, dest=/home/work/.jupyter/custom/logo.svg}" shape="note"];
  "sha256:ab7278ce789dfd265a888ea8cd91e0d6037ea3594b53f658e9c02fbe24badd4a" [label="copy{src=/policy.yml, dest=/etc/backend.ai/jail/policy.yml}" shape="note"];
  "sha256:c9ea23be0f5b5f2d7104379673076f6ced2d5824bcc4f7d45101c0f839275b19" [label="sha256:c9ea23be0f5b5f2d7104379673076f6ced2d5824bcc4f7d45101c0f839275b19" shape="plaintext"];
  "sha256:9347a5f5335f8b4d6d4fa8baa99d40027155f8a18a98eab77145ba107cf0d591" -> "sha256:5149bfd09e87ed58cef566fa15c6cbf282c516df34c8ad07f63bb395271f56ed" [label=""];
  "sha256:5149bfd09e87ed58cef566fa15c6cbf282c516df34c8ad07f63bb395271f56ed" -> "sha256:0b50d53f1312cf8851daedbfca3d0cecddaf4702e5fed270a11d530c70246db8" [label=""];
  "sha256:0b50d53f1312cf8851daedbfca3d0cecddaf4702e5fed270a11d530c70246db8" -> "sha256:e3cb2c15e9ec08acabe7305ed4941b0c271cae2a67f1edca9a798e1ecd5aebfa" [label=""];
  "sha256:e3cb2c15e9ec08acabe7305ed4941b0c271cae2a67f1edca9a798e1ecd5aebfa" -> "sha256:7ce35fda464cb1df897d48d9afa7b221118167692674118e8416ac1b65e6eece" [label=""];
  "sha256:7ce35fda464cb1df897d48d9afa7b221118167692674118e8416ac1b65e6eece" -> "sha256:218a55f355d0868a32f708758d2fe048775ae9b5b40c7e20f5bc2408dbb05856" [label=""];
  "sha256:218a55f355d0868a32f708758d2fe048775ae9b5b40c7e20f5bc2408dbb05856" -> "sha256:21759c8645e62cc42b83ff08e9008dcf155927e283733ad8d2cfd1127e9c44b2" [label=""];
  "sha256:bcfd5c9636514bf229b208f6d7c5220e995058ed890f2fa3e146384961c19d31" -> "sha256:21759c8645e62cc42b83ff08e9008dcf155927e283733ad8d2cfd1127e9c44b2" [label=""];
  "sha256:21759c8645e62cc42b83ff08e9008dcf155927e283733ad8d2cfd1127e9c44b2" -> "sha256:d4b85a669a2193d94ff789e831ce84e9f44e1a7c4ffe3faef0184a40ea98f54f" [label=""];
  "sha256:bcfd5c9636514bf229b208f6d7c5220e995058ed890f2fa3e146384961c19d31" -> "sha256:d4b85a669a2193d94ff789e831ce84e9f44e1a7c4ffe3faef0184a40ea98f54f" [label=""];
  "sha256:d4b85a669a2193d94ff789e831ce84e9f44e1a7c4ffe3faef0184a40ea98f54f" -> "sha256:ab7278ce789dfd265a888ea8cd91e0d6037ea3594b53f658e9c02fbe24badd4a" [label=""];
  "sha256:bcfd5c9636514bf229b208f6d7c5220e995058ed890f2fa3e146384961c19d31" -> "sha256:ab7278ce789dfd265a888ea8cd91e0d6037ea3594b53f658e9c02fbe24badd4a" [label=""];
  "sha256:ab7278ce789dfd265a888ea8cd91e0d6037ea3594b53f658e9c02fbe24badd4a" -> "sha256:c9ea23be0f5b5f2d7104379673076f6ced2d5824bcc4f7d45101c0f839275b19" [label=""];
}

