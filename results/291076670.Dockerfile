[app/sources/291076670.Dockerfile]
digraph {
  "sha256:ff2d829578df896d7ee18bcbf19945ef0991e2328c2e2be014aa8810241db7e5" [label="local://context" shape="ellipse"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:c69c2f9451131fd2dd2c19e4ae229ead0a12942d60f239335df26290a170574c" [label="/bin/sh -c apt-get update &&     apt-get install libgl1-mesa-glx -y" shape="box"];
  "sha256:ea48b45f44f3dc80cc57d058e247f2293ec40805175174a7c81fc4016308e80a" [label="/bin/sh -c apt-get install -y eatmydata" shape="box"];
  "sha256:f0509d72f889b625b50c25a0e57265f637f8bd2ab8f3e6a100becc7f47df95c8" [label="/bin/sh -c eatmydata apt-get install -y wget bzip2 ca-certificates     git     swig     mpich     pkg-config     gcc     wget     curl     vim     nano" shape="box"];
  "sha256:8c51eb7c60a9ce6446f292d3afad2040e29efeb60222414906d9e004fd222711" [label="/bin/sh -c echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh &&     wget --quiet https://repo.continuum.io/archive/Anaconda3-4.4.0-Linux-x86_64.sh -O ~/anaconda.sh &&     /bin/bash ~/anaconda.sh -b -p /opt/conda &&     rm ~/anaconda.sh" shape="box"];
  "sha256:a7f78548fd5b71916800b46298bc2ff6e05f59d466ab3885cefb44100590a55b" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:c205a805a98721cec7b13a347ff97c938bc3c1cef3f871bdddc23a8d1a4f71dd" [label="/bin/sh -c pip install --upgrade nose sphinx numpy scipy pandas matplotlib numba supereeg" shape="box"];
  "sha256:27b400d89df5b4bcac5c0661df19b732eb6eec6c3b13803d6ec5a3eb3d7a71fa" [label="/bin/sh -c pip install --upgrade --ignore-installed seaborn hypertools" shape="box"];
  "sha256:3283ccd073cac53b073f718a2d1a3b88985442317f50b6ba0945994d01b40fa9" [label="/bin/sh -c conda install scikit-learn" shape="box"];
  "sha256:f7189f092cc7b31dcf5d151e71489396949c86dd2c631efddc5d4a64e7c05d49" [label="copy{src=/data, dest=/data}" shape="note"];
  "sha256:87987fe32adf0271dea629fc08f18b832dff93cc11cc5c5fb28f3eb790fba4e4" [label="copy{src=/notebooks, dest=/notebooks}" shape="note"];
  "sha256:2799d1aa2c797fcd99101b211e3a311d435b6956b0d9cb7e3aeebc86bda9d3f4" [label="sha256:2799d1aa2c797fcd99101b211e3a311d435b6956b0d9cb7e3aeebc86bda9d3f4" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:c69c2f9451131fd2dd2c19e4ae229ead0a12942d60f239335df26290a170574c" [label=""];
  "sha256:c69c2f9451131fd2dd2c19e4ae229ead0a12942d60f239335df26290a170574c" -> "sha256:ea48b45f44f3dc80cc57d058e247f2293ec40805175174a7c81fc4016308e80a" [label=""];
  "sha256:ea48b45f44f3dc80cc57d058e247f2293ec40805175174a7c81fc4016308e80a" -> "sha256:f0509d72f889b625b50c25a0e57265f637f8bd2ab8f3e6a100becc7f47df95c8" [label=""];
  "sha256:f0509d72f889b625b50c25a0e57265f637f8bd2ab8f3e6a100becc7f47df95c8" -> "sha256:8c51eb7c60a9ce6446f292d3afad2040e29efeb60222414906d9e004fd222711" [label=""];
  "sha256:8c51eb7c60a9ce6446f292d3afad2040e29efeb60222414906d9e004fd222711" -> "sha256:a7f78548fd5b71916800b46298bc2ff6e05f59d466ab3885cefb44100590a55b" [label=""];
  "sha256:a7f78548fd5b71916800b46298bc2ff6e05f59d466ab3885cefb44100590a55b" -> "sha256:c205a805a98721cec7b13a347ff97c938bc3c1cef3f871bdddc23a8d1a4f71dd" [label=""];
  "sha256:c205a805a98721cec7b13a347ff97c938bc3c1cef3f871bdddc23a8d1a4f71dd" -> "sha256:27b400d89df5b4bcac5c0661df19b732eb6eec6c3b13803d6ec5a3eb3d7a71fa" [label=""];
  "sha256:27b400d89df5b4bcac5c0661df19b732eb6eec6c3b13803d6ec5a3eb3d7a71fa" -> "sha256:3283ccd073cac53b073f718a2d1a3b88985442317f50b6ba0945994d01b40fa9" [label=""];
  "sha256:3283ccd073cac53b073f718a2d1a3b88985442317f50b6ba0945994d01b40fa9" -> "sha256:f7189f092cc7b31dcf5d151e71489396949c86dd2c631efddc5d4a64e7c05d49" [label=""];
  "sha256:ff2d829578df896d7ee18bcbf19945ef0991e2328c2e2be014aa8810241db7e5" -> "sha256:f7189f092cc7b31dcf5d151e71489396949c86dd2c631efddc5d4a64e7c05d49" [label=""];
  "sha256:f7189f092cc7b31dcf5d151e71489396949c86dd2c631efddc5d4a64e7c05d49" -> "sha256:87987fe32adf0271dea629fc08f18b832dff93cc11cc5c5fb28f3eb790fba4e4" [label=""];
  "sha256:ff2d829578df896d7ee18bcbf19945ef0991e2328c2e2be014aa8810241db7e5" -> "sha256:87987fe32adf0271dea629fc08f18b832dff93cc11cc5c5fb28f3eb790fba4e4" [label=""];
  "sha256:87987fe32adf0271dea629fc08f18b832dff93cc11cc5c5fb28f3eb790fba4e4" -> "sha256:2799d1aa2c797fcd99101b211e3a311d435b6956b0d9cb7e3aeebc86bda9d3f4" [label=""];
}

