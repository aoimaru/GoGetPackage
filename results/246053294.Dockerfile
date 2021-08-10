[app/sources/246053294.Dockerfile]
digraph {
  "sha256:9d78e13bdab5dd0ec782aba2433985c9d9deea4c82e40dc98621d82fdee0fb11" [label="docker-image://docker.io/datmo/python-base:gpu-py35" shape="ellipse"];
  "sha256:5e99eb934b91288b2c2bf00b577ab796c979be5a9989ba54340d7bab03e9cf3a" [label="/bin/sh -c pip --no-cache-dir install         ipykernel         jupyter         notebook==5.4.0         &&     python -m ipykernel.kernelspec" shape="box"];
  "sha256:9d2a520c2b21a9b782e304c6c8d0958ae274c813ec52555b60995462142c0d7c" [label="local://context" shape="ellipse"];
  "sha256:c2198de96a267c221ac06de3491c80254004041dbdc099a3ad0c75c51da0e906" [label="copy{src=/jupyter_notebook_config_py2.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:c47009549f8a7761a1d8af6bce26c1395cbabcf039a60f85e5afb370f867a238" [label="/bin/sh -c mv /root/.jupyter/jupyter_notebook_config_py2.py /root/.jupyter/jupyter_notebook_config.py" shape="box"];
  "sha256:62a71b94fad11f0cc50032cd7582a92a5f3f1849dbb0f1394b250aaa9cbf2906" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:5f282da249b044a6b21c4c99975dc3055427a194a722f46bcb82fbbbe0c760fe" [label="/bin/sh -c chmod +x /run_jupyter.sh" shape="box"];
  "sha256:af2c84b6049030633f06045a909b7bb358fb13f59e6ffe5025868d839ea48b50" [label="/bin/sh -c pip install jupyterlab==0.32.1" shape="box"];
  "sha256:d22940dad558faaebcfb5ea354ed8e2c0c5f4e16b86937961cdc83c4be7d95ec" [label="sha256:d22940dad558faaebcfb5ea354ed8e2c0c5f4e16b86937961cdc83c4be7d95ec" shape="plaintext"];
  "sha256:9d78e13bdab5dd0ec782aba2433985c9d9deea4c82e40dc98621d82fdee0fb11" -> "sha256:5e99eb934b91288b2c2bf00b577ab796c979be5a9989ba54340d7bab03e9cf3a" [label=""];
  "sha256:5e99eb934b91288b2c2bf00b577ab796c979be5a9989ba54340d7bab03e9cf3a" -> "sha256:c2198de96a267c221ac06de3491c80254004041dbdc099a3ad0c75c51da0e906" [label=""];
  "sha256:9d2a520c2b21a9b782e304c6c8d0958ae274c813ec52555b60995462142c0d7c" -> "sha256:c2198de96a267c221ac06de3491c80254004041dbdc099a3ad0c75c51da0e906" [label=""];
  "sha256:c2198de96a267c221ac06de3491c80254004041dbdc099a3ad0c75c51da0e906" -> "sha256:c47009549f8a7761a1d8af6bce26c1395cbabcf039a60f85e5afb370f867a238" [label=""];
  "sha256:c47009549f8a7761a1d8af6bce26c1395cbabcf039a60f85e5afb370f867a238" -> "sha256:62a71b94fad11f0cc50032cd7582a92a5f3f1849dbb0f1394b250aaa9cbf2906" [label=""];
  "sha256:9d2a520c2b21a9b782e304c6c8d0958ae274c813ec52555b60995462142c0d7c" -> "sha256:62a71b94fad11f0cc50032cd7582a92a5f3f1849dbb0f1394b250aaa9cbf2906" [label=""];
  "sha256:62a71b94fad11f0cc50032cd7582a92a5f3f1849dbb0f1394b250aaa9cbf2906" -> "sha256:5f282da249b044a6b21c4c99975dc3055427a194a722f46bcb82fbbbe0c760fe" [label=""];
  "sha256:5f282da249b044a6b21c4c99975dc3055427a194a722f46bcb82fbbbe0c760fe" -> "sha256:af2c84b6049030633f06045a909b7bb358fb13f59e6ffe5025868d839ea48b50" [label=""];
  "sha256:af2c84b6049030633f06045a909b7bb358fb13f59e6ffe5025868d839ea48b50" -> "sha256:d22940dad558faaebcfb5ea354ed8e2c0c5f4e16b86937961cdc83c4be7d95ec" [label=""];
}

