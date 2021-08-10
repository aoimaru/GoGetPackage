[app/sources/228898672.Dockerfile]
digraph {
  "sha256:79aefd11c205f20c37d087a1c21623619b920641e793d7e7992b15f0d33b283a" [label="docker-image://docker.io/snakepacker/python:3.7" shape="ellipse"];
  "sha256:53e7113db820630d4fcf214e23c9c6fd70e063bea21a6147dbad010fe0025778" [label="/bin/sh -c apt-get update &&     apt-get install -y         libcurl3         libmysqlclient20         libpq5         libssl1.0.0         libxml2         libxslt1.1         libffi6 &&     apt-get clean &&     rm -fr /var/lib/apt/lists/*" shape="box"];
  "sha256:bd5a54c62f975138782106d83a32a8c2b2f725bb319f3a28677c708c7b13b09f" [label="docker-image://docker.io/snakepacker/python:all" shape="ellipse"];
  "sha256:5ec2787611e0d19a7b792f0ba79115512398d8e8978d48daf8954625e475de5b" [label="/bin/sh -c apt-get update &&     apt-get install -y         libcurl-openssl1.0-dev         libmysqlclient-dev         libpq-dev         libssl1.0-dev         libxml2-dev         libxslt1-dev         libffi-dev" shape="box"];
  "sha256:a39213866b3967111b1f237fb10c324e0b219301dc6de5a518ebebd6f6599ea9" [label="/bin/sh -c virtualenv -p python3.7 /usr/share/python/app" shape="box"];
  "sha256:79794a447406ff5cb0789561e0f69972b96cff27130a0967a7f2c43947825ed8" [label="/bin/sh -c /usr/share/python/app/bin/pip install -U     pypi-server[postgres]     pypi-server[mysql]     pypi-server[proxy]" shape="box"];
  "sha256:eb9c163a7083386862f2ed1adc387bb72d7f94c936b72d20679d75e2d427ff78" [label="local://context" shape="ellipse"];
  "sha256:e3bbb3501f6da44ff592f5e671d3d8aa3012217ff2ef8e0250f138b976090a23" [label="copy{src=/docker-entrypoint.py, dest=/usr/share/python/app/bin/entrypoint.py}" shape="note"];
  "sha256:c131e1bf8acb0325b1c811daf1f73997f86afee4ebc4ff91decfa9b9bf2a7ad7" [label="/bin/sh -c chmod a+x /usr/share/python/app/bin/entrypoint.py" shape="box"];
  "sha256:e815d7940634b89fe01b210ed0a2f9c9da629873fa96cce1ecc9eb562887d434" [label="copy{src=/usr/share/python/app, dest=/usr/share/python/app}" shape="note"];
  "sha256:022b511ccad782883a927b85ca02fbd7f35c4763cc20461e73d69e2186d0bde3" [label="/bin/sh -c ln -snf /usr/share/python/app/bin/entrypoint.py /usr/bin/ &&     ln -snf /usr/share/python/app/bin/pypi-server /usr/bin/" shape="box"];
  "sha256:bf5c5fe2f70738a02dc07f4e39ad5e8c41b7c32fa2e58bbdfdc7426f2344787f" [label="sha256:bf5c5fe2f70738a02dc07f4e39ad5e8c41b7c32fa2e58bbdfdc7426f2344787f" shape="plaintext"];
  "sha256:79aefd11c205f20c37d087a1c21623619b920641e793d7e7992b15f0d33b283a" -> "sha256:53e7113db820630d4fcf214e23c9c6fd70e063bea21a6147dbad010fe0025778" [label=""];
  "sha256:bd5a54c62f975138782106d83a32a8c2b2f725bb319f3a28677c708c7b13b09f" -> "sha256:5ec2787611e0d19a7b792f0ba79115512398d8e8978d48daf8954625e475de5b" [label=""];
  "sha256:5ec2787611e0d19a7b792f0ba79115512398d8e8978d48daf8954625e475de5b" -> "sha256:a39213866b3967111b1f237fb10c324e0b219301dc6de5a518ebebd6f6599ea9" [label=""];
  "sha256:a39213866b3967111b1f237fb10c324e0b219301dc6de5a518ebebd6f6599ea9" -> "sha256:79794a447406ff5cb0789561e0f69972b96cff27130a0967a7f2c43947825ed8" [label=""];
  "sha256:79794a447406ff5cb0789561e0f69972b96cff27130a0967a7f2c43947825ed8" -> "sha256:e3bbb3501f6da44ff592f5e671d3d8aa3012217ff2ef8e0250f138b976090a23" [label=""];
  "sha256:eb9c163a7083386862f2ed1adc387bb72d7f94c936b72d20679d75e2d427ff78" -> "sha256:e3bbb3501f6da44ff592f5e671d3d8aa3012217ff2ef8e0250f138b976090a23" [label=""];
  "sha256:e3bbb3501f6da44ff592f5e671d3d8aa3012217ff2ef8e0250f138b976090a23" -> "sha256:c131e1bf8acb0325b1c811daf1f73997f86afee4ebc4ff91decfa9b9bf2a7ad7" [label=""];
  "sha256:53e7113db820630d4fcf214e23c9c6fd70e063bea21a6147dbad010fe0025778" -> "sha256:e815d7940634b89fe01b210ed0a2f9c9da629873fa96cce1ecc9eb562887d434" [label=""];
  "sha256:c131e1bf8acb0325b1c811daf1f73997f86afee4ebc4ff91decfa9b9bf2a7ad7" -> "sha256:e815d7940634b89fe01b210ed0a2f9c9da629873fa96cce1ecc9eb562887d434" [label=""];
  "sha256:e815d7940634b89fe01b210ed0a2f9c9da629873fa96cce1ecc9eb562887d434" -> "sha256:022b511ccad782883a927b85ca02fbd7f35c4763cc20461e73d69e2186d0bde3" [label=""];
  "sha256:022b511ccad782883a927b85ca02fbd7f35c4763cc20461e73d69e2186d0bde3" -> "sha256:bf5c5fe2f70738a02dc07f4e39ad5e8c41b7c32fa2e58bbdfdc7426f2344787f" [label=""];
}

