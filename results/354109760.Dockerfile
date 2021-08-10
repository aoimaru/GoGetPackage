[app/sources/354109760.Dockerfile]
digraph {
  "sha256:0c7b44ad871533a6da2fb59a3bea1f2d2202fdc6ac47e5b2cb5b4daf28750d31" [label="docker-image://docker.io/continuumio/anaconda3:latest@sha256:1d441b875dffd5d1d76b6c7f5ec3b4988ca9832a1587148bff6779e413f78370" shape="ellipse"];
  "sha256:4826d4cfbc65b2ebe1df6a49c59ed443899a6262dbb69f2670b11dd95261c868" [label="/bin/sh -c apt-get update  && apt-get upgrade -y  && echo \"en_US.UTF-8 UTF-8\" > /etc/locale.gen  && apt-get install -y locales  && update-locale LANG=en_US.UTF-8" shape="box"];
  "sha256:50c00a38b44203c4539651bb512fb71399e905ef4082ad75db26200824ba7033" [label="/bin/sh -c apt-get install -y       build-essential       graphviz       nano       pandoc       tmux       unzip       vim  && apt-get clean" shape="box"];
  "sha256:c495a1751fad10eed4142d1723900997db27cc5d46ace84fa2259c23fd5ffee9" [label="/bin/sh -c conda update -y conda  && conda update -y anaconda  && conda install -y -c conda-forge       netcdf4  && conda install -y       cvxopt       distributed       ipyparallel       xarray  && conda clean -y --all" shape="box"];
  "sha256:cb4428d4e99502f3772c25bd9f559025ef66fb6571d716af0a59cc4d2dc745d5" [label="/bin/sh -c pip install --no-cache-dir       arch       deap       graphviz       hmmlearn       keras       pykalman       pymc3       pywavelets       tensorflow" shape="box"];
  "sha256:dfe1ac03a5864340284cc92d7152313a57ca05e9e80b62c8aa0605dbaf6e457d" [label="/bin/sh -c find /opt/conda -not -perm -o=r | xargs chmod o+r  && rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:1cc62296894d2fb05cd04ba1e2b03b28a69c6d878324f35c89fcde05c37c96aa" [label="sha256:1cc62296894d2fb05cd04ba1e2b03b28a69c6d878324f35c89fcde05c37c96aa" shape="plaintext"];
  "sha256:0c7b44ad871533a6da2fb59a3bea1f2d2202fdc6ac47e5b2cb5b4daf28750d31" -> "sha256:4826d4cfbc65b2ebe1df6a49c59ed443899a6262dbb69f2670b11dd95261c868" [label=""];
  "sha256:4826d4cfbc65b2ebe1df6a49c59ed443899a6262dbb69f2670b11dd95261c868" -> "sha256:50c00a38b44203c4539651bb512fb71399e905ef4082ad75db26200824ba7033" [label=""];
  "sha256:50c00a38b44203c4539651bb512fb71399e905ef4082ad75db26200824ba7033" -> "sha256:c495a1751fad10eed4142d1723900997db27cc5d46ace84fa2259c23fd5ffee9" [label=""];
  "sha256:c495a1751fad10eed4142d1723900997db27cc5d46ace84fa2259c23fd5ffee9" -> "sha256:cb4428d4e99502f3772c25bd9f559025ef66fb6571d716af0a59cc4d2dc745d5" [label=""];
  "sha256:cb4428d4e99502f3772c25bd9f559025ef66fb6571d716af0a59cc4d2dc745d5" -> "sha256:dfe1ac03a5864340284cc92d7152313a57ca05e9e80b62c8aa0605dbaf6e457d" [label=""];
  "sha256:dfe1ac03a5864340284cc92d7152313a57ca05e9e80b62c8aa0605dbaf6e457d" -> "sha256:1cc62296894d2fb05cd04ba1e2b03b28a69c6d878324f35c89fcde05c37c96aa" [label=""];
}

