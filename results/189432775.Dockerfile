[app/sources/189432775.Dockerfile]
digraph {
  "sha256:d77c006fff941f3a6af6fb89a0fa4ed45d4371ba3192ccced4e00ca243141d2c" [label="local://context" shape="ellipse"];
  "sha256:5d97a2333ab0235b0ae8476bb61215cb5325d758da22fdfad5195b71f512eaf7" [label="docker-image://docker.io/library/python:3.5-slim-stretch" shape="ellipse"];
  "sha256:0e5efec2726ed4fde5e671ce83b27d5a60453fc059303eccb54d205ff7686921" [label="/bin/sh -c apt-get update && apt-get install -y     libffi-dev     g++     python3-dev     libmemcached-dev     libz-dev" shape="box"];
  "sha256:a1b0704cf045c42149c9c81b15701ef83bdc99244f3aab0c5c5f68c1ecfee910" [label="copy{src=/, dest=/wikilabels}" shape="note"];
  "sha256:8a3857592fa9f8505049225dc27aa1f5790a7a20551c6ec69ddcfc027421e7da" [label="mkdir{path=/wikilabels}" shape="note"];
  "sha256:bfdcd2a26e394130d85de25a7d0e9e887610ed78cce65401df66f22813576251" [label="/bin/sh -c pip install pip --upgrade" shape="box"];
  "sha256:6b7407000e9fe66171ef698ef09937e29c083bed8ab8ad823f20540971063052" [label="/bin/sh -c pip install wheel" shape="box"];
  "sha256:91574468cf643b6346724fe14390c4f655fc2e48e69e7529c5ac4992baa90460" [label="/bin/sh -c pip install -r /wikilabels/requirements.txt" shape="box"];
  "sha256:2b31216307466e2100fca1f206fe73b1072b87fd2644088af3db53a5707af3bd" [label="/bin/sh -c pip install pytest flake8 codecov pytest-cov pytest-flask" shape="box"];
  "sha256:e18ff0d464c6d190ec7e04630db55338fbfb8fc89a0c0fadafc97c0de3dd336c" [label="sha256:e18ff0d464c6d190ec7e04630db55338fbfb8fc89a0c0fadafc97c0de3dd336c" shape="plaintext"];
  "sha256:5d97a2333ab0235b0ae8476bb61215cb5325d758da22fdfad5195b71f512eaf7" -> "sha256:0e5efec2726ed4fde5e671ce83b27d5a60453fc059303eccb54d205ff7686921" [label=""];
  "sha256:0e5efec2726ed4fde5e671ce83b27d5a60453fc059303eccb54d205ff7686921" -> "sha256:a1b0704cf045c42149c9c81b15701ef83bdc99244f3aab0c5c5f68c1ecfee910" [label=""];
  "sha256:d77c006fff941f3a6af6fb89a0fa4ed45d4371ba3192ccced4e00ca243141d2c" -> "sha256:a1b0704cf045c42149c9c81b15701ef83bdc99244f3aab0c5c5f68c1ecfee910" [label=""];
  "sha256:a1b0704cf045c42149c9c81b15701ef83bdc99244f3aab0c5c5f68c1ecfee910" -> "sha256:8a3857592fa9f8505049225dc27aa1f5790a7a20551c6ec69ddcfc027421e7da" [label=""];
  "sha256:8a3857592fa9f8505049225dc27aa1f5790a7a20551c6ec69ddcfc027421e7da" -> "sha256:bfdcd2a26e394130d85de25a7d0e9e887610ed78cce65401df66f22813576251" [label=""];
  "sha256:bfdcd2a26e394130d85de25a7d0e9e887610ed78cce65401df66f22813576251" -> "sha256:6b7407000e9fe66171ef698ef09937e29c083bed8ab8ad823f20540971063052" [label=""];
  "sha256:6b7407000e9fe66171ef698ef09937e29c083bed8ab8ad823f20540971063052" -> "sha256:91574468cf643b6346724fe14390c4f655fc2e48e69e7529c5ac4992baa90460" [label=""];
  "sha256:91574468cf643b6346724fe14390c4f655fc2e48e69e7529c5ac4992baa90460" -> "sha256:2b31216307466e2100fca1f206fe73b1072b87fd2644088af3db53a5707af3bd" [label=""];
  "sha256:2b31216307466e2100fca1f206fe73b1072b87fd2644088af3db53a5707af3bd" -> "sha256:e18ff0d464c6d190ec7e04630db55338fbfb8fc89a0c0fadafc97c0de3dd336c" [label=""];
}

