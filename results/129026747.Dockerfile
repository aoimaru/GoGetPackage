[app/sources/129026747.Dockerfile]
digraph {
  "sha256:f694ce46e94bdba1d4636589a68d5959137778fdc0c538247740a76c8fe22d8a" [label="local://context" shape="ellipse"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:66f04c6f35895ff634ae59903b70fac4502b141696447298d5a2c5caa0af1969" [label="copy{src=/clean-apt, dest=/usr/bin}" shape="note"];
  "sha256:ce5ce08ee2b78ad1925b5e6b3e3e0d9188372df76ad30063751cd6faabdb0465" [label="copy{src=/clean-install, dest=/usr/bin}" shape="note"];
  "sha256:706519e36dd324d122bc9410ea4c8ce0b0f7abd15ac915555befd40635fd61ea" [label="copy{src=/Gemfile, dest=/Gemfile}" shape="note"];
  "sha256:5ff82ecdfb421274100b7496698f34c8e890e65f137ab6da06dc62151e88eacc" [label="/bin/sh -c BUILD_DEPS=\"make gcc g++ libc6-dev ruby-dev libffi-dev\"     && clean-install $BUILD_DEPS                      ca-certificates                      libjemalloc1                      ruby     && echo 'gem: --no-document' >> /etc/gemrc     && gem install --file Gemfile     && apt-get purge -y --auto-remove                      -o APT::AutoRemove::RecommendsImportant=false                      $BUILD_DEPS     && clean-apt     && ulimit -n 65536" shape="box"];
  "sha256:cbbba253c1f728e9a59023ec2b30c0449bbc3e5fe10fd21a1c04f2be3a1e7549" [label="copy{src=/fluent.conf, dest=/etc/fluent/fluent.conf}" shape="note"];
  "sha256:f5186a51ffd418cdfa92fa50d640136fc0caee35fda652a1908a3be6a39c9bdf" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:534b3fa7758bf2aecc07c6a2954004afffc7fa4b5bc91956fd698ac21c25b700" [label="sha256:534b3fa7758bf2aecc07c6a2954004afffc7fa4b5bc91956fd698ac21c25b700" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:66f04c6f35895ff634ae59903b70fac4502b141696447298d5a2c5caa0af1969" [label=""];
  "sha256:f694ce46e94bdba1d4636589a68d5959137778fdc0c538247740a76c8fe22d8a" -> "sha256:66f04c6f35895ff634ae59903b70fac4502b141696447298d5a2c5caa0af1969" [label=""];
  "sha256:66f04c6f35895ff634ae59903b70fac4502b141696447298d5a2c5caa0af1969" -> "sha256:ce5ce08ee2b78ad1925b5e6b3e3e0d9188372df76ad30063751cd6faabdb0465" [label=""];
  "sha256:f694ce46e94bdba1d4636589a68d5959137778fdc0c538247740a76c8fe22d8a" -> "sha256:ce5ce08ee2b78ad1925b5e6b3e3e0d9188372df76ad30063751cd6faabdb0465" [label=""];
  "sha256:ce5ce08ee2b78ad1925b5e6b3e3e0d9188372df76ad30063751cd6faabdb0465" -> "sha256:706519e36dd324d122bc9410ea4c8ce0b0f7abd15ac915555befd40635fd61ea" [label=""];
  "sha256:f694ce46e94bdba1d4636589a68d5959137778fdc0c538247740a76c8fe22d8a" -> "sha256:706519e36dd324d122bc9410ea4c8ce0b0f7abd15ac915555befd40635fd61ea" [label=""];
  "sha256:706519e36dd324d122bc9410ea4c8ce0b0f7abd15ac915555befd40635fd61ea" -> "sha256:5ff82ecdfb421274100b7496698f34c8e890e65f137ab6da06dc62151e88eacc" [label=""];
  "sha256:5ff82ecdfb421274100b7496698f34c8e890e65f137ab6da06dc62151e88eacc" -> "sha256:cbbba253c1f728e9a59023ec2b30c0449bbc3e5fe10fd21a1c04f2be3a1e7549" [label=""];
  "sha256:f694ce46e94bdba1d4636589a68d5959137778fdc0c538247740a76c8fe22d8a" -> "sha256:cbbba253c1f728e9a59023ec2b30c0449bbc3e5fe10fd21a1c04f2be3a1e7549" [label=""];
  "sha256:cbbba253c1f728e9a59023ec2b30c0449bbc3e5fe10fd21a1c04f2be3a1e7549" -> "sha256:f5186a51ffd418cdfa92fa50d640136fc0caee35fda652a1908a3be6a39c9bdf" [label=""];
  "sha256:f694ce46e94bdba1d4636589a68d5959137778fdc0c538247740a76c8fe22d8a" -> "sha256:f5186a51ffd418cdfa92fa50d640136fc0caee35fda652a1908a3be6a39c9bdf" [label=""];
  "sha256:f5186a51ffd418cdfa92fa50d640136fc0caee35fda652a1908a3be6a39c9bdf" -> "sha256:534b3fa7758bf2aecc07c6a2954004afffc7fa4b5bc91956fd698ac21c25b700" [label=""];
}

