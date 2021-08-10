[app/sources/178308804.Dockerfile]
digraph {
  "sha256:756a624c7d69576b7cc107d6c9c3c82a111560c482687c125bb19077cac1fe6a" [label="docker-image://docker.io/vipconsult/base:squeeze" shape="ellipse"];
  "sha256:138c43faead657617c5e594afe8e83ff0045aa68e3ae133c261d65da134b589d" [label="/bin/sh -c apt-get install         php5         php5-fpm         php5-gd         php5-imagick         php5-mysql         php5-mcrypt         php5-curl         php5-cli         php5-dev         php5-memcache         ssmtp &&         apt-get purge -y --auto-remove &&         rm -rf /var/lib/apt/lists/* &&         apt-get clean" shape="box"];
  "sha256:15d5396c1235ed4076c9c3069cdc28c5cb215c979f75212474187177c11a4935" [label="/bin/sh -c sed -i -e \"s/^.*FromLineOverride.*$/FromLineOverride=YES/\" /etc/ssmtp/ssmtp.conf &&     sed -i -e \"s/.*max_input_time =.*/max_input_time = 300/\" /etc/php5/fpm/php.ini &&     sed -i -e \"s/.*session.gc_divisor =.*/session.gc_divisor = 100/\" /etc/php5/fpm/php.ini &&     sed -i -e \"s/.*session.gc_maxlifetime =.*/session.gc_maxlifetime = 315360000/\" /etc/php5/fpm/php.ini &&     sed -i -e \"s/.*serialize_precision =.*/serialize_precision = 100/\" /etc/php5/fpm/php.ini &&     sed -i -e \"s/.*short_open_tag =.*/short_open_tag = On/\" /etc/php5/fpm/php.ini &&     sed -i -e \"s/.*daemonize =.*/daemonize = no/\" /etc/php5/fpm/php-fpm.conf &&     sed -i -e \"s/.*error_log =.*/error_log = \\/proc\\/self\\/fd\\/2/\" /etc/php5/fpm/pool.d/www.conf &&     sed -i -e \"s/.*pm.status_path =.*/pm.status_path = \\/status/\" /etc/php5/fpm/pool.d/www.conf" shape="box"];
  "sha256:6422130f7921a5bc4f2fabe53f762420b05710b8075e579e4de2aacca9d451b0" [label="local://context" shape="ellipse"];
  "sha256:74351a159dc145836adc350c2ebab8ddfb02d112499d02d3b0c877e95a839b7c" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:440e0b4ff38dd64b9f9723204a46c7ff7bb40f65d3174f9c5c716b150feb876b" [label="sha256:440e0b4ff38dd64b9f9723204a46c7ff7bb40f65d3174f9c5c716b150feb876b" shape="plaintext"];
  "sha256:756a624c7d69576b7cc107d6c9c3c82a111560c482687c125bb19077cac1fe6a" -> "sha256:138c43faead657617c5e594afe8e83ff0045aa68e3ae133c261d65da134b589d" [label=""];
  "sha256:138c43faead657617c5e594afe8e83ff0045aa68e3ae133c261d65da134b589d" -> "sha256:15d5396c1235ed4076c9c3069cdc28c5cb215c979f75212474187177c11a4935" [label=""];
  "sha256:15d5396c1235ed4076c9c3069cdc28c5cb215c979f75212474187177c11a4935" -> "sha256:74351a159dc145836adc350c2ebab8ddfb02d112499d02d3b0c877e95a839b7c" [label=""];
  "sha256:6422130f7921a5bc4f2fabe53f762420b05710b8075e579e4de2aacca9d451b0" -> "sha256:74351a159dc145836adc350c2ebab8ddfb02d112499d02d3b0c877e95a839b7c" [label=""];
  "sha256:74351a159dc145836adc350c2ebab8ddfb02d112499d02d3b0c877e95a839b7c" -> "sha256:440e0b4ff38dd64b9f9723204a46c7ff7bb40f65d3174f9c5c716b150feb876b" [label=""];
}

