[app/sources/229960141.Dockerfile]
digraph {
  "sha256:d5b0d4f1e0551110518b4d5d24586f0df1ce899872631ea53dbbeea4c106c4ba" [label="local://context" shape="ellipse"];
  "sha256:cc47af5d092e6703c4baceaab393c283b63709ad6553bc047906458afb4c9b0d" [label="docker-image://docker.io/library/debian:jessie-slim" shape="ellipse"];
  "sha256:6b73196a8c8b145970d1a934c67a9540fa9da35d5c7ddf577413e0187eab60b6" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         cron         python-pip         python-pkg-resources         rsyslog         sendmail         smbclient     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ee1ee1343440879aa1a951d9f763db4744d7da7c71bb4cb16a9e956b04cb110a" [label="/bin/sh -c mkdir -p         /etc/auto.master.d         /files/incomplete /files/downloads /files/torrents         /var/www         /var/log/putio-automator         /var/log/supervisor     && chown -R www-data /files /var/www     && usermod -u 1000 www-data" shape="box"];
  "sha256:6ddc3826bfaf4c2dacc7b01f4c2083240d972a5391907d506767e0a171ce6ad3" [label="copy{src=/etc/config.py.dist, dest=/usr/local/share/putio-automator/config.py}" shape="note"];
  "sha256:9aa76a296dec4c5a2ab1824e13a08904fcbe96d89f34ab2866bf66795298c498" [label="copy{src=/etc/cron, dest=/etc/cron.d/putio-automator}" shape="note"];
  "sha256:71df107df1b306977a47c28d1122261838888d300225a454397c6dc59848e0bb" [label="copy{src=/etc/rsyslog.conf, dest=/etc/rsyslog.conf}" shape="note"];
  "sha256:291bc35d3f0293b64bb5beab26d184142bd263d2285b9b416d54ceb36f92ac1e" [label="copy{src=/etc/supervisor.conf, dest=/etc/supervisor/conf.d/putio-automator.conf}" shape="note"];
  "sha256:5a76a2903afaf111460b2b075e7687451da8c316586409566509522cbf6b9fc1" [label="copy{src=/etc/supervisord.conf, dest=/etc/supervisor/supervisord.conf}" shape="note"];
  "sha256:3453f60e7be80d7900870c5498955286ca1c975d823ce041545df4b184814e75" [label="/bin/sh -c chmod go= /etc/cron.d/putio-automator" shape="box"];
  "sha256:55e10f6776e7c4013d615880c09607a04e5cf5fabc996be1efef90967cde6a3a" [label="/bin/sh -c pip install putio-automator     && rm -rf $HOME/.cache /tmp/pip_build_root" shape="box"];
  "sha256:70fedcc2d1f19f01b027698461ccede1065f2b5fd142e2fcaa02a49e69505110" [label="sha256:70fedcc2d1f19f01b027698461ccede1065f2b5fd142e2fcaa02a49e69505110" shape="plaintext"];
  "sha256:cc47af5d092e6703c4baceaab393c283b63709ad6553bc047906458afb4c9b0d" -> "sha256:6b73196a8c8b145970d1a934c67a9540fa9da35d5c7ddf577413e0187eab60b6" [label=""];
  "sha256:6b73196a8c8b145970d1a934c67a9540fa9da35d5c7ddf577413e0187eab60b6" -> "sha256:ee1ee1343440879aa1a951d9f763db4744d7da7c71bb4cb16a9e956b04cb110a" [label=""];
  "sha256:ee1ee1343440879aa1a951d9f763db4744d7da7c71bb4cb16a9e956b04cb110a" -> "sha256:6ddc3826bfaf4c2dacc7b01f4c2083240d972a5391907d506767e0a171ce6ad3" [label=""];
  "sha256:d5b0d4f1e0551110518b4d5d24586f0df1ce899872631ea53dbbeea4c106c4ba" -> "sha256:6ddc3826bfaf4c2dacc7b01f4c2083240d972a5391907d506767e0a171ce6ad3" [label=""];
  "sha256:6ddc3826bfaf4c2dacc7b01f4c2083240d972a5391907d506767e0a171ce6ad3" -> "sha256:9aa76a296dec4c5a2ab1824e13a08904fcbe96d89f34ab2866bf66795298c498" [label=""];
  "sha256:d5b0d4f1e0551110518b4d5d24586f0df1ce899872631ea53dbbeea4c106c4ba" -> "sha256:9aa76a296dec4c5a2ab1824e13a08904fcbe96d89f34ab2866bf66795298c498" [label=""];
  "sha256:9aa76a296dec4c5a2ab1824e13a08904fcbe96d89f34ab2866bf66795298c498" -> "sha256:71df107df1b306977a47c28d1122261838888d300225a454397c6dc59848e0bb" [label=""];
  "sha256:d5b0d4f1e0551110518b4d5d24586f0df1ce899872631ea53dbbeea4c106c4ba" -> "sha256:71df107df1b306977a47c28d1122261838888d300225a454397c6dc59848e0bb" [label=""];
  "sha256:71df107df1b306977a47c28d1122261838888d300225a454397c6dc59848e0bb" -> "sha256:291bc35d3f0293b64bb5beab26d184142bd263d2285b9b416d54ceb36f92ac1e" [label=""];
  "sha256:d5b0d4f1e0551110518b4d5d24586f0df1ce899872631ea53dbbeea4c106c4ba" -> "sha256:291bc35d3f0293b64bb5beab26d184142bd263d2285b9b416d54ceb36f92ac1e" [label=""];
  "sha256:291bc35d3f0293b64bb5beab26d184142bd263d2285b9b416d54ceb36f92ac1e" -> "sha256:5a76a2903afaf111460b2b075e7687451da8c316586409566509522cbf6b9fc1" [label=""];
  "sha256:d5b0d4f1e0551110518b4d5d24586f0df1ce899872631ea53dbbeea4c106c4ba" -> "sha256:5a76a2903afaf111460b2b075e7687451da8c316586409566509522cbf6b9fc1" [label=""];
  "sha256:5a76a2903afaf111460b2b075e7687451da8c316586409566509522cbf6b9fc1" -> "sha256:3453f60e7be80d7900870c5498955286ca1c975d823ce041545df4b184814e75" [label=""];
  "sha256:3453f60e7be80d7900870c5498955286ca1c975d823ce041545df4b184814e75" -> "sha256:55e10f6776e7c4013d615880c09607a04e5cf5fabc996be1efef90967cde6a3a" [label=""];
  "sha256:55e10f6776e7c4013d615880c09607a04e5cf5fabc996be1efef90967cde6a3a" -> "sha256:70fedcc2d1f19f01b027698461ccede1065f2b5fd142e2fcaa02a49e69505110" [label=""];
}

