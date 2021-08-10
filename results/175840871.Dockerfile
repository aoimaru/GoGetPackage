[app/sources/175840871.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:e173fad066c66a78e6aac67cbca0b2e95fabc6d5039a62bf13b07e71ee196283" [label="/bin/sh -c apt-get update &&     apt-get -yq install \t\tsupervisor \t\twget git pwgen unzip         apache2 libapache2-mod-php5         php5-mysql mysql-server \t\tphp5-imagick imagemagick         php5-curl curl         php5-mcrypt         php5-gd         php-pear         php-apc &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6758f5f3630412fb9444b9b170cef80a7683a45b57d79c87b5a1f231cf1b7372" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer" shape="box"];
  "sha256:b210968d3f37f81278f895d5c639db3655243b9870f8fa0c4a0ed944b305c793" [label="/bin/bash -c curl -L -o /craft.zip https://craftcms.com/latest.zip?accept_license=yes" shape="box"];
  "sha256:fb3a82441502b1d782322ff6af13b859c9316835401d21b153026dc816ed200d" [label="/bin/sh -c unzip /craft.zip -d /var/www &&     mv /var/www/public/* /var/www/html &&     rm -f /var/www/html/index.html" shape="box"];
  "sha256:efe8de0cbe75577586c55242a1257aad2aaff373bb95b54c4447fa8695d9f445" [label="/bin/sh -c rm -Rf /var/lib/mysql" shape="box"];
  "sha256:2ef47453643d0c5d2636f783d0f1189accb13276f9afdbb57cc791e7907a104d" [label="local://context" shape="ellipse"];
  "sha256:0bcb6fc069c71a5c3d941dca507900db430f2f58ee7950e6bbd35cc7f6dc6985" [label="copy{src=/includes, dest=/}" shape="note"];
  "sha256:61d62366a642f8893d55a4b7aaf9664e86e006852d57a172e86080a68167c618" [label="/bin/sh -c chmod +x /*.sh &&     chmod +x /build/*.sh" shape="box"];
  "sha256:9294b6a0d06823b19f39e1e2fdaeb7c6575e6042a531489dbf9ff0384131d8f1" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:bb3235f2f7c777e5ddc6c1d1073530cea20427adf4d9355fb1e2891c22bc4955" [label="sha256:bb3235f2f7c777e5ddc6c1d1073530cea20427adf4d9355fb1e2891c22bc4955" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:e173fad066c66a78e6aac67cbca0b2e95fabc6d5039a62bf13b07e71ee196283" [label=""];
  "sha256:e173fad066c66a78e6aac67cbca0b2e95fabc6d5039a62bf13b07e71ee196283" -> "sha256:6758f5f3630412fb9444b9b170cef80a7683a45b57d79c87b5a1f231cf1b7372" [label=""];
  "sha256:6758f5f3630412fb9444b9b170cef80a7683a45b57d79c87b5a1f231cf1b7372" -> "sha256:b210968d3f37f81278f895d5c639db3655243b9870f8fa0c4a0ed944b305c793" [label=""];
  "sha256:b210968d3f37f81278f895d5c639db3655243b9870f8fa0c4a0ed944b305c793" -> "sha256:fb3a82441502b1d782322ff6af13b859c9316835401d21b153026dc816ed200d" [label=""];
  "sha256:fb3a82441502b1d782322ff6af13b859c9316835401d21b153026dc816ed200d" -> "sha256:efe8de0cbe75577586c55242a1257aad2aaff373bb95b54c4447fa8695d9f445" [label=""];
  "sha256:efe8de0cbe75577586c55242a1257aad2aaff373bb95b54c4447fa8695d9f445" -> "sha256:0bcb6fc069c71a5c3d941dca507900db430f2f58ee7950e6bbd35cc7f6dc6985" [label=""];
  "sha256:2ef47453643d0c5d2636f783d0f1189accb13276f9afdbb57cc791e7907a104d" -> "sha256:0bcb6fc069c71a5c3d941dca507900db430f2f58ee7950e6bbd35cc7f6dc6985" [label=""];
  "sha256:0bcb6fc069c71a5c3d941dca507900db430f2f58ee7950e6bbd35cc7f6dc6985" -> "sha256:61d62366a642f8893d55a4b7aaf9664e86e006852d57a172e86080a68167c618" [label=""];
  "sha256:61d62366a642f8893d55a4b7aaf9664e86e006852d57a172e86080a68167c618" -> "sha256:9294b6a0d06823b19f39e1e2fdaeb7c6575e6042a531489dbf9ff0384131d8f1" [label=""];
  "sha256:9294b6a0d06823b19f39e1e2fdaeb7c6575e6042a531489dbf9ff0384131d8f1" -> "sha256:bb3235f2f7c777e5ddc6c1d1073530cea20427adf4d9355fb1e2891c22bc4955" [label=""];
}

