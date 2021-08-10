[app/sources/300910940.Dockerfile]
digraph {
  "sha256:b693b18a2ff59143b3205172b19acedf26caba184f3326dce979f4d962bee06b" [label="docker-image://docker.io/continuumio/miniconda3:4.6.14" shape="ellipse"];
  "sha256:5b7360a6c480b05c7769c76c6d245211728075ded586bd1fe7a82ea1a22658f9" [label="/bin/sh -c apt-get update --fix-missing && apt-get install -y     vim openssh-client openssh-server htop net-tools iputils-ping xz-utils     screen ngrep ca-cacert     mercurial subversion     build-essential cmake lsb-core cpio mesa-common-dev     libglib2.0-0 libxext6 libsm6 libxrender1 dos2unix     --no-install-recommends &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f9df1916fc62af904a814eac9ce4df5d0f4bd26e4686a14e643308314b9be2c2" [label="/bin/sh -c conda config --set channel_priority strict" shape="box"];
  "sha256:64774f3f75f2ddf5a980d5818017043e2f872e57f6733cf7f580f5dfdf3174c6" [label="/bin/sh -c conda install -y -c conda-forge nodejs scikit-learn=0.20.2     pymongo tqdm pandas matplotlib &&     conda clean --all -y" shape="box"];
  "sha256:4aa5a374046cca13d5472cddce546f6214a92aaf4d94644597da0484791c818f" [label="/bin/sh -c npm install -g pm2 --silent --progress=false" shape="box"];
  "sha256:891f909fe6fd8e031862191fcc0fd8aa7c6986220d60d204a8909bb35ecfb9ab" [label="sha256:891f909fe6fd8e031862191fcc0fd8aa7c6986220d60d204a8909bb35ecfb9ab" shape="plaintext"];
  "sha256:b693b18a2ff59143b3205172b19acedf26caba184f3326dce979f4d962bee06b" -> "sha256:5b7360a6c480b05c7769c76c6d245211728075ded586bd1fe7a82ea1a22658f9" [label=""];
  "sha256:5b7360a6c480b05c7769c76c6d245211728075ded586bd1fe7a82ea1a22658f9" -> "sha256:f9df1916fc62af904a814eac9ce4df5d0f4bd26e4686a14e643308314b9be2c2" [label=""];
  "sha256:f9df1916fc62af904a814eac9ce4df5d0f4bd26e4686a14e643308314b9be2c2" -> "sha256:64774f3f75f2ddf5a980d5818017043e2f872e57f6733cf7f580f5dfdf3174c6" [label=""];
  "sha256:64774f3f75f2ddf5a980d5818017043e2f872e57f6733cf7f580f5dfdf3174c6" -> "sha256:4aa5a374046cca13d5472cddce546f6214a92aaf4d94644597da0484791c818f" [label=""];
  "sha256:4aa5a374046cca13d5472cddce546f6214a92aaf4d94644597da0484791c818f" -> "sha256:891f909fe6fd8e031862191fcc0fd8aa7c6986220d60d204a8909bb35ecfb9ab" [label=""];
}

