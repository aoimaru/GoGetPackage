[app/sources/258892330.Dockerfile]
digraph {
  "sha256:28b12acb68da3951d090b990196f9b6ca90492682c41e58d4cefa9d0547fa27a" [label="docker-image://gcr.io/tensorflow/tensorflow:latest-gpu" shape="ellipse"];
  "sha256:bff7445c71f18041882b2d8d7a18782700388464c4d0e5d1f44eb1324df7ea45" [label="/bin/sh -c apt-get update --fix-missing && apt-get install -y     ffmpeg     git     vim     wget" shape="box"];
  "sha256:d793078d9db5b705ad5fa5889f30eb2d41ee1cec9638158d79b0c7f11760d359" [label="/bin/sh -c apt-get update --fix-missing && apt-get install -y     libglib2.0-0     libsm6     libxext6     libxrender1" shape="box"];
  "sha256:e32ced5b4fc092d786e75d928a4bf57da4aa102ca849c9e0541a4a95bb2f39b8" [label="/bin/sh -c echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh &&     wget --quiet https://repo.continuum.io/archive/Anaconda3-4.3.1-Linux-x86_64.sh -O ~/anaconda.sh &&     /bin/bash ~/anaconda.sh -b -p /opt/conda &&     rm ~/anaconda.sh" shape="box"];
  "sha256:dada3517c8f01ede3173f869830027653cba85b48e717ff526b6d7e28a0f2916" [label="/bin/sh -c pip install --upgrade         pip &&     pip install         bcolz         gensim         keras==1.2.2         keras_tqdm         tensorflow-gpu         xgboost" shape="box"];
  "sha256:a815fafeb2ae3fc162f1afc2406fc12fc0ade8f14b61072c4ae0014c75134ac1" [label="/bin/sh -c conda install -y pytorch torchvision cuda80 -c soumith" shape="box"];
  "sha256:f1e575c875fbadb4155981e130cf263b31ce3e159e9c9048e037a93af419114a" [label="/bin/sh -c CC=\"cc -mavx2\" pip install -U --force-reinstall pillow-simd" shape="box"];
  "sha256:0ed4783d408db0aed0832eb53a157f3fde11b0b2bedf59d92aa6e71661edd82c" [label="/bin/sh -c conda install -y notebook &&     conda install -y -c conda-forge jupyter_contrib_nbextensions &&     jupyter nbextensions_configurator enable --user" shape="box"];
  "sha256:f083862fba7b896b1c922dffa84daadca6a2afdc2a493f5d4092c389c0ddc19b" [label="local://context" shape="ellipse"];
  "sha256:0a09a0f68230f6a697bf29ded968cf6fa24dbc4c152d079ca4806409a2fe4237" [label="copy{src=/.jupyter, dest=/root/.jupyter}" shape="note"];
  "sha256:7f464e55ced05a3a734f78c83336dd2ba98733e4d7b8fad76e065e482b70fbc2" [label="/bin/sh -c conda install -y -c conda-forge ipywidgets" shape="box"];
  "sha256:c810082fc4f70430e05624793ccf5c11c051153be6e699bf952116327d7b26df" [label="/bin/sh -c apt-get update --fix-missing && apt-get install -y     libcv-dev     libopencv-dev" shape="box"];
  "sha256:bd144241ef9ee441deb8182a4758a4cb4db9b6ca589fdeb9bedc908198221464" [label="copy{src=/.vimrc, dest=/root/.vimrc}" shape="note"];
  "sha256:28e7554b66546c9b7d1978eef7635eb7fc143aa9e9b2aac49ccb85e0d1d9061d" [label="copy{src=/.vim, dest=/root/.vim}" shape="note"];
  "sha256:ca9b5b6aec4173ceadaf4b584cddccb3d28376ea0514e392f0dbba6fcdf1e609" [label="copy{src=/.bashrc, dest=/root/.bashrc}" shape="note"];
  "sha256:e093a4b5557a673e42d961df853ba836683ff42368e092ec6607e1de4fb48e5b" [label="mkdir{path=/nbs}" shape="note"];
  "sha256:350392283e6d5a1d3486b99f24534f6d86737526feb1479314a669bbf9c2cb6e" [label="sha256:350392283e6d5a1d3486b99f24534f6d86737526feb1479314a669bbf9c2cb6e" shape="plaintext"];
  "sha256:28b12acb68da3951d090b990196f9b6ca90492682c41e58d4cefa9d0547fa27a" -> "sha256:bff7445c71f18041882b2d8d7a18782700388464c4d0e5d1f44eb1324df7ea45" [label=""];
  "sha256:bff7445c71f18041882b2d8d7a18782700388464c4d0e5d1f44eb1324df7ea45" -> "sha256:d793078d9db5b705ad5fa5889f30eb2d41ee1cec9638158d79b0c7f11760d359" [label=""];
  "sha256:d793078d9db5b705ad5fa5889f30eb2d41ee1cec9638158d79b0c7f11760d359" -> "sha256:e32ced5b4fc092d786e75d928a4bf57da4aa102ca849c9e0541a4a95bb2f39b8" [label=""];
  "sha256:e32ced5b4fc092d786e75d928a4bf57da4aa102ca849c9e0541a4a95bb2f39b8" -> "sha256:dada3517c8f01ede3173f869830027653cba85b48e717ff526b6d7e28a0f2916" [label=""];
  "sha256:dada3517c8f01ede3173f869830027653cba85b48e717ff526b6d7e28a0f2916" -> "sha256:a815fafeb2ae3fc162f1afc2406fc12fc0ade8f14b61072c4ae0014c75134ac1" [label=""];
  "sha256:a815fafeb2ae3fc162f1afc2406fc12fc0ade8f14b61072c4ae0014c75134ac1" -> "sha256:f1e575c875fbadb4155981e130cf263b31ce3e159e9c9048e037a93af419114a" [label=""];
  "sha256:f1e575c875fbadb4155981e130cf263b31ce3e159e9c9048e037a93af419114a" -> "sha256:0ed4783d408db0aed0832eb53a157f3fde11b0b2bedf59d92aa6e71661edd82c" [label=""];
  "sha256:0ed4783d408db0aed0832eb53a157f3fde11b0b2bedf59d92aa6e71661edd82c" -> "sha256:0a09a0f68230f6a697bf29ded968cf6fa24dbc4c152d079ca4806409a2fe4237" [label=""];
  "sha256:f083862fba7b896b1c922dffa84daadca6a2afdc2a493f5d4092c389c0ddc19b" -> "sha256:0a09a0f68230f6a697bf29ded968cf6fa24dbc4c152d079ca4806409a2fe4237" [label=""];
  "sha256:0a09a0f68230f6a697bf29ded968cf6fa24dbc4c152d079ca4806409a2fe4237" -> "sha256:7f464e55ced05a3a734f78c83336dd2ba98733e4d7b8fad76e065e482b70fbc2" [label=""];
  "sha256:7f464e55ced05a3a734f78c83336dd2ba98733e4d7b8fad76e065e482b70fbc2" -> "sha256:c810082fc4f70430e05624793ccf5c11c051153be6e699bf952116327d7b26df" [label=""];
  "sha256:c810082fc4f70430e05624793ccf5c11c051153be6e699bf952116327d7b26df" -> "sha256:bd144241ef9ee441deb8182a4758a4cb4db9b6ca589fdeb9bedc908198221464" [label=""];
  "sha256:f083862fba7b896b1c922dffa84daadca6a2afdc2a493f5d4092c389c0ddc19b" -> "sha256:bd144241ef9ee441deb8182a4758a4cb4db9b6ca589fdeb9bedc908198221464" [label=""];
  "sha256:bd144241ef9ee441deb8182a4758a4cb4db9b6ca589fdeb9bedc908198221464" -> "sha256:28e7554b66546c9b7d1978eef7635eb7fc143aa9e9b2aac49ccb85e0d1d9061d" [label=""];
  "sha256:f083862fba7b896b1c922dffa84daadca6a2afdc2a493f5d4092c389c0ddc19b" -> "sha256:28e7554b66546c9b7d1978eef7635eb7fc143aa9e9b2aac49ccb85e0d1d9061d" [label=""];
  "sha256:28e7554b66546c9b7d1978eef7635eb7fc143aa9e9b2aac49ccb85e0d1d9061d" -> "sha256:ca9b5b6aec4173ceadaf4b584cddccb3d28376ea0514e392f0dbba6fcdf1e609" [label=""];
  "sha256:f083862fba7b896b1c922dffa84daadca6a2afdc2a493f5d4092c389c0ddc19b" -> "sha256:ca9b5b6aec4173ceadaf4b584cddccb3d28376ea0514e392f0dbba6fcdf1e609" [label=""];
  "sha256:ca9b5b6aec4173ceadaf4b584cddccb3d28376ea0514e392f0dbba6fcdf1e609" -> "sha256:e093a4b5557a673e42d961df853ba836683ff42368e092ec6607e1de4fb48e5b" [label=""];
  "sha256:e093a4b5557a673e42d961df853ba836683ff42368e092ec6607e1de4fb48e5b" -> "sha256:350392283e6d5a1d3486b99f24534f6d86737526feb1479314a669bbf9c2cb6e" [label=""];
}

