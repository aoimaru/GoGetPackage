[app/sources/212431714.Dockerfile]
digraph {
  "sha256:6891acd15c5db973745b989020d8ba835217852154776da5fd9b7699f332adaa" [label="local://context" shape="ellipse"];
  "sha256:5e3ffce172abe029e14398c960f76178160392adccdc24ec33a7ba0bde79cc90" [label="docker-image://docker.io/library/php:5.6-apache" shape="ellipse"];
  "sha256:52f686f9aa1494c2f0cc3c0dfcf792bf6c3dee8ab28956c499b1fa3ed4de6aad" [label="copy{src=/flag_header.php, dest=/var/www/html/flag_header.php}" shape="note"];
  "sha256:8b60398f46e43b00cc237a9bbf3953da83e8f1885c1b945678628fbb7320f467" [label="copy{src=/blackhole.jpg, dest=/var/www/html/blackhole.jpg}" shape="note"];
  "sha256:14081d69c5172b459b77b64eac0b2ebb76d36f0eedf1ca80e39e84b8de3adb82" [label="copy{src=/index.php, dest=/var/www/html/index.php}" shape="note"];
  "sha256:df577f0de35b039a3528de12c504c4e844313ff8d00de54fceca396c4208e23d" [label="copy{src=/index.phps, dest=/var/www/html/index.phps}" shape="note"];
  "sha256:3060eb2d141de1c4c684fb1085a8cc9a8cc3b325641f176e068c78fd57348807" [label="copy{src=/.htaccess, dest=/var/www/html/}" shape="note"];
  "sha256:68c10e1faab2bc64322d55318cb9a2c5b335a94f7b85fb52fedca53a05b1d1ab" [label="sha256:68c10e1faab2bc64322d55318cb9a2c5b335a94f7b85fb52fedca53a05b1d1ab" shape="plaintext"];
  "sha256:5e3ffce172abe029e14398c960f76178160392adccdc24ec33a7ba0bde79cc90" -> "sha256:52f686f9aa1494c2f0cc3c0dfcf792bf6c3dee8ab28956c499b1fa3ed4de6aad" [label=""];
  "sha256:6891acd15c5db973745b989020d8ba835217852154776da5fd9b7699f332adaa" -> "sha256:52f686f9aa1494c2f0cc3c0dfcf792bf6c3dee8ab28956c499b1fa3ed4de6aad" [label=""];
  "sha256:52f686f9aa1494c2f0cc3c0dfcf792bf6c3dee8ab28956c499b1fa3ed4de6aad" -> "sha256:8b60398f46e43b00cc237a9bbf3953da83e8f1885c1b945678628fbb7320f467" [label=""];
  "sha256:6891acd15c5db973745b989020d8ba835217852154776da5fd9b7699f332adaa" -> "sha256:8b60398f46e43b00cc237a9bbf3953da83e8f1885c1b945678628fbb7320f467" [label=""];
  "sha256:8b60398f46e43b00cc237a9bbf3953da83e8f1885c1b945678628fbb7320f467" -> "sha256:14081d69c5172b459b77b64eac0b2ebb76d36f0eedf1ca80e39e84b8de3adb82" [label=""];
  "sha256:6891acd15c5db973745b989020d8ba835217852154776da5fd9b7699f332adaa" -> "sha256:14081d69c5172b459b77b64eac0b2ebb76d36f0eedf1ca80e39e84b8de3adb82" [label=""];
  "sha256:14081d69c5172b459b77b64eac0b2ebb76d36f0eedf1ca80e39e84b8de3adb82" -> "sha256:df577f0de35b039a3528de12c504c4e844313ff8d00de54fceca396c4208e23d" [label=""];
  "sha256:6891acd15c5db973745b989020d8ba835217852154776da5fd9b7699f332adaa" -> "sha256:df577f0de35b039a3528de12c504c4e844313ff8d00de54fceca396c4208e23d" [label=""];
  "sha256:df577f0de35b039a3528de12c504c4e844313ff8d00de54fceca396c4208e23d" -> "sha256:3060eb2d141de1c4c684fb1085a8cc9a8cc3b325641f176e068c78fd57348807" [label=""];
  "sha256:6891acd15c5db973745b989020d8ba835217852154776da5fd9b7699f332adaa" -> "sha256:3060eb2d141de1c4c684fb1085a8cc9a8cc3b325641f176e068c78fd57348807" [label=""];
  "sha256:3060eb2d141de1c4c684fb1085a8cc9a8cc3b325641f176e068c78fd57348807" -> "sha256:68c10e1faab2bc64322d55318cb9a2c5b335a94f7b85fb52fedca53a05b1d1ab" [label=""];
}

