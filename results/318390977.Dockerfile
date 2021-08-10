[app/sources/318390977.Dockerfile]
digraph {
  "sha256:71f2fdfd478c29beef184752a192897aab1b1db5642b1cdd752cc5a6b998e5e2" [label="docker-image://docker.io/aqzt/docker-alpine:zabbix-agentd" shape="ellipse"];
  "sha256:8d6700f15b606cc6f5051bb67836b983ba6fd95ed2e8dac8a51260fd2b721993" [label="/bin/sh -c set -x ;        mkdir -p /var/lib/mysql/ /run/mysqld /data/mysql/data/ /data/mysql/logs/ ;        addgroup -g 82 -S mysql ;        adduser -u 82 -D -S -G mysql mysql ;        chown -R mysql:mysql /data/mysql ;        chown -R mysql:mysql /run/mysqld ;        chmod 777 /tmp" shape="box"];
  "sha256:88656d230a059263796311e9a0503cb582ba9c3f842210051e84be137cfcd32b" [label="/bin/sh -c apk add --update mariadb mariadb-client zabbix-agent zabbix-utils ;        rm -f /var/cache/apk/*" shape="box"];
  "sha256:194039a40e83081878dac5ef99fbf087f79e7e772de08e70f73edaccb211179e" [label="local://context" shape="ellipse"];
  "sha256:1218e00e16a5a2564efc598f018ec1342bfa90380c6d23732928a61b684dff9a" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:da6637912a1ed52f9abe4569d0796159f368fcae87028dbf66320bc38dde00c9" [label="sha256:da6637912a1ed52f9abe4569d0796159f368fcae87028dbf66320bc38dde00c9" shape="plaintext"];
  "sha256:71f2fdfd478c29beef184752a192897aab1b1db5642b1cdd752cc5a6b998e5e2" -> "sha256:8d6700f15b606cc6f5051bb67836b983ba6fd95ed2e8dac8a51260fd2b721993" [label=""];
  "sha256:8d6700f15b606cc6f5051bb67836b983ba6fd95ed2e8dac8a51260fd2b721993" -> "sha256:88656d230a059263796311e9a0503cb582ba9c3f842210051e84be137cfcd32b" [label=""];
  "sha256:88656d230a059263796311e9a0503cb582ba9c3f842210051e84be137cfcd32b" -> "sha256:1218e00e16a5a2564efc598f018ec1342bfa90380c6d23732928a61b684dff9a" [label=""];
  "sha256:194039a40e83081878dac5ef99fbf087f79e7e772de08e70f73edaccb211179e" -> "sha256:1218e00e16a5a2564efc598f018ec1342bfa90380c6d23732928a61b684dff9a" [label=""];
  "sha256:1218e00e16a5a2564efc598f018ec1342bfa90380c6d23732928a61b684dff9a" -> "sha256:da6637912a1ed52f9abe4569d0796159f368fcae87028dbf66320bc38dde00c9" [label=""];
}

