[app/sources/225345521.Dockerfile]
digraph {
  "sha256:888547d178cabe3e29e093c2c94e74f5aab083664280a635fe2d3a4c90dca98b" [label="local://context" shape="ellipse"];
  "sha256:2333fc4e4eb180d62920f087f2454765de63da4a11e464979e59b413834e18c8" [label="docker-image://docker.io/library/openjdk:8-jre-alpine3.9" shape="ellipse"];
  "sha256:ad230bab66c93d4a070109450749b821b925d0be8e0aebc99011ed9520b6c715" [label="/bin/sh -c apk add --no-cache python3 && python3 -m ensurepip && pip3 install --upgrade pip setuptools && rm -r /usr/lib/python*/ensurepip && if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && rm -r /root/.cache" shape="box"];
  "sha256:b8650f395f86a0ab5aeb8c42c95ba72bd2ddb49dcf71a6a23214deea034860ea" [label="mkdir{path=/tools}" shape="note"];
  "sha256:e535ab6a518e142868054444c11943a5eacb84b350d5eaeaed974b3c0dafa4e2" [label="copy{src=/requirements.txt, dest=/tools/}" shape="note"];
  "sha256:a5fb54ab1537723e10e6a99ff9a3a0c8e6c1f54aa0e79921b7a17519ef5af22c" [label="/bin/sh -c apk add --no-cache make automake gcc g++ subversion python3-dev" shape="box"];
  "sha256:f3344ad9ed82878e7e9381dbc24a7ac922a777332d8fa8d1c2fa9590ae9bad24" [label="/bin/sh -c pip3 install -r requirements.txt && pip3 install jsonschema ruamel.yaml requests jsonpath_rw numpy" shape="box"];
  "sha256:48cbcff946ec51da570cc1a4d171f0e3c2ba031bbbb126b3314a8bd50e4338d6" [label="/bin/sh -c pip3 install pandas" shape="box"];
  "sha256:a29e296c9e768795bae5c7c0f5db258610eb1cdf8db34913cf2c2135004e9c00" [label="/bin/sh -c apk update && apk add --no-cache bash && apk add --no-cache --virtual=build-dependencies unzip && apk add --no-cache curl && apk add --no-cache rsync" shape="box"];
  "sha256:a3524a20a95676a1650ea6f98c56aec6009ce885dba04d3de6393bfae5f91202" [label="/bin/sh -c apk --no-cache add openssl wget" shape="box"];
  "sha256:70aeab5165052b5ae800330c3bd2a79fd8880f10606abce51b7a2383ea34bfc4" [label="/bin/sh -c wget http://build.berkeleybop.org/userContent/owltools/owltools -O /tools/owltools &&     wget http://build.berkeleybop.org/userContent/owltools/ontology-release-runner -O /tools/ontology-release-runner &&     wget http://build.berkeleybop.org/userContent/owltools/owltools-oort-all.jar -O /tools/owltools-oort-all.jar" shape="box"];
  "sha256:7d7869e519dad50cdd3c7dd7798c121a4d9734658c2733f23796070eab6b9c83" [label="/bin/sh -c wget https://github.com/ontodev/robot/releases/download/$ROBOT/robot.jar -O /tools/robot.jar &&     wget https://raw.githubusercontent.com/ontodev/robot/$ROBOT/bin/robot -O /tools/robot &&     chmod +x /tools/*" shape="box"];
  "sha256:83b7e99ed756c301cc2b5ab8a20b618655c20105f34938e8d6abaa07636b2ccb" [label="/bin/sh -c wget https://dl.bintray.com/fastobo/fastobo-validator/stable/fastobo_validator-x86_64-linux-musl.tar.gz -O- | tar xzC /tools" shape="box"];
  "sha256:4005502f874ee35656860bcf0738a37886928f14b22d392420cd62317b1b4d88" [label="/bin/sh -c wget -nv https://github.com/INCATools/dosdp-tools/releases/download/v$V/dosdp-tools-$V.tgz && tar -zxvf dosdp-tools-$V.tgz && mv dosdp-tools-$V /tools/dosdp-tools" shape="box"];
  "sha256:b4d9752399ae1ebbbb8f57c70e703de420d78e8dea58e719c1fdc1b31c6fb24f" [label="/bin/sh -c wget --no-check-certificate https://raw.githubusercontent.com/INCATools/dead_simple_owl_design_patterns/master/src/simple_pattern_tester.py -O /tools/simple_pattern_tester.py && chmod +x /tools/*" shape="box"];
  "sha256:6dd3372f79d1933aa74d04d0b571b6f8fb5bf00e4042acbea56f65153e3bc613" [label="/bin/sh -c apk add --no-cache git" shape="box"];
  "sha256:89550f4385d7d0a27861d42045a227dc67ec0769083165e8583f2ab4cd56d5de" [label="copy{src=/template, dest=/tools/templates/}" shape="note"];
  "sha256:f35b5bea3651d939c3efedf2547b6546b4a2a96294654722910b37bcedd2eebe" [label="copy{src=/odk, dest=/tools/}" shape="note"];
  "sha256:b9e586bab27a3d67f53f00ed90092d3f927ff1b682404751492fe4f9e2bab0c9" [label="sha256:b9e586bab27a3d67f53f00ed90092d3f927ff1b682404751492fe4f9e2bab0c9" shape="plaintext"];
  "sha256:2333fc4e4eb180d62920f087f2454765de63da4a11e464979e59b413834e18c8" -> "sha256:ad230bab66c93d4a070109450749b821b925d0be8e0aebc99011ed9520b6c715" [label=""];
  "sha256:ad230bab66c93d4a070109450749b821b925d0be8e0aebc99011ed9520b6c715" -> "sha256:b8650f395f86a0ab5aeb8c42c95ba72bd2ddb49dcf71a6a23214deea034860ea" [label=""];
  "sha256:b8650f395f86a0ab5aeb8c42c95ba72bd2ddb49dcf71a6a23214deea034860ea" -> "sha256:e535ab6a518e142868054444c11943a5eacb84b350d5eaeaed974b3c0dafa4e2" [label=""];
  "sha256:888547d178cabe3e29e093c2c94e74f5aab083664280a635fe2d3a4c90dca98b" -> "sha256:e535ab6a518e142868054444c11943a5eacb84b350d5eaeaed974b3c0dafa4e2" [label=""];
  "sha256:e535ab6a518e142868054444c11943a5eacb84b350d5eaeaed974b3c0dafa4e2" -> "sha256:a5fb54ab1537723e10e6a99ff9a3a0c8e6c1f54aa0e79921b7a17519ef5af22c" [label=""];
  "sha256:a5fb54ab1537723e10e6a99ff9a3a0c8e6c1f54aa0e79921b7a17519ef5af22c" -> "sha256:f3344ad9ed82878e7e9381dbc24a7ac922a777332d8fa8d1c2fa9590ae9bad24" [label=""];
  "sha256:f3344ad9ed82878e7e9381dbc24a7ac922a777332d8fa8d1c2fa9590ae9bad24" -> "sha256:48cbcff946ec51da570cc1a4d171f0e3c2ba031bbbb126b3314a8bd50e4338d6" [label=""];
  "sha256:48cbcff946ec51da570cc1a4d171f0e3c2ba031bbbb126b3314a8bd50e4338d6" -> "sha256:a29e296c9e768795bae5c7c0f5db258610eb1cdf8db34913cf2c2135004e9c00" [label=""];
  "sha256:a29e296c9e768795bae5c7c0f5db258610eb1cdf8db34913cf2c2135004e9c00" -> "sha256:a3524a20a95676a1650ea6f98c56aec6009ce885dba04d3de6393bfae5f91202" [label=""];
  "sha256:a3524a20a95676a1650ea6f98c56aec6009ce885dba04d3de6393bfae5f91202" -> "sha256:70aeab5165052b5ae800330c3bd2a79fd8880f10606abce51b7a2383ea34bfc4" [label=""];
  "sha256:70aeab5165052b5ae800330c3bd2a79fd8880f10606abce51b7a2383ea34bfc4" -> "sha256:7d7869e519dad50cdd3c7dd7798c121a4d9734658c2733f23796070eab6b9c83" [label=""];
  "sha256:7d7869e519dad50cdd3c7dd7798c121a4d9734658c2733f23796070eab6b9c83" -> "sha256:83b7e99ed756c301cc2b5ab8a20b618655c20105f34938e8d6abaa07636b2ccb" [label=""];
  "sha256:83b7e99ed756c301cc2b5ab8a20b618655c20105f34938e8d6abaa07636b2ccb" -> "sha256:4005502f874ee35656860bcf0738a37886928f14b22d392420cd62317b1b4d88" [label=""];
  "sha256:4005502f874ee35656860bcf0738a37886928f14b22d392420cd62317b1b4d88" -> "sha256:b4d9752399ae1ebbbb8f57c70e703de420d78e8dea58e719c1fdc1b31c6fb24f" [label=""];
  "sha256:b4d9752399ae1ebbbb8f57c70e703de420d78e8dea58e719c1fdc1b31c6fb24f" -> "sha256:6dd3372f79d1933aa74d04d0b571b6f8fb5bf00e4042acbea56f65153e3bc613" [label=""];
  "sha256:6dd3372f79d1933aa74d04d0b571b6f8fb5bf00e4042acbea56f65153e3bc613" -> "sha256:89550f4385d7d0a27861d42045a227dc67ec0769083165e8583f2ab4cd56d5de" [label=""];
  "sha256:888547d178cabe3e29e093c2c94e74f5aab083664280a635fe2d3a4c90dca98b" -> "sha256:89550f4385d7d0a27861d42045a227dc67ec0769083165e8583f2ab4cd56d5de" [label=""];
  "sha256:89550f4385d7d0a27861d42045a227dc67ec0769083165e8583f2ab4cd56d5de" -> "sha256:f35b5bea3651d939c3efedf2547b6546b4a2a96294654722910b37bcedd2eebe" [label=""];
  "sha256:888547d178cabe3e29e093c2c94e74f5aab083664280a635fe2d3a4c90dca98b" -> "sha256:f35b5bea3651d939c3efedf2547b6546b4a2a96294654722910b37bcedd2eebe" [label=""];
  "sha256:f35b5bea3651d939c3efedf2547b6546b4a2a96294654722910b37bcedd2eebe" -> "sha256:b9e586bab27a3d67f53f00ed90092d3f927ff1b682404751492fe4f9e2bab0c9" [label=""];
}

