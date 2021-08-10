[app/sources/432743882.Dockerfile]
digraph {
  "sha256:ef890137d5502a8676371e87a972aadbc578dbf4a2406485cfbea68abdae465a" [label="local://context" shape="ellipse"];
  "sha256:245752d5e5716683cacaf7ce50b8c7793611423951315a0c1712ee3476a70ff0" [label="docker-image://docker.io/instructure/ruby-passenger:2.4-xenial" shape="ellipse"];
  "sha256:1f40250e9cbe2fd194696aa4ff9cb7c18da24a4384c9109a40c819bdc14d638d" [label="mkdir{path=/root}" shape="note"];
  "sha256:d94a65181f7f964115e95e299a16c1b5cb54af07becb072505d9aa0642c54c38" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_10.x | bash -   && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -   && echo \"deb https://dl.yarnpkg.com/debian/ stable main\" > /etc/apt/sources.list.d/yarn.list   && printf 'path-exclude /usr/share/doc/*\\npath-exclude /usr/share/man/*' > /etc/dpkg/dpkg.cfg.d/01_nodoc   && echo \"deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main\" > /etc/apt/sources.list.d/pgdg.list   && curl -sS https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -   && apt-get update -qq   && apt-get install -qqy --no-install-recommends        nodejs        yarn=\"$YARN_VERSION\"        libxmlsec1-dev        python-lxml        libicu-dev        postgresql-client-9.5        unzip        fontforge   && apt-get clean   && rm -rf /var/lib/apt/lists/*   && mkdir -p /home/docker/.gem/ruby/$RUBY_MAJOR.0" shape="box"];
  "sha256:e546cc3aeee6c21dee40674989ffb69484fd4d5214c69ccf4a4a327314b888ba" [label="/bin/sh -c if [ -e /var/lib/gems/$RUBY_MAJOR.0/gems/bundler-* ]; then BUNDLER_INSTALL=\"-i /var/lib/gems/$RUBY_MAJOR.0\"; fi   && gem uninstall --all --ignore-dependencies --force $BUNDLER_INSTALL bundler   && gem install bundler --no-document -v 1.17.3   && find $GEM_HOME ! -user docker | xargs chown docker:docker" shape="box"];
  "sha256:e333f6e416c839259a052c1c2c039183cfb73258831e441b8eb76a82c48babf4" [label="copy{src=/build/vendor/woff-code-latest.zip, dest=/root/}" shape="note"];
  "sha256:3ecdbd7737da7456a5516d42da44d009d0205faf6a84e60444e95a0f43d234f2" [label="/bin/sh -c unzip woff-code-latest.zip -d woff   && cd woff   && make   && cp sfnt2woff /usr/local/bin   && cd -   && rm -rf woff*" shape="box"];
  "sha256:8b084e45e88bdb03a5da0275f94fa2b6518407c6ffb2d3d4810c047f027c06b3" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:fdb5fdb5561e6f3ed1c87df8c3d99af97438dd121273aebd075f480e802e4b82" [label="copy{src=/Gemfile, dest=/usr/src/app/}" shape="note"];
  "sha256:467f98e7eb61cb90bbacbe1b029f87732d2d716a567f376b86cdee63e46a6cdc" [label="copy{src=/Gemfile.d, dest=/usr/src/app/Gemfile.d}" shape="note"];
  "sha256:a2a09acb8dd486e96979d6ed5bfc4176590e583e344cc496efeca39dea196a54" [label="copy{src=/config, dest=/usr/src/app/config}" shape="note"];
  "sha256:5f6519e981bfce22674d54da2e83acf783105ac17a3744155fe091cc063dd5a4" [label="copy{src=/gems, dest=/usr/src/app/gems}" shape="note"];
  "sha256:a9e1380ba1aa03d35c6c150f89701b803d534a966f8d44c462cfaebdfc1ed86c" [label="copy{src=/packages, dest=/usr/src/app/packages}" shape="note"];
  "sha256:1dd073fac7b3cfa5f890dc4b38630969538b346b777447f5c86f2ffc88317e05" [label="copy{src=/script, dest=/usr/src/app/script}" shape="note"];
  "sha256:880ed882071eaad25a513f864e12aa0c4bfda8626bb40b9e52ef2a05ee206dda" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:68c69b2f215a73561f1c62109cb7c65466cd6247809056927d0b0d9bd84e24ed" [label="copy{src=/yarn.lock, dest=/usr/src/app/}" shape="note"];
  "sha256:d3b65f8251528200ae072612ede8a55c2f3d29d588509d06cb2ae68c7b22a53b" [label="copy{src=/babel.config.js, dest=/usr/src/app/}" shape="note"];
  "sha256:7299620930ca4e9693e87da4bdce36b44b4d4c1e9ded76008f09cc20650199ee" [label="/bin/sh -c bundle install --jobs 8   && yarn install --pure-lockfile" shape="box"];
  "sha256:3d58d4b85c87ffda934c220d4b49f5d2b208b93cff1d58eca6e6ac16b3749c9a" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:12f1496fc6dedd74c945e3031849d00917b8677948bbf93fd51b6b01dc2222dc" [label="/bin/sh -c mkdir -p .yardoc              app/stylesheets/brandable_css_brands              app/views/info              client_apps/canvas_quizzes/dist              client_apps/canvas_quizzes/node_modules              client_apps/canvas_quizzes/tmp              config/locales/generated              gems/canvas_i18nliner/node_modules              gems/selinimum/node_modules              log              node_modules              packages/canvas-planner/lib              packages/canvas-planner/node_modules              pacts              public/dist              public/doc/api              public/javascripts/client_apps              public/javascripts/compiled              public/javascripts/translations              reports              tmp              /home/docker/.bundler/              /home/docker/.cache/yarn              /home/docker/.gem/   && find ${APP_HOME} /home/docker ! -user docker -print0 | xargs -0 chown -h docker:docker" shape="box"];
  "sha256:b9a3c9b28cbe32e70966c5cdb169381c102a4a7fd936392862ed07b98aec98d1" [label="/bin/sh -c bundle lock --update" shape="box"];
  "sha256:2455d7a73a6a5298f86ad7e29f15c1263d7a5f18e6e9455bac24584cd1c2230e" [label="/bin/sh -c COMPILE_ASSETS_NPM_INSTALL=0 bundle exec rake canvas:compile_assets" shape="box"];
  "sha256:ac126474637c3d32cabd23c7b4ae8b12cb7e65e3f911270145da8189daaf80b1" [label="sha256:ac126474637c3d32cabd23c7b4ae8b12cb7e65e3f911270145da8189daaf80b1" shape="plaintext"];
  "sha256:245752d5e5716683cacaf7ce50b8c7793611423951315a0c1712ee3476a70ff0" -> "sha256:1f40250e9cbe2fd194696aa4ff9cb7c18da24a4384c9109a40c819bdc14d638d" [label=""];
  "sha256:1f40250e9cbe2fd194696aa4ff9cb7c18da24a4384c9109a40c819bdc14d638d" -> "sha256:d94a65181f7f964115e95e299a16c1b5cb54af07becb072505d9aa0642c54c38" [label=""];
  "sha256:d94a65181f7f964115e95e299a16c1b5cb54af07becb072505d9aa0642c54c38" -> "sha256:e546cc3aeee6c21dee40674989ffb69484fd4d5214c69ccf4a4a327314b888ba" [label=""];
  "sha256:e546cc3aeee6c21dee40674989ffb69484fd4d5214c69ccf4a4a327314b888ba" -> "sha256:e333f6e416c839259a052c1c2c039183cfb73258831e441b8eb76a82c48babf4" [label=""];
  "sha256:ef890137d5502a8676371e87a972aadbc578dbf4a2406485cfbea68abdae465a" -> "sha256:e333f6e416c839259a052c1c2c039183cfb73258831e441b8eb76a82c48babf4" [label=""];
  "sha256:e333f6e416c839259a052c1c2c039183cfb73258831e441b8eb76a82c48babf4" -> "sha256:3ecdbd7737da7456a5516d42da44d009d0205faf6a84e60444e95a0f43d234f2" [label=""];
  "sha256:3ecdbd7737da7456a5516d42da44d009d0205faf6a84e60444e95a0f43d234f2" -> "sha256:8b084e45e88bdb03a5da0275f94fa2b6518407c6ffb2d3d4810c047f027c06b3" [label=""];
  "sha256:8b084e45e88bdb03a5da0275f94fa2b6518407c6ffb2d3d4810c047f027c06b3" -> "sha256:fdb5fdb5561e6f3ed1c87df8c3d99af97438dd121273aebd075f480e802e4b82" [label=""];
  "sha256:ef890137d5502a8676371e87a972aadbc578dbf4a2406485cfbea68abdae465a" -> "sha256:fdb5fdb5561e6f3ed1c87df8c3d99af97438dd121273aebd075f480e802e4b82" [label=""];
  "sha256:fdb5fdb5561e6f3ed1c87df8c3d99af97438dd121273aebd075f480e802e4b82" -> "sha256:467f98e7eb61cb90bbacbe1b029f87732d2d716a567f376b86cdee63e46a6cdc" [label=""];
  "sha256:ef890137d5502a8676371e87a972aadbc578dbf4a2406485cfbea68abdae465a" -> "sha256:467f98e7eb61cb90bbacbe1b029f87732d2d716a567f376b86cdee63e46a6cdc" [label=""];
  "sha256:467f98e7eb61cb90bbacbe1b029f87732d2d716a567f376b86cdee63e46a6cdc" -> "sha256:a2a09acb8dd486e96979d6ed5bfc4176590e583e344cc496efeca39dea196a54" [label=""];
  "sha256:ef890137d5502a8676371e87a972aadbc578dbf4a2406485cfbea68abdae465a" -> "sha256:a2a09acb8dd486e96979d6ed5bfc4176590e583e344cc496efeca39dea196a54" [label=""];
  "sha256:a2a09acb8dd486e96979d6ed5bfc4176590e583e344cc496efeca39dea196a54" -> "sha256:5f6519e981bfce22674d54da2e83acf783105ac17a3744155fe091cc063dd5a4" [label=""];
  "sha256:ef890137d5502a8676371e87a972aadbc578dbf4a2406485cfbea68abdae465a" -> "sha256:5f6519e981bfce22674d54da2e83acf783105ac17a3744155fe091cc063dd5a4" [label=""];
  "sha256:5f6519e981bfce22674d54da2e83acf783105ac17a3744155fe091cc063dd5a4" -> "sha256:a9e1380ba1aa03d35c6c150f89701b803d534a966f8d44c462cfaebdfc1ed86c" [label=""];
  "sha256:ef890137d5502a8676371e87a972aadbc578dbf4a2406485cfbea68abdae465a" -> "sha256:a9e1380ba1aa03d35c6c150f89701b803d534a966f8d44c462cfaebdfc1ed86c" [label=""];
  "sha256:a9e1380ba1aa03d35c6c150f89701b803d534a966f8d44c462cfaebdfc1ed86c" -> "sha256:1dd073fac7b3cfa5f890dc4b38630969538b346b777447f5c86f2ffc88317e05" [label=""];
  "sha256:ef890137d5502a8676371e87a972aadbc578dbf4a2406485cfbea68abdae465a" -> "sha256:1dd073fac7b3cfa5f890dc4b38630969538b346b777447f5c86f2ffc88317e05" [label=""];
  "sha256:1dd073fac7b3cfa5f890dc4b38630969538b346b777447f5c86f2ffc88317e05" -> "sha256:880ed882071eaad25a513f864e12aa0c4bfda8626bb40b9e52ef2a05ee206dda" [label=""];
  "sha256:ef890137d5502a8676371e87a972aadbc578dbf4a2406485cfbea68abdae465a" -> "sha256:880ed882071eaad25a513f864e12aa0c4bfda8626bb40b9e52ef2a05ee206dda" [label=""];
  "sha256:880ed882071eaad25a513f864e12aa0c4bfda8626bb40b9e52ef2a05ee206dda" -> "sha256:68c69b2f215a73561f1c62109cb7c65466cd6247809056927d0b0d9bd84e24ed" [label=""];
  "sha256:ef890137d5502a8676371e87a972aadbc578dbf4a2406485cfbea68abdae465a" -> "sha256:68c69b2f215a73561f1c62109cb7c65466cd6247809056927d0b0d9bd84e24ed" [label=""];
  "sha256:68c69b2f215a73561f1c62109cb7c65466cd6247809056927d0b0d9bd84e24ed" -> "sha256:d3b65f8251528200ae072612ede8a55c2f3d29d588509d06cb2ae68c7b22a53b" [label=""];
  "sha256:ef890137d5502a8676371e87a972aadbc578dbf4a2406485cfbea68abdae465a" -> "sha256:d3b65f8251528200ae072612ede8a55c2f3d29d588509d06cb2ae68c7b22a53b" [label=""];
  "sha256:d3b65f8251528200ae072612ede8a55c2f3d29d588509d06cb2ae68c7b22a53b" -> "sha256:7299620930ca4e9693e87da4bdce36b44b4d4c1e9ded76008f09cc20650199ee" [label=""];
  "sha256:7299620930ca4e9693e87da4bdce36b44b4d4c1e9ded76008f09cc20650199ee" -> "sha256:3d58d4b85c87ffda934c220d4b49f5d2b208b93cff1d58eca6e6ac16b3749c9a" [label=""];
  "sha256:ef890137d5502a8676371e87a972aadbc578dbf4a2406485cfbea68abdae465a" -> "sha256:3d58d4b85c87ffda934c220d4b49f5d2b208b93cff1d58eca6e6ac16b3749c9a" [label=""];
  "sha256:3d58d4b85c87ffda934c220d4b49f5d2b208b93cff1d58eca6e6ac16b3749c9a" -> "sha256:12f1496fc6dedd74c945e3031849d00917b8677948bbf93fd51b6b01dc2222dc" [label=""];
  "sha256:12f1496fc6dedd74c945e3031849d00917b8677948bbf93fd51b6b01dc2222dc" -> "sha256:b9a3c9b28cbe32e70966c5cdb169381c102a4a7fd936392862ed07b98aec98d1" [label=""];
  "sha256:b9a3c9b28cbe32e70966c5cdb169381c102a4a7fd936392862ed07b98aec98d1" -> "sha256:2455d7a73a6a5298f86ad7e29f15c1263d7a5f18e6e9455bac24584cd1c2230e" [label=""];
  "sha256:2455d7a73a6a5298f86ad7e29f15c1263d7a5f18e6e9455bac24584cd1c2230e" -> "sha256:ac126474637c3d32cabd23c7b4ae8b12cb7e65e3f911270145da8189daaf80b1" [label=""];
}

