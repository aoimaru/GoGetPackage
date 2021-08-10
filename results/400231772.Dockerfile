[app/sources/400231772.Dockerfile]
digraph {
  "sha256:c6e5c605307e58accfd886be5485c919c2494031d84715be216af79476405cfa" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:42ce6d2ccd57411329221395b84bcb8932e75c41294d9d57ef71de03a349064a" [label="/bin/sh -c apt-get update &&     apt-get install -y         python python-pip python-virtualenv python-dev         libchromaprint0 libchromaprint-tools libpq-dev libffi-dev libssl-dev libpcre3-dev         curl" shape="box"];
  "sha256:e844d4bea145c0c54b8e055a22a767ab2c0617a1770d4635ded2ccb5cca6178f" [label="/bin/sh -c curl -Lo /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.2/dumb-init_1.2.2_amd64 &&     chmod +x /usr/local/bin/dumb-init" shape="box"];
  "sha256:e8ba056c24c216acf962ef31360c1e058407a98c3518308dd40c87838338e35d" [label="copy{src=/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:7ee3b46d129529b4de46585a3e98ab57a0fe23d0b0163212f778e67416be7bc4" [label="/bin/sh -c virtualenv /opt/acoustid/server.venv &&     /opt/acoustid/server.venv/bin/pip install --no-binary :all: --no-cache-dir -r /tmp/requirements.txt" shape="box"];
  "sha256:193586c9d25229328345ae7ef040cc57aa1dbdb208a0b957954be14a119fe113" [label="/bin/sh -c useradd -ms /bin/bash acoustid" shape="box"];
  "sha256:852969e9ba670d77abfde76bb071905f56c3010d59428a60713ed45608259c57" [label="mkdir{path=/opt/acoustid/server}" shape="note"];
  "sha256:10e4f67f308bd4f946049141ed6eac9f2a0bd1999e7140ede04b3614b63da8aa" [label="copy{src=/, dest=/opt/acoustid/server/}" shape="note"];
  "sha256:6d2d7e0c1a45434d4f7704001862a1d3fa7bd414e9ea7529ac4a697371efba25" [label="sha256:6d2d7e0c1a45434d4f7704001862a1d3fa7bd414e9ea7529ac4a697371efba25" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:42ce6d2ccd57411329221395b84bcb8932e75c41294d9d57ef71de03a349064a" [label=""];
  "sha256:42ce6d2ccd57411329221395b84bcb8932e75c41294d9d57ef71de03a349064a" -> "sha256:e844d4bea145c0c54b8e055a22a767ab2c0617a1770d4635ded2ccb5cca6178f" [label=""];
  "sha256:e844d4bea145c0c54b8e055a22a767ab2c0617a1770d4635ded2ccb5cca6178f" -> "sha256:e8ba056c24c216acf962ef31360c1e058407a98c3518308dd40c87838338e35d" [label=""];
  "sha256:c6e5c605307e58accfd886be5485c919c2494031d84715be216af79476405cfa" -> "sha256:e8ba056c24c216acf962ef31360c1e058407a98c3518308dd40c87838338e35d" [label=""];
  "sha256:e8ba056c24c216acf962ef31360c1e058407a98c3518308dd40c87838338e35d" -> "sha256:7ee3b46d129529b4de46585a3e98ab57a0fe23d0b0163212f778e67416be7bc4" [label=""];
  "sha256:7ee3b46d129529b4de46585a3e98ab57a0fe23d0b0163212f778e67416be7bc4" -> "sha256:193586c9d25229328345ae7ef040cc57aa1dbdb208a0b957954be14a119fe113" [label=""];
  "sha256:193586c9d25229328345ae7ef040cc57aa1dbdb208a0b957954be14a119fe113" -> "sha256:852969e9ba670d77abfde76bb071905f56c3010d59428a60713ed45608259c57" [label=""];
  "sha256:852969e9ba670d77abfde76bb071905f56c3010d59428a60713ed45608259c57" -> "sha256:10e4f67f308bd4f946049141ed6eac9f2a0bd1999e7140ede04b3614b63da8aa" [label=""];
  "sha256:c6e5c605307e58accfd886be5485c919c2494031d84715be216af79476405cfa" -> "sha256:10e4f67f308bd4f946049141ed6eac9f2a0bd1999e7140ede04b3614b63da8aa" [label=""];
  "sha256:10e4f67f308bd4f946049141ed6eac9f2a0bd1999e7140ede04b3614b63da8aa" -> "sha256:6d2d7e0c1a45434d4f7704001862a1d3fa7bd414e9ea7529ac4a697371efba25" [label=""];
}

