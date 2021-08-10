[app/sources/338086190.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2bae660c301ea7c09ae95cc293a9f22d664fd5f6d996bb3de2c433346e9ab943" [label="mkdir{path=/root}" shape="note"];
  "sha256:dbc3310c8fe70a6a819c9db3ae5d6abc74100dece5e6143a692aaea96b4b57d7" [label="/bin/sh -c apt-get update && apt-get install -y  --no-install-recommends         python-pip         python-setuptools &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9f9e7bf9bfe218caa4643b959f3d83102edaf1a3a1246eebf774050e30edc60f" [label="local://context" shape="ellipse"];
  "sha256:ad3f2fd130b4df495714ace54498320bc876e62b630c2895492cc734ae3259b6" [label="copy{src=/requirements.txt, dest=/root}" shape="note"];
  "sha256:45fb45d997e4978342c9daeaaff6ee9ee0f3d21553dadae4fc44b16f280b1747" [label="/bin/sh -c pip --no-cache-dir install --upgrade pip" shape="box"];
  "sha256:d17361d358e0bfa413bd96747271c6b17177398f76f16a6b559449e02c3fcc1e" [label="/bin/sh -c pip --no-cache-dir install -r /root/requirements.txt" shape="box"];
  "sha256:74c907a61a617e87c93cf36582d22703decd06b325f5709a20841009edb5ee95" [label="copy{src=/frameworks/sogou_translate/entrypoint.py, dest=/root}" shape="note"];
  "sha256:3b44ecda0ea06f010df03361d753d9bc32025c0fd4618853f3bf1af8571802d1" [label="copy{src=/nmtwizard, dest=/root/nmtwizard}" shape="note"];
  "sha256:bbd56eb04ff42730735b2836485ea9f32f231d35a2888665fc9daa02015492c7" [label="sha256:bbd56eb04ff42730735b2836485ea9f32f231d35a2888665fc9daa02015492c7" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2bae660c301ea7c09ae95cc293a9f22d664fd5f6d996bb3de2c433346e9ab943" [label=""];
  "sha256:2bae660c301ea7c09ae95cc293a9f22d664fd5f6d996bb3de2c433346e9ab943" -> "sha256:dbc3310c8fe70a6a819c9db3ae5d6abc74100dece5e6143a692aaea96b4b57d7" [label=""];
  "sha256:dbc3310c8fe70a6a819c9db3ae5d6abc74100dece5e6143a692aaea96b4b57d7" -> "sha256:ad3f2fd130b4df495714ace54498320bc876e62b630c2895492cc734ae3259b6" [label=""];
  "sha256:9f9e7bf9bfe218caa4643b959f3d83102edaf1a3a1246eebf774050e30edc60f" -> "sha256:ad3f2fd130b4df495714ace54498320bc876e62b630c2895492cc734ae3259b6" [label=""];
  "sha256:ad3f2fd130b4df495714ace54498320bc876e62b630c2895492cc734ae3259b6" -> "sha256:45fb45d997e4978342c9daeaaff6ee9ee0f3d21553dadae4fc44b16f280b1747" [label=""];
  "sha256:45fb45d997e4978342c9daeaaff6ee9ee0f3d21553dadae4fc44b16f280b1747" -> "sha256:d17361d358e0bfa413bd96747271c6b17177398f76f16a6b559449e02c3fcc1e" [label=""];
  "sha256:d17361d358e0bfa413bd96747271c6b17177398f76f16a6b559449e02c3fcc1e" -> "sha256:74c907a61a617e87c93cf36582d22703decd06b325f5709a20841009edb5ee95" [label=""];
  "sha256:9f9e7bf9bfe218caa4643b959f3d83102edaf1a3a1246eebf774050e30edc60f" -> "sha256:74c907a61a617e87c93cf36582d22703decd06b325f5709a20841009edb5ee95" [label=""];
  "sha256:74c907a61a617e87c93cf36582d22703decd06b325f5709a20841009edb5ee95" -> "sha256:3b44ecda0ea06f010df03361d753d9bc32025c0fd4618853f3bf1af8571802d1" [label=""];
  "sha256:9f9e7bf9bfe218caa4643b959f3d83102edaf1a3a1246eebf774050e30edc60f" -> "sha256:3b44ecda0ea06f010df03361d753d9bc32025c0fd4618853f3bf1af8571802d1" [label=""];
  "sha256:3b44ecda0ea06f010df03361d753d9bc32025c0fd4618853f3bf1af8571802d1" -> "sha256:bbd56eb04ff42730735b2836485ea9f32f231d35a2888665fc9daa02015492c7" [label=""];
}

