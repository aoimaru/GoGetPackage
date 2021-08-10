[app/sources/253367411.Dockerfile]
digraph {
  "sha256:d16c532abd071ec17e6f7cbbfd73ea9db54a4b46046fb57ec62090be02456232" [label="docker-image://docker.io/eboraas/apache@sha256:c7c5d67f9f6590fa07e19cb83cb6c29813a844b859b7302adb7989f447f17928" shape="ellipse"];
  "sha256:6d52a3f13e815a40a39cf611c8b3e18ca62fa38568ecb5ba73209faf2577dd8f" [label="/bin/sh -c apt-get update && apt-get -y install php5 php5-mysql curl wget php5-curl && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3c926377af943fb5732b8438d5cb2605617f058aca3ceff3bdfd5a0cced0c326" [label="/bin/sh -c /usr/sbin/a2dismod 'mpm_*' && /usr/sbin/a2enmod mpm_prefork" shape="box"];
  "sha256:f8d2b643db1a2bf95448014d1cb6d1d3b73b0f2ee9aa51142e427f69ee8f307f" [label="/bin/sh -c set -x     && cd /var/www/html \t&& rm -rf * \t&& cd /tmp \t&& wget $PHPMONITOR_URL \t&& mv download phpmonitor.tar.gz \t&& tar -xvf phpmonitor.tar.gz --strip-components=1 \t&& cd phpservermon-3.1.1 \t&& mv * /var/www/html \t&& cd /var/www/html \t&& touch config.php \t&& chmod 0777 config.php" shape="box"];
  "sha256:113edca756f165deee1e964f582890ebd70d5ed2da4a204c88fa64bb8efbc517" [label="sha256:113edca756f165deee1e964f582890ebd70d5ed2da4a204c88fa64bb8efbc517" shape="plaintext"];
  "sha256:d16c532abd071ec17e6f7cbbfd73ea9db54a4b46046fb57ec62090be02456232" -> "sha256:6d52a3f13e815a40a39cf611c8b3e18ca62fa38568ecb5ba73209faf2577dd8f" [label=""];
  "sha256:6d52a3f13e815a40a39cf611c8b3e18ca62fa38568ecb5ba73209faf2577dd8f" -> "sha256:3c926377af943fb5732b8438d5cb2605617f058aca3ceff3bdfd5a0cced0c326" [label=""];
  "sha256:3c926377af943fb5732b8438d5cb2605617f058aca3ceff3bdfd5a0cced0c326" -> "sha256:f8d2b643db1a2bf95448014d1cb6d1d3b73b0f2ee9aa51142e427f69ee8f307f" [label=""];
  "sha256:f8d2b643db1a2bf95448014d1cb6d1d3b73b0f2ee9aa51142e427f69ee8f307f" -> "sha256:113edca756f165deee1e964f582890ebd70d5ed2da4a204c88fa64bb8efbc517" [label=""];
}

