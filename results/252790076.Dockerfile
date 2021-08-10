[app/sources/252790076.Dockerfile]
digraph {
  "sha256:b6ab5c31d905a64621822ca9d391bd0df3180add22431b5a6e6700129af30fc3" [label="docker-image://docker.io/camptocamp/collectd:v0.2.3" shape="ellipse"];
  "sha256:5b86beeddec9bc9a384fca4343426da7d4b3bed4d1507c6d0640293308f60246" [label="/bin/sh -c apt-get update && apt-get -y upgrade && apt-get -y --no-install-suggests --no-install-recommends install libpq5 postgresql-client && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:355233fa4cbea64d3c7d24a8b3a326c91922f978e957ee7669f8f1195469d9a5" [label="local://context" shape="ellipse"];
  "sha256:43e189a72109d0a07582a1801bb377780b4727bee58f65a5df94bdf31473da2e" [label="copy{src=/conf.d, dest=/etc/confd/conf.d}" shape="note"];
  "sha256:4a18ee4e515dabe83dacd5580fbe29a4e1db09b1838e0e1507402275ef56788c" [label="copy{src=/templates, dest=/etc/confd/templates}" shape="note"];
  "sha256:3bb16fb1b7c1e144adcf58771b117a972d9dc9605998e3f0a004b76018d5677c" [label="copy{src=/confd.run, dest=/etc/service/confd/run}" shape="note"];
  "sha256:64086270254c4e9d91958889f0f4377f83219ccedb89dd1ee2dd7b1a467a9c92" [label="copy{src=/collectd.run, dest=/etc/service/collectd/run}" shape="note"];
  "sha256:087ca812c90f1b2a4d212d856186842e1c270d824a93a017c2dfc69250eb673d" [label="/bin/sh -c echo \"collectd_postgresql\" > /etc/service/collectd/env/PGAPPNAME" shape="box"];
  "sha256:fb203fbf07857aee42c117d40fb36e7912442999340a411cab836941d35b289d" [label="copy{src=/config/*.conf, dest=/etc/collectd/collectd.conf.d/}" shape="note"];
  "sha256:685a58ef70ae6f6b02af281d6197fa338c5da977ce3f879e7e421fcc9b1e7324" [label="sha256:685a58ef70ae6f6b02af281d6197fa338c5da977ce3f879e7e421fcc9b1e7324" shape="plaintext"];
  "sha256:b6ab5c31d905a64621822ca9d391bd0df3180add22431b5a6e6700129af30fc3" -> "sha256:5b86beeddec9bc9a384fca4343426da7d4b3bed4d1507c6d0640293308f60246" [label=""];
  "sha256:5b86beeddec9bc9a384fca4343426da7d4b3bed4d1507c6d0640293308f60246" -> "sha256:43e189a72109d0a07582a1801bb377780b4727bee58f65a5df94bdf31473da2e" [label=""];
  "sha256:355233fa4cbea64d3c7d24a8b3a326c91922f978e957ee7669f8f1195469d9a5" -> "sha256:43e189a72109d0a07582a1801bb377780b4727bee58f65a5df94bdf31473da2e" [label=""];
  "sha256:43e189a72109d0a07582a1801bb377780b4727bee58f65a5df94bdf31473da2e" -> "sha256:4a18ee4e515dabe83dacd5580fbe29a4e1db09b1838e0e1507402275ef56788c" [label=""];
  "sha256:355233fa4cbea64d3c7d24a8b3a326c91922f978e957ee7669f8f1195469d9a5" -> "sha256:4a18ee4e515dabe83dacd5580fbe29a4e1db09b1838e0e1507402275ef56788c" [label=""];
  "sha256:4a18ee4e515dabe83dacd5580fbe29a4e1db09b1838e0e1507402275ef56788c" -> "sha256:3bb16fb1b7c1e144adcf58771b117a972d9dc9605998e3f0a004b76018d5677c" [label=""];
  "sha256:355233fa4cbea64d3c7d24a8b3a326c91922f978e957ee7669f8f1195469d9a5" -> "sha256:3bb16fb1b7c1e144adcf58771b117a972d9dc9605998e3f0a004b76018d5677c" [label=""];
  "sha256:3bb16fb1b7c1e144adcf58771b117a972d9dc9605998e3f0a004b76018d5677c" -> "sha256:64086270254c4e9d91958889f0f4377f83219ccedb89dd1ee2dd7b1a467a9c92" [label=""];
  "sha256:355233fa4cbea64d3c7d24a8b3a326c91922f978e957ee7669f8f1195469d9a5" -> "sha256:64086270254c4e9d91958889f0f4377f83219ccedb89dd1ee2dd7b1a467a9c92" [label=""];
  "sha256:64086270254c4e9d91958889f0f4377f83219ccedb89dd1ee2dd7b1a467a9c92" -> "sha256:087ca812c90f1b2a4d212d856186842e1c270d824a93a017c2dfc69250eb673d" [label=""];
  "sha256:087ca812c90f1b2a4d212d856186842e1c270d824a93a017c2dfc69250eb673d" -> "sha256:fb203fbf07857aee42c117d40fb36e7912442999340a411cab836941d35b289d" [label=""];
  "sha256:355233fa4cbea64d3c7d24a8b3a326c91922f978e957ee7669f8f1195469d9a5" -> "sha256:fb203fbf07857aee42c117d40fb36e7912442999340a411cab836941d35b289d" [label=""];
  "sha256:fb203fbf07857aee42c117d40fb36e7912442999340a411cab836941d35b289d" -> "sha256:685a58ef70ae6f6b02af281d6197fa338c5da977ce3f879e7e421fcc9b1e7324" [label=""];
}

