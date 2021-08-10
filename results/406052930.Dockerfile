[app/sources/406052930.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:7a397d3e212198b1d1c897360c7e891bdf063809f7d1641a8b394711a658c48a" [label="/bin/sh -c pip install pylint" shape="box"];
  "sha256:b57826ff6a12a8c023be7c7b63796701531dfd3122e763ca350d9eabd08462f0" [label="/bin/sh -c apt-get update     && apt-get -y install --no-install-recommends apt-utils 2>&1" shape="box"];
  "sha256:537b7db148724ff2fbde21b4f956575bc1880b58ef276e794182437dca870948" [label="/bin/sh -c apt-get -y install git procps lsb-release" shape="box"];
  "sha256:2352a59e20b329aba3b2fbdc8dd5a95d9c5552918dcce86601cb8e6801164cf3" [label="/bin/sh -c apt-get install -y libicu[0-9][0-9]" shape="box"];
  "sha256:df69a065ef88315b7010856db2a6100fc279b3ef00c6598b1e42793228106811" [label="/bin/sh -c mkdir /workspace" shape="box"];
  "sha256:5a498b96d4f1a30937b7a53e7af648ebaa725e745f5a18d678493c2740b7c137" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:0307eb7d1993f1c124802318ca1a450871b8069f7c5a7a25550fc70c0839b909" [label="local://context" shape="ellipse"];
  "sha256:6405346e40419495dc94215abce899a596724d3465ecaf54de0dcbbd34e1a4b5" [label="copy{src=/.devcontainer/requirements.txt.temp, dest=/workspace/},copy{src=/requirements.txt*, dest=/workspace/}" shape="note"];
  "sha256:bc13b46d414e70f56b0ec56b6efc7c1b5ea352f976cf0dac13d876cce167d475" [label="/bin/sh -c if [ -f \"requirements.txt\" ]; then pip install -r requirements.txt && rm requirements.txt*; fi" shape="box"];
  "sha256:bf50ce46ffdce0066f6de3d4171b1a6de3431af8169670540e5ae27645a78dd7" [label="/bin/sh -c apt-get autoremove -y     && apt-get clean -y     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b84cebd8a9f06fa72f276b11933836a474de0733d37e7fe8f2fb7b7a379a3c4e" [label="sha256:b84cebd8a9f06fa72f276b11933836a474de0733d37e7fe8f2fb7b7a379a3c4e" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:7a397d3e212198b1d1c897360c7e891bdf063809f7d1641a8b394711a658c48a" [label=""];
  "sha256:7a397d3e212198b1d1c897360c7e891bdf063809f7d1641a8b394711a658c48a" -> "sha256:b57826ff6a12a8c023be7c7b63796701531dfd3122e763ca350d9eabd08462f0" [label=""];
  "sha256:b57826ff6a12a8c023be7c7b63796701531dfd3122e763ca350d9eabd08462f0" -> "sha256:537b7db148724ff2fbde21b4f956575bc1880b58ef276e794182437dca870948" [label=""];
  "sha256:537b7db148724ff2fbde21b4f956575bc1880b58ef276e794182437dca870948" -> "sha256:2352a59e20b329aba3b2fbdc8dd5a95d9c5552918dcce86601cb8e6801164cf3" [label=""];
  "sha256:2352a59e20b329aba3b2fbdc8dd5a95d9c5552918dcce86601cb8e6801164cf3" -> "sha256:df69a065ef88315b7010856db2a6100fc279b3ef00c6598b1e42793228106811" [label=""];
  "sha256:df69a065ef88315b7010856db2a6100fc279b3ef00c6598b1e42793228106811" -> "sha256:5a498b96d4f1a30937b7a53e7af648ebaa725e745f5a18d678493c2740b7c137" [label=""];
  "sha256:5a498b96d4f1a30937b7a53e7af648ebaa725e745f5a18d678493c2740b7c137" -> "sha256:6405346e40419495dc94215abce899a596724d3465ecaf54de0dcbbd34e1a4b5" [label=""];
  "sha256:0307eb7d1993f1c124802318ca1a450871b8069f7c5a7a25550fc70c0839b909" -> "sha256:6405346e40419495dc94215abce899a596724d3465ecaf54de0dcbbd34e1a4b5" [label=""];
  "sha256:6405346e40419495dc94215abce899a596724d3465ecaf54de0dcbbd34e1a4b5" -> "sha256:bc13b46d414e70f56b0ec56b6efc7c1b5ea352f976cf0dac13d876cce167d475" [label=""];
  "sha256:bc13b46d414e70f56b0ec56b6efc7c1b5ea352f976cf0dac13d876cce167d475" -> "sha256:bf50ce46ffdce0066f6de3d4171b1a6de3431af8169670540e5ae27645a78dd7" [label=""];
  "sha256:bf50ce46ffdce0066f6de3d4171b1a6de3431af8169670540e5ae27645a78dd7" -> "sha256:b84cebd8a9f06fa72f276b11933836a474de0733d37e7fe8f2fb7b7a379a3c4e" [label=""];
}

