[app/sources/260676060.Dockerfile]
digraph {
  "sha256:8c87c15c33b20c1cf96c836ae621732de00e046c098f5f150aca35fa104e1de8" [label="https://api.github.com/repos/szilard/GBM-perf/git/refs/heads/master" shape="ellipse"];
  "sha256:85c653c08c80ce93deabc91ad435bedc7b73777d13b8446fec20e2c146f3d35d" [label="docker-image://docker.io/rocker/tidyverse:latest" shape="ellipse"];
  "sha256:f668c29da75ad1a27ddf9885bfc89094c3b034a0d088dc07e9d5035510bb6fd7" [label="/bin/sh -c apt-get update &&     apt-get install -y default-jdk-headless cmake &&     apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:84c04e721ae255b324fb1917972cebf1a8c5aa650cfbaf017e7a5794b2b93bc5" [label="/bin/sh -c R CMD javareconf" shape="box"];
  "sha256:bc8132a59276e7b22ba5169733240c0a743d1e88229a1d54060178bb0ba7b11a" [label="/bin/sh -c install2.r ROCR data.table" shape="box"];
  "sha256:93223bee2dc46aaebf246da530284db1ee495a2da94791a4ae389ca992b43644" [label="/bin/sh -c wget https://s3.amazonaws.com/benchm-ml--main/train-0.1m.csv &&     wget https://s3.amazonaws.com/benchm-ml--main/train-1m.csv &&     wget https://s3.amazonaws.com/benchm-ml--main/train-10m.csv &&     wget https://s3.amazonaws.com/benchm-ml--main/test.csv" shape="box"];
  "sha256:dcc27ce7f430de5a55a7690233b7e13afb660da8e4418d96b372158fa02bea60" [label="/bin/sh -c install2.r -r http://h2o-release.s3.amazonaws.com/h2o/latest_stable_R h2o" shape="box"];
  "sha256:e30e7405cef823f712c32684644b36a2fed5c717866445f3c22881288aa02065" [label="/bin/sh -c git clone --recursive https://github.com/dmlc/xgboost &&     cd xgboost && git submodule init && git submodule update &&     cd R-package && R CMD INSTALL ." shape="box"];
  "sha256:793a63cc4c48f5170535ed7ea3538173a9f64724d1ad948eba73521e4f6d2f18" [label="/bin/sh -c R -e 'devtools::install_github(\"Laurae2/lgbdl\"); lgbdl::lgb.dl()'" shape="box"];
  "sha256:d84cca1f876a2553b9815b76910a1ea0eaf61ab66392609b4295c00c521176d2" [label="/bin/sh -c R -e 'devtools::install_github(\"catboost/catboost\", subdir = \"catboost/R-package\")'" shape="box"];
  "sha256:a3cdd5e377144e3f8116167c8aff71842dd9a59966c094dada76db4783155734" [label="copy{src=/master, dest=/version.json}" shape="note"];
  "sha256:a727342fdaa7690992f6abc32a5e786183bd2968ba719d7ac1d0395918f78eb6" [label="/bin/sh -c git clone https://github.com/szilard/GBM-perf.git" shape="box"];
  "sha256:df769165bdf853390855b6f041ad35a13f9f75b69627a904c10e26bd1e0cd9df" [label="sha256:df769165bdf853390855b6f041ad35a13f9f75b69627a904c10e26bd1e0cd9df" shape="plaintext"];
  "sha256:85c653c08c80ce93deabc91ad435bedc7b73777d13b8446fec20e2c146f3d35d" -> "sha256:f668c29da75ad1a27ddf9885bfc89094c3b034a0d088dc07e9d5035510bb6fd7" [label=""];
  "sha256:f668c29da75ad1a27ddf9885bfc89094c3b034a0d088dc07e9d5035510bb6fd7" -> "sha256:84c04e721ae255b324fb1917972cebf1a8c5aa650cfbaf017e7a5794b2b93bc5" [label=""];
  "sha256:84c04e721ae255b324fb1917972cebf1a8c5aa650cfbaf017e7a5794b2b93bc5" -> "sha256:bc8132a59276e7b22ba5169733240c0a743d1e88229a1d54060178bb0ba7b11a" [label=""];
  "sha256:bc8132a59276e7b22ba5169733240c0a743d1e88229a1d54060178bb0ba7b11a" -> "sha256:93223bee2dc46aaebf246da530284db1ee495a2da94791a4ae389ca992b43644" [label=""];
  "sha256:93223bee2dc46aaebf246da530284db1ee495a2da94791a4ae389ca992b43644" -> "sha256:dcc27ce7f430de5a55a7690233b7e13afb660da8e4418d96b372158fa02bea60" [label=""];
  "sha256:dcc27ce7f430de5a55a7690233b7e13afb660da8e4418d96b372158fa02bea60" -> "sha256:e30e7405cef823f712c32684644b36a2fed5c717866445f3c22881288aa02065" [label=""];
  "sha256:e30e7405cef823f712c32684644b36a2fed5c717866445f3c22881288aa02065" -> "sha256:793a63cc4c48f5170535ed7ea3538173a9f64724d1ad948eba73521e4f6d2f18" [label=""];
  "sha256:793a63cc4c48f5170535ed7ea3538173a9f64724d1ad948eba73521e4f6d2f18" -> "sha256:d84cca1f876a2553b9815b76910a1ea0eaf61ab66392609b4295c00c521176d2" [label=""];
  "sha256:d84cca1f876a2553b9815b76910a1ea0eaf61ab66392609b4295c00c521176d2" -> "sha256:a3cdd5e377144e3f8116167c8aff71842dd9a59966c094dada76db4783155734" [label=""];
  "sha256:8c87c15c33b20c1cf96c836ae621732de00e046c098f5f150aca35fa104e1de8" -> "sha256:a3cdd5e377144e3f8116167c8aff71842dd9a59966c094dada76db4783155734" [label=""];
  "sha256:a3cdd5e377144e3f8116167c8aff71842dd9a59966c094dada76db4783155734" -> "sha256:a727342fdaa7690992f6abc32a5e786183bd2968ba719d7ac1d0395918f78eb6" [label=""];
  "sha256:a727342fdaa7690992f6abc32a5e786183bd2968ba719d7ac1d0395918f78eb6" -> "sha256:df769165bdf853390855b6f041ad35a13f9f75b69627a904c10e26bd1e0cd9df" [label=""];
}

