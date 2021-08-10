[app/sources/457807531.Dockerfile]
digraph {
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" [label="docker-image://docker.io/library/python:2" shape="ellipse"];
  "sha256:3152a4c7a22a0b041dafe454ca50583d9348775fa932ac25263a3e622251ce58" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:a87fc11c1c89f46060f0a437cfceb4bca1d57348eed2e7ce08ba05654c908a6f" [label="/bin/sh -c apt-get install -y python-dev libmysqlclient-dev libpq-dev git" shape="box"];
  "sha256:d790c762ed2f52119ad9ae2fb68623e25045802dc9a27ed5db169291e810d9fd" [label="/bin/sh -c pip install git+https://github.com/mardiros/pyramid_xmlrpc.git" shape="box"];
  "sha256:4dd6d51e968af6bdb25dd2dd96355123e3077b67bd6494f98c6792909350f0ca" [label="/bin/sh -c pip install waitress mysql-python psycopg2" shape="box"];
  "sha256:2e8f464c24df6061d352e38e6261db5e5d3440ea498e2daf1a478c3892faa351" [label="/bin/sh -c useradd -m docker" shape="box"];
  "sha256:b50dc4d1bae42c7aa3814e8fb0ebdfdb5d9ca39eb701b84ea26c3efa96d92e07" [label="local://context" shape="ellipse"];
  "sha256:8b7d1bdadbd00bf3b8fb445e9c602d30ba2dcc1102e4d8334c834ec1edf7ac1c" [label="copy{src=/, dest=/srv/pyshop}" shape="note"];
  "sha256:a22fb28619e66de971ff061e3b1241a01093e90be2e49174c68c0edb808d1a42" [label="mkdir{path=/srv/pyshop}" shape="note"];
  "sha256:6adf90fbe50e28682033688223f80565c7113e6ef295bacfec36c35a04aee72f" [label="/bin/sh -c python setup.py install" shape="box"];
  "sha256:93cbe5b36cbc88d3239993ff48b34f162f4a344bb523a8fb93245d9573910074" [label="/bin/sh -c python setup.py develop" shape="box"];
  "sha256:2af8bd90421a196187a9b23127b6b84d370381926ef9f20fa7864de7c13d6032" [label="/bin/sh -c chown -R docker /srv/pyshop" shape="box"];
  "sha256:ef50798a0413dfc105c46eaadec9db14354e8590b9e755b02937cfbb9ef6c750" [label="/bin/sh -c pyshop_setup -y $PYSHOP_CONFIG_URI" shape="box"];
  "sha256:fe30bd0b38e74c163877df3cf3e3ff7957857035b8aa1935ce659c2b428c6f5f" [label="/bin/sh -c cp /srv/pyshop/docker/entrypoint.sh /docker-entrypoint.sh" shape="box"];
  "sha256:61c0e477cd379463b5f5e79ed674f7b91c009406d9226287d301f41c0a568bdd" [label="/bin/sh -c chmod 750  /docker-entrypoint.sh" shape="box"];
  "sha256:35fb5abddb856cd9a9557a907a1f393589bc6c9b3514267055b69850829de6a0" [label="/bin/sh -c chown docker /docker-entrypoint.sh" shape="box"];
  "sha256:c1ffb55325dc8f79d1c268ae4398953ba72c543b25698969a544d9f2b8c99720" [label="sha256:c1ffb55325dc8f79d1c268ae4398953ba72c543b25698969a544d9f2b8c99720" shape="plaintext"];
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" -> "sha256:3152a4c7a22a0b041dafe454ca50583d9348775fa932ac25263a3e622251ce58" [label=""];
  "sha256:3152a4c7a22a0b041dafe454ca50583d9348775fa932ac25263a3e622251ce58" -> "sha256:a87fc11c1c89f46060f0a437cfceb4bca1d57348eed2e7ce08ba05654c908a6f" [label=""];
  "sha256:a87fc11c1c89f46060f0a437cfceb4bca1d57348eed2e7ce08ba05654c908a6f" -> "sha256:d790c762ed2f52119ad9ae2fb68623e25045802dc9a27ed5db169291e810d9fd" [label=""];
  "sha256:d790c762ed2f52119ad9ae2fb68623e25045802dc9a27ed5db169291e810d9fd" -> "sha256:4dd6d51e968af6bdb25dd2dd96355123e3077b67bd6494f98c6792909350f0ca" [label=""];
  "sha256:4dd6d51e968af6bdb25dd2dd96355123e3077b67bd6494f98c6792909350f0ca" -> "sha256:2e8f464c24df6061d352e38e6261db5e5d3440ea498e2daf1a478c3892faa351" [label=""];
  "sha256:2e8f464c24df6061d352e38e6261db5e5d3440ea498e2daf1a478c3892faa351" -> "sha256:8b7d1bdadbd00bf3b8fb445e9c602d30ba2dcc1102e4d8334c834ec1edf7ac1c" [label=""];
  "sha256:b50dc4d1bae42c7aa3814e8fb0ebdfdb5d9ca39eb701b84ea26c3efa96d92e07" -> "sha256:8b7d1bdadbd00bf3b8fb445e9c602d30ba2dcc1102e4d8334c834ec1edf7ac1c" [label=""];
  "sha256:8b7d1bdadbd00bf3b8fb445e9c602d30ba2dcc1102e4d8334c834ec1edf7ac1c" -> "sha256:a22fb28619e66de971ff061e3b1241a01093e90be2e49174c68c0edb808d1a42" [label=""];
  "sha256:a22fb28619e66de971ff061e3b1241a01093e90be2e49174c68c0edb808d1a42" -> "sha256:6adf90fbe50e28682033688223f80565c7113e6ef295bacfec36c35a04aee72f" [label=""];
  "sha256:6adf90fbe50e28682033688223f80565c7113e6ef295bacfec36c35a04aee72f" -> "sha256:93cbe5b36cbc88d3239993ff48b34f162f4a344bb523a8fb93245d9573910074" [label=""];
  "sha256:93cbe5b36cbc88d3239993ff48b34f162f4a344bb523a8fb93245d9573910074" -> "sha256:2af8bd90421a196187a9b23127b6b84d370381926ef9f20fa7864de7c13d6032" [label=""];
  "sha256:2af8bd90421a196187a9b23127b6b84d370381926ef9f20fa7864de7c13d6032" -> "sha256:ef50798a0413dfc105c46eaadec9db14354e8590b9e755b02937cfbb9ef6c750" [label=""];
  "sha256:ef50798a0413dfc105c46eaadec9db14354e8590b9e755b02937cfbb9ef6c750" -> "sha256:fe30bd0b38e74c163877df3cf3e3ff7957857035b8aa1935ce659c2b428c6f5f" [label=""];
  "sha256:fe30bd0b38e74c163877df3cf3e3ff7957857035b8aa1935ce659c2b428c6f5f" -> "sha256:61c0e477cd379463b5f5e79ed674f7b91c009406d9226287d301f41c0a568bdd" [label=""];
  "sha256:61c0e477cd379463b5f5e79ed674f7b91c009406d9226287d301f41c0a568bdd" -> "sha256:35fb5abddb856cd9a9557a907a1f393589bc6c9b3514267055b69850829de6a0" [label=""];
  "sha256:35fb5abddb856cd9a9557a907a1f393589bc6c9b3514267055b69850829de6a0" -> "sha256:c1ffb55325dc8f79d1c268ae4398953ba72c543b25698969a544d9f2b8c99720" [label=""];
}

