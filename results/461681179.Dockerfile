[app/sources/461681179.Dockerfile]
digraph {
  "sha256:e4cdac2c5c2247e5fc9ff092ee70f3b0617bcf0153c2102426dbe56cb5557589" [label="docker-image://docker.io/library/python:3.7.3" shape="ellipse"];
  "sha256:b78584a73516ba38a47612f0b6e283a46a3674065ab3e80c766975d65caf7de3" [label="local://context" shape="ellipse"];
  "sha256:ee6ca42e27c54199a5d00aedb42c2a0f46ac9ea3556811edb81913f7bd4c1c74" [label="copy{src=/wco.py, dest=/app/wco.py}" shape="note"];
  "sha256:f3f257c3586946c86dfe6078d6d832ef2fa8587c7c91ede2f96a5763b915b3f1" [label="copy{src=/lib, dest=/app/lib}" shape="note"];
  "sha256:5b2f1d60537d141cf62c76a50292b1d499767ded27f183b8e55b8894ea5a2dca" [label="mkdir{path=/app}" shape="note"];
  "sha256:437ff891c5000c109ff471af7af77b6c8bce44bd491be5fbbe7bab0f39bd5167" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:514efcbe85cff7076e28cb57ee5d03b10724ca43f0786f3141ee30d744518078" [label="/bin/sh -c pip install boto3" shape="box"];
  "sha256:c8347ae4edfb36bc77ab7f8f36b310a7275d7238d47a6de5baa8e10b604e639f" [label="sha256:c8347ae4edfb36bc77ab7f8f36b310a7275d7238d47a6de5baa8e10b604e639f" shape="plaintext"];
  "sha256:e4cdac2c5c2247e5fc9ff092ee70f3b0617bcf0153c2102426dbe56cb5557589" -> "sha256:ee6ca42e27c54199a5d00aedb42c2a0f46ac9ea3556811edb81913f7bd4c1c74" [label=""];
  "sha256:b78584a73516ba38a47612f0b6e283a46a3674065ab3e80c766975d65caf7de3" -> "sha256:ee6ca42e27c54199a5d00aedb42c2a0f46ac9ea3556811edb81913f7bd4c1c74" [label=""];
  "sha256:ee6ca42e27c54199a5d00aedb42c2a0f46ac9ea3556811edb81913f7bd4c1c74" -> "sha256:f3f257c3586946c86dfe6078d6d832ef2fa8587c7c91ede2f96a5763b915b3f1" [label=""];
  "sha256:b78584a73516ba38a47612f0b6e283a46a3674065ab3e80c766975d65caf7de3" -> "sha256:f3f257c3586946c86dfe6078d6d832ef2fa8587c7c91ede2f96a5763b915b3f1" [label=""];
  "sha256:f3f257c3586946c86dfe6078d6d832ef2fa8587c7c91ede2f96a5763b915b3f1" -> "sha256:5b2f1d60537d141cf62c76a50292b1d499767ded27f183b8e55b8894ea5a2dca" [label=""];
  "sha256:5b2f1d60537d141cf62c76a50292b1d499767ded27f183b8e55b8894ea5a2dca" -> "sha256:437ff891c5000c109ff471af7af77b6c8bce44bd491be5fbbe7bab0f39bd5167" [label=""];
  "sha256:437ff891c5000c109ff471af7af77b6c8bce44bd491be5fbbe7bab0f39bd5167" -> "sha256:514efcbe85cff7076e28cb57ee5d03b10724ca43f0786f3141ee30d744518078" [label=""];
  "sha256:514efcbe85cff7076e28cb57ee5d03b10724ca43f0786f3141ee30d744518078" -> "sha256:c8347ae4edfb36bc77ab7f8f36b310a7275d7238d47a6de5baa8e10b604e639f" [label=""];
}

