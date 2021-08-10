[app/sources/470384137.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2bae660c301ea7c09ae95cc293a9f22d664fd5f6d996bb3de2c433346e9ab943" [label="mkdir{path=/root}" shape="note"];
  "sha256:4a4c97a935638f21f1b2d8df05e34ab47d8c66acf9ccbe3b389b4ccd5cd2ff34" [label="/bin/sh -c apt-get -y update &&     apt-get -y install curl &&     apt-get -y install wget &&     apt-get -y install vim &&     apt-get -y install iputils-ping &&     apt-get -y install nginx &&     apt-get -y install python-pip &&     apt-get -y install git" shape="box"];
  "sha256:71af254e2c5efce24f2cfd96cee164823c87e3f2f8de9a9649b3dab301f01d56" [label="/bin/sh -c pip --no-cache-dir install tensorflow==1.6.0 tensorflow-serving-api==1.6.1 numpy boto3 six awscli flask==0.11 Jinja2==2.9 gevent gunicorn" shape="box"];
  "sha256:0a63d703daf569cb90421265dd2643232b0f07610386f34ade3aaf58f927bdc9" [label="/bin/sh -c cd /tmp &&     curl -O https://dl.influxdata.com/telegraf/releases/telegraf_1.4.2-1_amd64.deb &&     dpkg -i telegraf_1.4.2-1_amd64.deb &&     rm telegraf_1.4.2-1_amd64.deb" shape="box"];
  "sha256:e8f8cc6386ee373ef89b71263d14b19b35e0f0b1c7086f07438ec52fa8bd4517" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends cpio cmake     python3-pip python3-venv python3-dev python3-setuptools virtualenv" shape="box"];
  "sha256:12d0d18050e962207db6a353d4b8fb96bf02ecf975815791b4a1b47a8bbd9d30" [label="local://context" shape="ellipse"];
  "sha256:a4e3fe7126db92d19fa07b5ded7c8aaf18f89e050e5c52457cbd520cbd5cdd87" [label="copy{src=/l_openvino_toolkit*.tgz, dest=/root/TEMP_DIR/}" shape="note"];
  "sha256:87d922b082b838277ed0cd4340849bab10305e5d9289c3d94e5f73388f2d9fbc" [label="/bin/sh -c cd $TEMP_DIR && pwd && ls &&     tar xf l_openvino_toolkit*.tgz &&     cd l_openvino_toolkit* &&     sed -i 's/decline/accept/g' silent.cfg &&     pwd | grep -q openvino_toolkit_p ;     if [ $? = 0 ];then sed -i 's/COMPONENTS=DEFAULTS/COMPONENTS=;intel-ism__noarch;intel-cv-sdk-base-shared__noarch;intel-cv-sdk-base-l-setupvars__noarch;intel-cv-sdk-base-l-inference-engine__noarch;intel-cv-sdk-base-gfx-install__noarch;intel-cv-sdk-base-shared-pset/g' silent.cfg; fi &&     pwd | grep -q openvino_toolkit_fpga ;     if [ $? = 0 ];then sed -i 's/COMPONENTS=DEFAULTS/COMPONENTS=;intel-ism__noarch;intel-cv-sdk-full-shared__noarch;intel-cv-sdk-full-l-setupvars__noarch;intel-cv-sdk-full-l-inference-engine__noarch;intel-cv-sdk-full-gfx-install__noarch;intel-cv-sdk-full-shared-pset/g' silent.cfg; fi &&     ./install.sh -s silent.cfg &&     rm -Rf $TEMP_DIR $INSTALL_DIR/install_dependencies $INSTALL_DIR/uninstall* /tmp/* $DL_INSTALL_DIR/documentation $DL_INSTALL_DIR/inference_engine/samples" shape="box"];
  "sha256:5bd8df3996b38c1dd2c96ee66a0a9c4707c3b6765d0001b9ab8ae7ddd699e8c7" [label="/bin/sh -c git clone https://github.com/IntelAI/OpenVINO-model-server.git /ie-serving-py" shape="box"];
  "sha256:1d82652f75f0d001ba98fd1510085e4dd2e5208f3a598bbe1ca62278736c10a9" [label="mkdir{path=/ie-serving-py}" shape="note"];
  "sha256:df3d3fbe56a5dcf3afcbaddfa2458d6e2f03564236a5078db044f218db2ebd11" [label="/bin/sh -c virtualenv -p python3 .venv &&     . .venv/bin/activate && pip3 --no-cache-dir install -r requirements.txt" shape="box"];
  "sha256:aa5a5b18319d18fb5cbd1380b2fb77de8b67941e7219bcec155abc97a358b127" [label="/bin/sh -c . .venv/bin/activate && pip3 install ." shape="box"];
  "sha256:c3b1228f2841ad3eed44c46eab87a13dfd3227a940cc242cd8e1fe14a4857e5d" [label="copy{src=/sagemaker_tensorflow_container-1.0.0.tar.gz, dest=/ie-serving-py/}" shape="note"];
  "sha256:9b35e1d132cdf44134e24a7cd99ea51de6fd95ce2cb94332c350f724864f5680" [label="/bin/sh -c pip install sagemaker_tensorflow_container-1.0.0.tar.gz sagemaker-container-support" shape="box"];
  "sha256:25370496685ae04c40a2f2d1758e32871cd79e58d25ee2f787ae6f5fc9774f17" [label="/bin/sh -c rm sagemaker_tensorflow_container-1.0.0.tar.gz" shape="box"];
  "sha256:c3655e68056166687bd2c2c31fca9decfc4906e6294e2b6c4a67989fdd122588" [label="sha256:c3655e68056166687bd2c2c31fca9decfc4906e6294e2b6c4a67989fdd122588" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2bae660c301ea7c09ae95cc293a9f22d664fd5f6d996bb3de2c433346e9ab943" [label=""];
  "sha256:2bae660c301ea7c09ae95cc293a9f22d664fd5f6d996bb3de2c433346e9ab943" -> "sha256:4a4c97a935638f21f1b2d8df05e34ab47d8c66acf9ccbe3b389b4ccd5cd2ff34" [label=""];
  "sha256:4a4c97a935638f21f1b2d8df05e34ab47d8c66acf9ccbe3b389b4ccd5cd2ff34" -> "sha256:71af254e2c5efce24f2cfd96cee164823c87e3f2f8de9a9649b3dab301f01d56" [label=""];
  "sha256:71af254e2c5efce24f2cfd96cee164823c87e3f2f8de9a9649b3dab301f01d56" -> "sha256:0a63d703daf569cb90421265dd2643232b0f07610386f34ade3aaf58f927bdc9" [label=""];
  "sha256:0a63d703daf569cb90421265dd2643232b0f07610386f34ade3aaf58f927bdc9" -> "sha256:e8f8cc6386ee373ef89b71263d14b19b35e0f0b1c7086f07438ec52fa8bd4517" [label=""];
  "sha256:e8f8cc6386ee373ef89b71263d14b19b35e0f0b1c7086f07438ec52fa8bd4517" -> "sha256:a4e3fe7126db92d19fa07b5ded7c8aaf18f89e050e5c52457cbd520cbd5cdd87" [label=""];
  "sha256:12d0d18050e962207db6a353d4b8fb96bf02ecf975815791b4a1b47a8bbd9d30" -> "sha256:a4e3fe7126db92d19fa07b5ded7c8aaf18f89e050e5c52457cbd520cbd5cdd87" [label=""];
  "sha256:a4e3fe7126db92d19fa07b5ded7c8aaf18f89e050e5c52457cbd520cbd5cdd87" -> "sha256:87d922b082b838277ed0cd4340849bab10305e5d9289c3d94e5f73388f2d9fbc" [label=""];
  "sha256:87d922b082b838277ed0cd4340849bab10305e5d9289c3d94e5f73388f2d9fbc" -> "sha256:5bd8df3996b38c1dd2c96ee66a0a9c4707c3b6765d0001b9ab8ae7ddd699e8c7" [label=""];
  "sha256:5bd8df3996b38c1dd2c96ee66a0a9c4707c3b6765d0001b9ab8ae7ddd699e8c7" -> "sha256:1d82652f75f0d001ba98fd1510085e4dd2e5208f3a598bbe1ca62278736c10a9" [label=""];
  "sha256:1d82652f75f0d001ba98fd1510085e4dd2e5208f3a598bbe1ca62278736c10a9" -> "sha256:df3d3fbe56a5dcf3afcbaddfa2458d6e2f03564236a5078db044f218db2ebd11" [label=""];
  "sha256:df3d3fbe56a5dcf3afcbaddfa2458d6e2f03564236a5078db044f218db2ebd11" -> "sha256:aa5a5b18319d18fb5cbd1380b2fb77de8b67941e7219bcec155abc97a358b127" [label=""];
  "sha256:aa5a5b18319d18fb5cbd1380b2fb77de8b67941e7219bcec155abc97a358b127" -> "sha256:c3b1228f2841ad3eed44c46eab87a13dfd3227a940cc242cd8e1fe14a4857e5d" [label=""];
  "sha256:12d0d18050e962207db6a353d4b8fb96bf02ecf975815791b4a1b47a8bbd9d30" -> "sha256:c3b1228f2841ad3eed44c46eab87a13dfd3227a940cc242cd8e1fe14a4857e5d" [label=""];
  "sha256:c3b1228f2841ad3eed44c46eab87a13dfd3227a940cc242cd8e1fe14a4857e5d" -> "sha256:9b35e1d132cdf44134e24a7cd99ea51de6fd95ce2cb94332c350f724864f5680" [label=""];
  "sha256:9b35e1d132cdf44134e24a7cd99ea51de6fd95ce2cb94332c350f724864f5680" -> "sha256:25370496685ae04c40a2f2d1758e32871cd79e58d25ee2f787ae6f5fc9774f17" [label=""];
  "sha256:25370496685ae04c40a2f2d1758e32871cd79e58d25ee2f787ae6f5fc9774f17" -> "sha256:c3655e68056166687bd2c2c31fca9decfc4906e6294e2b6c4a67989fdd122588" [label=""];
}

