[app/sources/482028760.Dockerfile]
digraph {
  "sha256:ecfbcd425827d5c825babefac8650bfb3245f4641846e62cdfb27ef38602a49e" [label="docker-image://docker.io/lambci/lambda-base:build" shape="ellipse"];
  "sha256:75e4576caa2b2ce30aafd1304e40b77658dd4f3a0ed5f4910690e33713fbd7f7" [label="/bin/sh -c rm -rf /var/runtime /var/lang &&   curl https://lambci.s3.amazonaws.com/fs/python2.7.tgz | tar -zx -C /" shape="box"];
  "sha256:f8a9bd0abbb4d3245146184863ee183225a546deed23d0a3f7f863a22fe62f07" [label="/bin/sh -c curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | python &&   pip install -U virtualenv pipenv --no-cache-dir &&   pip install -U awscli boto3 aws-sam-cli==0.16.0 aws-lambda-builders==0.3.0 --no-cache-dir" shape="box"];
  "sha256:e49ccf2a4f787720465412374c455a8cf04c5784ba440ad59da504389cc25832" [label="sha256:e49ccf2a4f787720465412374c455a8cf04c5784ba440ad59da504389cc25832" shape="plaintext"];
  "sha256:ecfbcd425827d5c825babefac8650bfb3245f4641846e62cdfb27ef38602a49e" -> "sha256:75e4576caa2b2ce30aafd1304e40b77658dd4f3a0ed5f4910690e33713fbd7f7" [label=""];
  "sha256:75e4576caa2b2ce30aafd1304e40b77658dd4f3a0ed5f4910690e33713fbd7f7" -> "sha256:f8a9bd0abbb4d3245146184863ee183225a546deed23d0a3f7f863a22fe62f07" [label=""];
  "sha256:f8a9bd0abbb4d3245146184863ee183225a546deed23d0a3f7f863a22fe62f07" -> "sha256:e49ccf2a4f787720465412374c455a8cf04c5784ba440ad59da504389cc25832" [label=""];
}

