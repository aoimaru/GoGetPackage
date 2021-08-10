[app/sources/231822866.Dockerfile]
digraph {
  "sha256:38c7d8f4ca25f84b8598129131d5f96827273ac3e79e1d5f2363ec9bd63c5206" [label="docker-image://docker.io/library/python:3.7-stretch" shape="ellipse"];
  "sha256:49f3f903be6b28c93afdeb52454d0ac3dc23e184c778813298b6463eead895dd" [label="/bin/sh -c apt-get -y install libc-dev" shape="box"];
  "sha256:ff25f2c19a9893261a07c21cfc28217c0532958488db59eba53d70e99b506f3b" [label="/bin/sh -c pip install pip==19.1.1" shape="box"];
  "sha256:666a7b6a83edd5e7f3d74119cea324797bc9dd5d812d20b4df726aae2b435921" [label="local://context" shape="ellipse"];
  "sha256:19545bd8f622733a3e2a74d37854a5859e74ecf30ace063cd249f12f0fb07fd2" [label="copy{src=/python/requirements.txt, dest=/}" shape="note"];
  "sha256:93007de81d321ec54e7d2eb94c917c1fd8c68787eb9c7e87eaa9b1133e6e5223" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:f5a39065fd8d102da427716f3477ff03ac9c0d7048ca373f86d75aa201a113fd" [label="/bin/sh -c pip install ipython==7.5.0" shape="box"];
  "sha256:807f0839dd7c7097fb8ec7854b368b389219ce3f36889b2fe5ca7f5cf7288319" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:49174f86a3edbe61691fc28fae127d7fbb48b104f2e81e17c0ecebca1e8906fa" [label="mkdir{path=/python}" shape="note"];
  "sha256:da29b61163e454fdd6b6635b8a17607d949de884520515b17990ff036836cd2e" [label="/bin/sh -c python setup.py install" shape="box"];
  "sha256:f7f6094104334e38837763b7f75ee841f8fb197060a36907c9adef1730e7157d" [label="sha256:f7f6094104334e38837763b7f75ee841f8fb197060a36907c9adef1730e7157d" shape="plaintext"];
  "sha256:38c7d8f4ca25f84b8598129131d5f96827273ac3e79e1d5f2363ec9bd63c5206" -> "sha256:49f3f903be6b28c93afdeb52454d0ac3dc23e184c778813298b6463eead895dd" [label=""];
  "sha256:49f3f903be6b28c93afdeb52454d0ac3dc23e184c778813298b6463eead895dd" -> "sha256:ff25f2c19a9893261a07c21cfc28217c0532958488db59eba53d70e99b506f3b" [label=""];
  "sha256:ff25f2c19a9893261a07c21cfc28217c0532958488db59eba53d70e99b506f3b" -> "sha256:19545bd8f622733a3e2a74d37854a5859e74ecf30ace063cd249f12f0fb07fd2" [label=""];
  "sha256:666a7b6a83edd5e7f3d74119cea324797bc9dd5d812d20b4df726aae2b435921" -> "sha256:19545bd8f622733a3e2a74d37854a5859e74ecf30ace063cd249f12f0fb07fd2" [label=""];
  "sha256:19545bd8f622733a3e2a74d37854a5859e74ecf30ace063cd249f12f0fb07fd2" -> "sha256:93007de81d321ec54e7d2eb94c917c1fd8c68787eb9c7e87eaa9b1133e6e5223" [label=""];
  "sha256:93007de81d321ec54e7d2eb94c917c1fd8c68787eb9c7e87eaa9b1133e6e5223" -> "sha256:f5a39065fd8d102da427716f3477ff03ac9c0d7048ca373f86d75aa201a113fd" [label=""];
  "sha256:f5a39065fd8d102da427716f3477ff03ac9c0d7048ca373f86d75aa201a113fd" -> "sha256:807f0839dd7c7097fb8ec7854b368b389219ce3f36889b2fe5ca7f5cf7288319" [label=""];
  "sha256:666a7b6a83edd5e7f3d74119cea324797bc9dd5d812d20b4df726aae2b435921" -> "sha256:807f0839dd7c7097fb8ec7854b368b389219ce3f36889b2fe5ca7f5cf7288319" [label=""];
  "sha256:807f0839dd7c7097fb8ec7854b368b389219ce3f36889b2fe5ca7f5cf7288319" -> "sha256:49174f86a3edbe61691fc28fae127d7fbb48b104f2e81e17c0ecebca1e8906fa" [label=""];
  "sha256:49174f86a3edbe61691fc28fae127d7fbb48b104f2e81e17c0ecebca1e8906fa" -> "sha256:da29b61163e454fdd6b6635b8a17607d949de884520515b17990ff036836cd2e" [label=""];
  "sha256:da29b61163e454fdd6b6635b8a17607d949de884520515b17990ff036836cd2e" -> "sha256:f7f6094104334e38837763b7f75ee841f8fb197060a36907c9adef1730e7157d" [label=""];
}

