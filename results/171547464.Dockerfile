[app/sources/171547464.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:bdf56272f6f3176e0903729df716813e03c48fc794feb85352100a5811334b1c" [label="/bin/sh -c apk --no-cache add python py-setuptools py-pip gcc libffi py-cffi python-dev libffi-dev py-openssl musl-dev linux-headers openssl-dev libssl1.0 &&     pip install elasticsearch-curator==5.7.6 &&     pip install boto3==1.9.143 &&     pip install requests-aws4auth==0.9 &&     pip install cryptography==2.6.1 &&     apk del py-pip gcc python-dev libffi-dev musl-dev linux-headers openssl-dev &&     sed -i '/import sys/a urllib3.contrib.pyopenssl.inject_into_urllib3()' /usr/bin/curator &&     sed -i '/import sys/a import urllib3.contrib.pyopenssl' /usr/bin/curator &&     sed -i '/import sys/a import urllib3' /usr/bin/curator" shape="box"];
  "sha256:cd105b19c91ab5a538019ff614999e71c5b8eab64f14c0b751b3a188738c5f7d" [label="sha256:cd105b19c91ab5a538019ff614999e71c5b8eab64f14c0b751b3a188738c5f7d" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:bdf56272f6f3176e0903729df716813e03c48fc794feb85352100a5811334b1c" [label=""];
  "sha256:bdf56272f6f3176e0903729df716813e03c48fc794feb85352100a5811334b1c" -> "sha256:cd105b19c91ab5a538019ff614999e71c5b8eab64f14c0b751b3a188738c5f7d" [label=""];
}

