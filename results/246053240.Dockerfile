[app/sources/246053240.Dockerfile]
digraph {
  "sha256:8591e01fbc0f72f302a3053f3553483ce33fce34728c7d4a922484566bb40f3d" [label="docker-image://docker.io/datmo/opencv:gpu-py27" shape="ellipse"];
  "sha256:07488a1f3d2936757f8417af4055f496efc783788b61309aea6a331ee47d1d9c" [label="/bin/sh -c pip install datmo" shape="box"];
  "sha256:51307ee89cff441bd78043b190a8f60642b059befcd407a4b2889acafae92365" [label="/bin/sh -c pip install tensorflow-gpu==${TENSORFLOW_VERSION}" shape="box"];
  "sha256:fbbe5a07ec7ab936c91ad87f8b3a3a51f93ba974a3fe9aea3fba48e8051850f4" [label="/bin/sh -c pip --no-cache-dir install         git+git://github.com/fchollet/keras.git@${KERAS_VERSION}         tflearn==0.3.2     && rm -rf /pip_pkg     && rm -rf /tmp/*     && rm -rf /root/.cache" shape="box"];
  "sha256:8b59979be9be65e37d44223d8951ec2dd6e3701a486d228bfcc4f1fac975057d" [label="sha256:8b59979be9be65e37d44223d8951ec2dd6e3701a486d228bfcc4f1fac975057d" shape="plaintext"];
  "sha256:8591e01fbc0f72f302a3053f3553483ce33fce34728c7d4a922484566bb40f3d" -> "sha256:07488a1f3d2936757f8417af4055f496efc783788b61309aea6a331ee47d1d9c" [label=""];
  "sha256:07488a1f3d2936757f8417af4055f496efc783788b61309aea6a331ee47d1d9c" -> "sha256:51307ee89cff441bd78043b190a8f60642b059befcd407a4b2889acafae92365" [label=""];
  "sha256:51307ee89cff441bd78043b190a8f60642b059befcd407a4b2889acafae92365" -> "sha256:fbbe5a07ec7ab936c91ad87f8b3a3a51f93ba974a3fe9aea3fba48e8051850f4" [label=""];
  "sha256:fbbe5a07ec7ab936c91ad87f8b3a3a51f93ba974a3fe9aea3fba48e8051850f4" -> "sha256:8b59979be9be65e37d44223d8951ec2dd6e3701a486d228bfcc4f1fac975057d" [label=""];
}

