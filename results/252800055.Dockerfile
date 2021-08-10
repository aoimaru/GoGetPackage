[app/sources/252800055.Dockerfile]
digraph {
  "sha256:9fdae6d5380305d1197c245c51d1ef2f43c793f21a2546fb3939b21f3c21106c" [label="docker-image://docker.io/phusion/passenger-ruby18:latest" shape="ellipse"];
  "sha256:45cfdf77bcd208c7a188e5d6507aa5c9e6f6eaaa4838ea5471a6b1924d60459f" [label="/bin/sh -c BUILD_DEPS=\"libmysqlclient-dev libmagickwand-dev\" && rm /etc/apt/sources.list.d/redis.list && apt-get update && apt-get install -y $BUILD_DEPS" shape="box"];
  "sha256:c326480ccf9405b2d237729829e81ca95da8bdb4619f86530b2c88e2181cc3ff" [label="local://context" shape="ellipse"];
  "sha256:44c4a487d48cc2d642ff820e5b43449f42fb11975bcbdc263a738d2e6d17cda3" [label="copy{src=/Gemfile, dest=/root/Gemfile}" shape="note"];
  "sha256:7aecb786f5995abafd2609ae7b2c7f8c5b7a8012a7409cd60fb43c10bca0baa9" [label="/bin/sh -c cd /root && bundle" shape="box"];
  "sha256:e77abed58b3fce84a0a2a566623d1fe8734c930addf0500182c5b13c0f49fbcf" [label="/bin/sh -c rm -f /etc/service/nginx/down /etc/nginx/sites-enabled/* && apt-get purge -y --auto-remove $BUILD_DEPS && apt-get autoremove && apt-get clean && rm -rf /var/cache/apt/* /var/lib/apt/lists/*" shape="box"];
  "sha256:e180083194976915600701df2f539345354739bb8fe902a8917b4c0abd925eb8" [label="/bin/sh -c mkdir /home/app/webapp" shape="box"];
  "sha256:7dc6a9f89a5d8098057efa10cef92a9a3b818780616abc20283f1f672f0fe2cd" [label="copy{src=/nginx.conf, dest=/etc/nginx/sites-enabled/webapp.conf}" shape="note"];
  "sha256:f134b6e4fa77c28af2dbcea04fa126e157c746deb1e78b6b68a16c6f3e7acf89" [label="sha256:f134b6e4fa77c28af2dbcea04fa126e157c746deb1e78b6b68a16c6f3e7acf89" shape="plaintext"];
  "sha256:9fdae6d5380305d1197c245c51d1ef2f43c793f21a2546fb3939b21f3c21106c" -> "sha256:45cfdf77bcd208c7a188e5d6507aa5c9e6f6eaaa4838ea5471a6b1924d60459f" [label=""];
  "sha256:45cfdf77bcd208c7a188e5d6507aa5c9e6f6eaaa4838ea5471a6b1924d60459f" -> "sha256:44c4a487d48cc2d642ff820e5b43449f42fb11975bcbdc263a738d2e6d17cda3" [label=""];
  "sha256:c326480ccf9405b2d237729829e81ca95da8bdb4619f86530b2c88e2181cc3ff" -> "sha256:44c4a487d48cc2d642ff820e5b43449f42fb11975bcbdc263a738d2e6d17cda3" [label=""];
  "sha256:44c4a487d48cc2d642ff820e5b43449f42fb11975bcbdc263a738d2e6d17cda3" -> "sha256:7aecb786f5995abafd2609ae7b2c7f8c5b7a8012a7409cd60fb43c10bca0baa9" [label=""];
  "sha256:7aecb786f5995abafd2609ae7b2c7f8c5b7a8012a7409cd60fb43c10bca0baa9" -> "sha256:e77abed58b3fce84a0a2a566623d1fe8734c930addf0500182c5b13c0f49fbcf" [label=""];
  "sha256:e77abed58b3fce84a0a2a566623d1fe8734c930addf0500182c5b13c0f49fbcf" -> "sha256:e180083194976915600701df2f539345354739bb8fe902a8917b4c0abd925eb8" [label=""];
  "sha256:e180083194976915600701df2f539345354739bb8fe902a8917b4c0abd925eb8" -> "sha256:7dc6a9f89a5d8098057efa10cef92a9a3b818780616abc20283f1f672f0fe2cd" [label=""];
  "sha256:c326480ccf9405b2d237729829e81ca95da8bdb4619f86530b2c88e2181cc3ff" -> "sha256:7dc6a9f89a5d8098057efa10cef92a9a3b818780616abc20283f1f672f0fe2cd" [label=""];
  "sha256:7dc6a9f89a5d8098057efa10cef92a9a3b818780616abc20283f1f672f0fe2cd" -> "sha256:f134b6e4fa77c28af2dbcea04fa126e157c746deb1e78b6b68a16c6f3e7acf89" [label=""];
}

