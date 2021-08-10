[app/sources/260422696.Dockerfile]
digraph {
  "sha256:d9a7b41fda308648688a5cb5dc090ce4f9179cd598509fda06cb637c060f304f" [label="local://context" shape="ellipse"];
  "sha256:943ce95540e220917466aa7936f1f84949d2af4c7db2b7b214d8cc44e66d4089" [label="docker-image://docker.io/discourse/base:2.0.20180907" shape="ellipse"];
  "sha256:7ae58af5f400852c3c67a149ad58c5dd143a1c33b05299665411064eeec4f974" [label="/bin/sh -c echo 2.0.`date +%Y%m%d` > /RRB_VERSION" shape="box"];
  "sha256:2d86e8042f77c51cfc5f8e7d1c423c8b9796be6805bf2b3b76736f644ef4d30c" [label="/bin/sh -c chown discourse:discourse /var" shape="box"];
  "sha256:28f40a57d16e8cfce33e31f5daa1b9e0171edf5d02eafe3a1e87360fc9fc7793" [label="/bin/sh -c apt-get install -y bison autoconf build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev" shape="box"];
  "sha256:90db0a5a4a775181cd30913dba7d00171b5cb4bca101fba3a65973f65af2fd2d" [label="/bin/sh -c apt-get install -y libsqlite3-dev" shape="box"];
  "sha256:22334189ebed41725e89cfc49f865009a2d2d08ee54c4b8a5a02087fd6a2a012" [label="/bin/sh -c sudo -H -u discourse git clone ${RRB_GIT_URL} /var/rails_ruby_bench" shape="box"];
  "sha256:0584381fe9813033ffcc918950878b777487fa2fc8c67a3b8224e3e5027477e2" [label="/bin/sh -c cd /var/rails_ruby_bench && bundle" shape="box"];
  "sha256:e9a61cd8019828ca4caed3409a104bafc463bd10abf6f70024cf07a243ea4a15" [label="copy{src=/install_rbenv.sh, dest=/tmp/install_rbenv.sh}" shape="note"];
  "sha256:447f36299d7535af4f92ffbed5e060eb2035a66d4280628b1ce007244864a227" [label="/bin/sh -c chmod +x /tmp/install_rbenv.sh && sudo -H -u discourse /tmp/install_rbenv.sh" shape="box"];
  "sha256:dc53ad8f8480f6bcd028daf8065fcf01f6b7df2506a46eae1fd1b8f415b925d8" [label="copy{src=/benchmark_software.json, dest=/tmp/benchmark_software.json}" shape="note"];
  "sha256:264ad889058c9f6e003e6e5ab801d35c74cbde96d44b30a23cb27f855210721c" [label="copy{src=/build_benchmark_software.rb, dest=/tmp/build_benchmark_software.rb}" shape="note"];
  "sha256:0c0592421c0da44a50206b4647013ad23c8dba33997b4a9af4a8b8a34cd6a314" [label="/bin/sh -c chmod +x /tmp/build_benchmark_software.rb && sudo -H -u discourse /tmp/build_benchmark_software.rb" shape="box"];
  "sha256:e86deb75b89c8d9e262ea723bff806d02ba0c91970751dbc56809cc55bb8e9cb" [label="copy{src=/benchmark_discourse_setup.rb, dest=/tmp/benchmark_discourse_setup.rb}" shape="note"];
  "sha256:1fdde563964e3a27c9c863d5a3e587bf2e4e86c6db09d137be26bceda46a14d7" [label="/bin/sh -c chmod +x /tmp/benchmark_discourse_setup.rb && sudo -H -u discourse /tmp/benchmark_discourse_setup.rb" shape="box"];
  "sha256:7430408522b188a86e0c6fb1b259cb59747f08239a61ec1472041044cd9ef3ff" [label="copy{src=/test_benchmark_run.rb, dest=/tmp/test_benchmark_run.rb}" shape="note"];
  "sha256:c15faaa754abd0089da5bd13aa10c626e3aaeb88c878a686ee56162c7629f18b" [label="/bin/sh -c chmod +x /tmp/test_benchmark_run.rb && sudo -H -u discourse /tmp/test_benchmark_run.rb" shape="box"];
  "sha256:76a907b9f765db17913e08a2b361cf326fb9cbb4d08cd60d9f0eff20d2183268" [label="sha256:76a907b9f765db17913e08a2b361cf326fb9cbb4d08cd60d9f0eff20d2183268" shape="plaintext"];
  "sha256:943ce95540e220917466aa7936f1f84949d2af4c7db2b7b214d8cc44e66d4089" -> "sha256:7ae58af5f400852c3c67a149ad58c5dd143a1c33b05299665411064eeec4f974" [label=""];
  "sha256:7ae58af5f400852c3c67a149ad58c5dd143a1c33b05299665411064eeec4f974" -> "sha256:2d86e8042f77c51cfc5f8e7d1c423c8b9796be6805bf2b3b76736f644ef4d30c" [label=""];
  "sha256:2d86e8042f77c51cfc5f8e7d1c423c8b9796be6805bf2b3b76736f644ef4d30c" -> "sha256:28f40a57d16e8cfce33e31f5daa1b9e0171edf5d02eafe3a1e87360fc9fc7793" [label=""];
  "sha256:28f40a57d16e8cfce33e31f5daa1b9e0171edf5d02eafe3a1e87360fc9fc7793" -> "sha256:90db0a5a4a775181cd30913dba7d00171b5cb4bca101fba3a65973f65af2fd2d" [label=""];
  "sha256:90db0a5a4a775181cd30913dba7d00171b5cb4bca101fba3a65973f65af2fd2d" -> "sha256:22334189ebed41725e89cfc49f865009a2d2d08ee54c4b8a5a02087fd6a2a012" [label=""];
  "sha256:22334189ebed41725e89cfc49f865009a2d2d08ee54c4b8a5a02087fd6a2a012" -> "sha256:0584381fe9813033ffcc918950878b777487fa2fc8c67a3b8224e3e5027477e2" [label=""];
  "sha256:0584381fe9813033ffcc918950878b777487fa2fc8c67a3b8224e3e5027477e2" -> "sha256:e9a61cd8019828ca4caed3409a104bafc463bd10abf6f70024cf07a243ea4a15" [label=""];
  "sha256:d9a7b41fda308648688a5cb5dc090ce4f9179cd598509fda06cb637c060f304f" -> "sha256:e9a61cd8019828ca4caed3409a104bafc463bd10abf6f70024cf07a243ea4a15" [label=""];
  "sha256:e9a61cd8019828ca4caed3409a104bafc463bd10abf6f70024cf07a243ea4a15" -> "sha256:447f36299d7535af4f92ffbed5e060eb2035a66d4280628b1ce007244864a227" [label=""];
  "sha256:447f36299d7535af4f92ffbed5e060eb2035a66d4280628b1ce007244864a227" -> "sha256:dc53ad8f8480f6bcd028daf8065fcf01f6b7df2506a46eae1fd1b8f415b925d8" [label=""];
  "sha256:d9a7b41fda308648688a5cb5dc090ce4f9179cd598509fda06cb637c060f304f" -> "sha256:dc53ad8f8480f6bcd028daf8065fcf01f6b7df2506a46eae1fd1b8f415b925d8" [label=""];
  "sha256:dc53ad8f8480f6bcd028daf8065fcf01f6b7df2506a46eae1fd1b8f415b925d8" -> "sha256:264ad889058c9f6e003e6e5ab801d35c74cbde96d44b30a23cb27f855210721c" [label=""];
  "sha256:d9a7b41fda308648688a5cb5dc090ce4f9179cd598509fda06cb637c060f304f" -> "sha256:264ad889058c9f6e003e6e5ab801d35c74cbde96d44b30a23cb27f855210721c" [label=""];
  "sha256:264ad889058c9f6e003e6e5ab801d35c74cbde96d44b30a23cb27f855210721c" -> "sha256:0c0592421c0da44a50206b4647013ad23c8dba33997b4a9af4a8b8a34cd6a314" [label=""];
  "sha256:0c0592421c0da44a50206b4647013ad23c8dba33997b4a9af4a8b8a34cd6a314" -> "sha256:e86deb75b89c8d9e262ea723bff806d02ba0c91970751dbc56809cc55bb8e9cb" [label=""];
  "sha256:d9a7b41fda308648688a5cb5dc090ce4f9179cd598509fda06cb637c060f304f" -> "sha256:e86deb75b89c8d9e262ea723bff806d02ba0c91970751dbc56809cc55bb8e9cb" [label=""];
  "sha256:e86deb75b89c8d9e262ea723bff806d02ba0c91970751dbc56809cc55bb8e9cb" -> "sha256:1fdde563964e3a27c9c863d5a3e587bf2e4e86c6db09d137be26bceda46a14d7" [label=""];
  "sha256:1fdde563964e3a27c9c863d5a3e587bf2e4e86c6db09d137be26bceda46a14d7" -> "sha256:7430408522b188a86e0c6fb1b259cb59747f08239a61ec1472041044cd9ef3ff" [label=""];
  "sha256:d9a7b41fda308648688a5cb5dc090ce4f9179cd598509fda06cb637c060f304f" -> "sha256:7430408522b188a86e0c6fb1b259cb59747f08239a61ec1472041044cd9ef3ff" [label=""];
  "sha256:7430408522b188a86e0c6fb1b259cb59747f08239a61ec1472041044cd9ef3ff" -> "sha256:c15faaa754abd0089da5bd13aa10c626e3aaeb88c878a686ee56162c7629f18b" [label=""];
  "sha256:c15faaa754abd0089da5bd13aa10c626e3aaeb88c878a686ee56162c7629f18b" -> "sha256:76a907b9f765db17913e08a2b361cf326fb9cbb4d08cd60d9f0eff20d2183268" [label=""];
}

