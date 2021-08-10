[app/sources/206249857.Dockerfile]
digraph {
  "sha256:3c435142fb95afbde409190799817338de0aa5fdc11162f1ceade49d4a0f1eb7" [label="docker-image://registry.fit2cloud.com/public/python:v3@sha256:e493bdfda0bcc41a01df57e30eb038f0608ba72b1e14e15f726099aa415e0a52" shape="ellipse"];
  "sha256:20f24be7bd4e6a7c4447c9faef739eb9d0d1d146d80728f3451d01e30416f15a" [label="mkdir{path=/opt/fit2ansible}" shape="note"];
  "sha256:5cd473dc123d5b7d9d00186c1a657649231e49e7c38b24276347f4e955c63c1f" [label="local://context" shape="ellipse"];
  "sha256:04c3ee1d78d3acd5f907add547f541ced8b2ddd8613aac51d9ba4841b3147c81" [label="copy{src=/requirements, dest=/tmp/requirements}" shape="note"];
  "sha256:9c80f89917dfdd64cf573467166b39953d07956494ecfa949212cb6cc54bb8a7" [label="/bin/sh -c cd /tmp/requirements && yum -y install epel-release &&     rpm -ivh https://repo.mysql.com/mysql57-community-release-el6.rpm &&     yum -y install $(cat rpm_requirements.txt)" shape="box"];
  "sha256:1a7ad376f9bd17cce50238f819f3cefdb9c17c291d520e5cd18afec6d902080b" [label="/bin/sh -c cd /tmp/requirements &&      pip install --upgrade pip setuptools -i https://mirrors.aliyun.com/pypi/simple/ &&      pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/ || pip install -r requirements.txt" shape="box"];
  "sha256:3709a30995b36a0a8bdd7ed7a5f3fc5e88bf66090572ed6d0edbfc045c340b71" [label="/bin/sh -c sed -i \"s@'uri': True@'uri': False@g\" /usr/local/lib/python3.6/site-packages/django/db/backends/sqlite3/base.py" shape="box"];
  "sha256:928e17ec94210195063fe9f0750b511e2f2299dfb9c7441bb3d5341d02827e28" [label="/bin/sh -c test -f /root/.ssh/id_rsa || ssh-keygen -f /root/.ssh/id_rsa -t rsa -P ''" shape="box"];
  "sha256:bb7da2c9b81e778d0340a4def8a1e3461211739437a4027fa034350e35cf2c9d" [label="/bin/sh -c echo -e \"Host *\\n\\tStrictHostKeyChecking no\\n\\tUserKnownHostsFile /dev/null\" > /root/.ssh/config" shape="box"];
  "sha256:5f2952c03462ecbc19a29030a819107006e86f3985dd9f96abc76ccf0f0bf832" [label="copy{src=/, dest=/opt/fit2ansible}" shape="note"];
  "sha256:293c320b8d6fd70baf9ba6bf9320402694d479b159d47d1ca8ab123fda39b443" [label="/bin/sh -c echo > config.yml" shape="box"];
  "sha256:8260a55330311fdd80b1e0b7c64141783da10d4d423849014ccaf2f51e68f5a8" [label="sha256:8260a55330311fdd80b1e0b7c64141783da10d4d423849014ccaf2f51e68f5a8" shape="plaintext"];
  "sha256:3c435142fb95afbde409190799817338de0aa5fdc11162f1ceade49d4a0f1eb7" -> "sha256:20f24be7bd4e6a7c4447c9faef739eb9d0d1d146d80728f3451d01e30416f15a" [label=""];
  "sha256:20f24be7bd4e6a7c4447c9faef739eb9d0d1d146d80728f3451d01e30416f15a" -> "sha256:04c3ee1d78d3acd5f907add547f541ced8b2ddd8613aac51d9ba4841b3147c81" [label=""];
  "sha256:5cd473dc123d5b7d9d00186c1a657649231e49e7c38b24276347f4e955c63c1f" -> "sha256:04c3ee1d78d3acd5f907add547f541ced8b2ddd8613aac51d9ba4841b3147c81" [label=""];
  "sha256:04c3ee1d78d3acd5f907add547f541ced8b2ddd8613aac51d9ba4841b3147c81" -> "sha256:9c80f89917dfdd64cf573467166b39953d07956494ecfa949212cb6cc54bb8a7" [label=""];
  "sha256:9c80f89917dfdd64cf573467166b39953d07956494ecfa949212cb6cc54bb8a7" -> "sha256:1a7ad376f9bd17cce50238f819f3cefdb9c17c291d520e5cd18afec6d902080b" [label=""];
  "sha256:1a7ad376f9bd17cce50238f819f3cefdb9c17c291d520e5cd18afec6d902080b" -> "sha256:3709a30995b36a0a8bdd7ed7a5f3fc5e88bf66090572ed6d0edbfc045c340b71" [label=""];
  "sha256:3709a30995b36a0a8bdd7ed7a5f3fc5e88bf66090572ed6d0edbfc045c340b71" -> "sha256:928e17ec94210195063fe9f0750b511e2f2299dfb9c7441bb3d5341d02827e28" [label=""];
  "sha256:928e17ec94210195063fe9f0750b511e2f2299dfb9c7441bb3d5341d02827e28" -> "sha256:bb7da2c9b81e778d0340a4def8a1e3461211739437a4027fa034350e35cf2c9d" [label=""];
  "sha256:bb7da2c9b81e778d0340a4def8a1e3461211739437a4027fa034350e35cf2c9d" -> "sha256:5f2952c03462ecbc19a29030a819107006e86f3985dd9f96abc76ccf0f0bf832" [label=""];
  "sha256:5cd473dc123d5b7d9d00186c1a657649231e49e7c38b24276347f4e955c63c1f" -> "sha256:5f2952c03462ecbc19a29030a819107006e86f3985dd9f96abc76ccf0f0bf832" [label=""];
  "sha256:5f2952c03462ecbc19a29030a819107006e86f3985dd9f96abc76ccf0f0bf832" -> "sha256:293c320b8d6fd70baf9ba6bf9320402694d479b159d47d1ca8ab123fda39b443" [label=""];
  "sha256:293c320b8d6fd70baf9ba6bf9320402694d479b159d47d1ca8ab123fda39b443" -> "sha256:8260a55330311fdd80b1e0b7c64141783da10d4d423849014ccaf2f51e68f5a8" [label=""];
}

