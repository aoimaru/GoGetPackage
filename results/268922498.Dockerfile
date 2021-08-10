[app/sources/268922498.Dockerfile]
digraph {
  "sha256:ed8db306833bb5e2f06c75c848a950fe89a853f37a6a46ab84256de6ff52ff31" [label="docker-image://docker.io/library/php:5-apache" shape="ellipse"];
  "sha256:125c1cbd1679caf7d94860b647601bafb5687c47e3eb1281e12a8a46106c8951" [label="local://context" shape="ellipse"];
  "sha256:db24ef286f466fe03b122e71baa83987073c4aedbfc5466b07bf18c658641fd5" [label="copy{src=/php.ini, dest=/usr/local/etc/php/}" shape="note"];
  "sha256:a4571881ae996e60301eb1784a5789a6f2821fff79a17ac18ed5a6fdb7f8032d" [label="/bin/sh -c apt-get update   && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev libmcrypt-dev   && docker-php-ext-install pdo_mysql mysqli mbstring gd iconv" shape="box"];
  "sha256:67df3770a77b1257caf8818d1a57059c8e94efd3b184a0fc6205e437c6b8bae9" [label="sha256:67df3770a77b1257caf8818d1a57059c8e94efd3b184a0fc6205e437c6b8bae9" shape="plaintext"];
  "sha256:ed8db306833bb5e2f06c75c848a950fe89a853f37a6a46ab84256de6ff52ff31" -> "sha256:db24ef286f466fe03b122e71baa83987073c4aedbfc5466b07bf18c658641fd5" [label=""];
  "sha256:125c1cbd1679caf7d94860b647601bafb5687c47e3eb1281e12a8a46106c8951" -> "sha256:db24ef286f466fe03b122e71baa83987073c4aedbfc5466b07bf18c658641fd5" [label=""];
  "sha256:db24ef286f466fe03b122e71baa83987073c4aedbfc5466b07bf18c658641fd5" -> "sha256:a4571881ae996e60301eb1784a5789a6f2821fff79a17ac18ed5a6fdb7f8032d" [label=""];
  "sha256:a4571881ae996e60301eb1784a5789a6f2821fff79a17ac18ed5a6fdb7f8032d" -> "sha256:67df3770a77b1257caf8818d1a57059c8e94efd3b184a0fc6205e437c6b8bae9" [label=""];
}

