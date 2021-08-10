[app/sources/155138391.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:f0c6b682f6caa0e31361dede7ea8429ff689045606d588cb1685465a375cdbb2" [label="/bin/sh -c yum install epel-release -y" shape="box"];
  "sha256:ba4644dbbe102da4821c576eb8c07a7b91d54ce4d1d6ef40f0ce74c755c66815" [label="/bin/sh -c yum install nginx -y" shape="box"];
  "sha256:f045dc8d8426fb8d65ddf0c01e14e74b209a569040bdce0376e30ab6dbef0532" [label="/bin/sh -c yum -y install mysql-devel" shape="box"];
  "sha256:f24a087beb1494117a169d20beecac133c59972108b0594db953aa9a86db44cc" [label="/bin/sh -c yum install python2-pip -y" shape="box"];
  "sha256:17cfad29d60bb3483bf90799887102a7f38d7f6f9f1383423a0b2edd462c1cf9" [label="/bin/sh -c mkdir -v ~/.pip && echo -e \"[global]\\ntimeout = 60\\nindex-url = https://pypi.douban.com/simple\" > ~/.pip/pip.conf" shape="box"];
  "sha256:027de38d5631ed75550d4f23a8ac2d711bfb017e3f6da4f6c95ddf9f516219f4" [label="/bin/sh -c pip install gunicorn" shape="box"];
  "sha256:aec228faf6876823d5c3674e37e2285c246f7b45461538be18c34d96c276bd53" [label="/bin/sh -c pip install gevent" shape="box"];
  "sha256:9405ec6f20680c12a7b6edeaf8172bf204370abdfbead6670c638a2c864649c3" [label="local://context" shape="ellipse"];
  "sha256:c49631433d47fa9ad7c7520b90934c87a43d5f5d7b399f2a0a544f5f54d78754" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:f860ca86db2546af252fdb69d3ab92e988363cd4a458615eb1ea532b22083b88" [label="copy{src=/install.sh, dest=/var/install.sh}" shape="note"];
  "sha256:417daa59ef0808c65ee5d71be57154b4b6ba933ceff6a17f0a9c97d4bc29a448" [label="copy{src=/start.sh, dest=/var/start.sh}" shape="note"];
  "sha256:36f8616b99175ad43bbc474570d52d93256d15b5e4db7be92be12f4b5fa56286" [label="sha256:36f8616b99175ad43bbc474570d52d93256d15b5e4db7be92be12f4b5fa56286" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:f0c6b682f6caa0e31361dede7ea8429ff689045606d588cb1685465a375cdbb2" [label=""];
  "sha256:f0c6b682f6caa0e31361dede7ea8429ff689045606d588cb1685465a375cdbb2" -> "sha256:ba4644dbbe102da4821c576eb8c07a7b91d54ce4d1d6ef40f0ce74c755c66815" [label=""];
  "sha256:ba4644dbbe102da4821c576eb8c07a7b91d54ce4d1d6ef40f0ce74c755c66815" -> "sha256:f045dc8d8426fb8d65ddf0c01e14e74b209a569040bdce0376e30ab6dbef0532" [label=""];
  "sha256:f045dc8d8426fb8d65ddf0c01e14e74b209a569040bdce0376e30ab6dbef0532" -> "sha256:f24a087beb1494117a169d20beecac133c59972108b0594db953aa9a86db44cc" [label=""];
  "sha256:f24a087beb1494117a169d20beecac133c59972108b0594db953aa9a86db44cc" -> "sha256:17cfad29d60bb3483bf90799887102a7f38d7f6f9f1383423a0b2edd462c1cf9" [label=""];
  "sha256:17cfad29d60bb3483bf90799887102a7f38d7f6f9f1383423a0b2edd462c1cf9" -> "sha256:027de38d5631ed75550d4f23a8ac2d711bfb017e3f6da4f6c95ddf9f516219f4" [label=""];
  "sha256:027de38d5631ed75550d4f23a8ac2d711bfb017e3f6da4f6c95ddf9f516219f4" -> "sha256:aec228faf6876823d5c3674e37e2285c246f7b45461538be18c34d96c276bd53" [label=""];
  "sha256:aec228faf6876823d5c3674e37e2285c246f7b45461538be18c34d96c276bd53" -> "sha256:c49631433d47fa9ad7c7520b90934c87a43d5f5d7b399f2a0a544f5f54d78754" [label=""];
  "sha256:9405ec6f20680c12a7b6edeaf8172bf204370abdfbead6670c638a2c864649c3" -> "sha256:c49631433d47fa9ad7c7520b90934c87a43d5f5d7b399f2a0a544f5f54d78754" [label=""];
  "sha256:c49631433d47fa9ad7c7520b90934c87a43d5f5d7b399f2a0a544f5f54d78754" -> "sha256:f860ca86db2546af252fdb69d3ab92e988363cd4a458615eb1ea532b22083b88" [label=""];
  "sha256:9405ec6f20680c12a7b6edeaf8172bf204370abdfbead6670c638a2c864649c3" -> "sha256:f860ca86db2546af252fdb69d3ab92e988363cd4a458615eb1ea532b22083b88" [label=""];
  "sha256:f860ca86db2546af252fdb69d3ab92e988363cd4a458615eb1ea532b22083b88" -> "sha256:417daa59ef0808c65ee5d71be57154b4b6ba933ceff6a17f0a9c97d4bc29a448" [label=""];
  "sha256:9405ec6f20680c12a7b6edeaf8172bf204370abdfbead6670c638a2c864649c3" -> "sha256:417daa59ef0808c65ee5d71be57154b4b6ba933ceff6a17f0a9c97d4bc29a448" [label=""];
  "sha256:417daa59ef0808c65ee5d71be57154b4b6ba933ceff6a17f0a9c97d4bc29a448" -> "sha256:36f8616b99175ad43bbc474570d52d93256d15b5e4db7be92be12f4b5fa56286" [label=""];
}

