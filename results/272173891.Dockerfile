[app/sources/272173891.Dockerfile]
digraph {
  "sha256:02111d5ad7cfb4ee9dda78052cdfc5115a545a3bfeb502347618f82583259cd3" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:3dfad46317e1102b340d2944ec0a6138af2ddd42db5eefd134213296a670d284" [label="/bin/sh -c apt-get install -y apache2     libapache2-mod-wsgi     build-essential     python     python-dev     python-pip" shape="box"];
  "sha256:ab6cab52908c9662ecb18623b2c3fef9a9020769aa3c408054c1dceb2fbba29c" [label="/bin/sh -c apt-get install -y wget" shape="box"];
  "sha256:2c8b529ca08e0a77c94d36b8f55d06a56b9d0959425e76c318c198f1cc46c586" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:8add068152503643f263593ba18e40c47b30f5a8c68272171576be5a87a4460f" [label="/bin/sh -c apt-get autoremove" shape="box"];
  "sha256:cd9c79d53491d25fb1acef50af044595cebefaecbc07a2ea31fff06263881d77" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:85ff667cdf2b3f0d543c64073d4205e431d9f5dba9853aba7d55a14cc2b75a43" [label="copy{src=/requirements.txt, dest=/requirements.txt}" shape="note"];
  "sha256:0b539fd02658040d0a1db7f5c0a8820ebe25e9c1ff29272579530dc3bf14e73a" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:2fb9d8a787a62f376ca1ec932d0fb84a7933d773b8831ac8b8c2f1d66aefac02" [label="/bin/sh -c pip install -r /requirements.txt" shape="box"];
  "sha256:6d6f0d7ac93302f6dba4df795b776d4099e44bcddee832c6e0975b282aaa40c3" [label="copy{src=/ssrf-app.conf, dest=/etc/apache2/sites-available/ssrf-app.conf}" shape="note"];
  "sha256:072ceb9ae0b843f020f199b12946b27fee4dead1351b706d1ad5cd8ec1041b20" [label="/bin/sh -c a2ensite ssrf-app" shape="box"];
  "sha256:b219ed4e07ff4506fe814decc700934ca1c68bf9ddd67056394844db7c5be529" [label="/bin/sh -c a2enmod headers" shape="box"];
  "sha256:45cacee17baf3551cd5efa035f1ba41fb7a4f9be6f896a669290770a02196008" [label="copy{src=/backend/SSRFApp, dest=/var/www/SSRFApp/SSRFApp/}" shape="note"];
  "sha256:7c8e0a680eba615621be1e107e63231d7cd39fb2f7c1bd3c9b08c5049edf9c1c" [label="copy{src=/backend/SSRFApp.wsgi, dest=/var/www/SSRFApp/SSRFApp.wsgi}" shape="note"];
  "sha256:e24e6002290bf8ff3565ccc02ab586953ee66a8ef364f0ae2d19ec6f57b07f3d" [label="copy{src=/frontend, dest=/var/www/html}" shape="note"];
  "sha256:7ac4b83dbf859665697d752bc3bc34c30136a9ccf40f0a95d017a32b438d090b" [label="/bin/sh -c a2dissite 000-default.conf" shape="box"];
  "sha256:fe200cef83a05779ad2cd510700530fe3ecea0012cc06de7e1c00004f59a698c" [label="/bin/sh -c a2ensite ssrf-app.conf" shape="box"];
  "sha256:96113ce9c6c894f6e3b0ab0ac71a403fe4bddc717fc33ce658f01bbbfdd9a02a" [label="mkdir{path=/var/www/SSRFApp}" shape="note"];
  "sha256:f0acedb4eafb85057222fcc09da4901d96a66ee9a6fbf7e9a46081250af02781" [label="sha256:f0acedb4eafb85057222fcc09da4901d96a66ee9a6fbf7e9a46081250af02781" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label=""];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" -> "sha256:3dfad46317e1102b340d2944ec0a6138af2ddd42db5eefd134213296a670d284" [label=""];
  "sha256:3dfad46317e1102b340d2944ec0a6138af2ddd42db5eefd134213296a670d284" -> "sha256:ab6cab52908c9662ecb18623b2c3fef9a9020769aa3c408054c1dceb2fbba29c" [label=""];
  "sha256:ab6cab52908c9662ecb18623b2c3fef9a9020769aa3c408054c1dceb2fbba29c" -> "sha256:2c8b529ca08e0a77c94d36b8f55d06a56b9d0959425e76c318c198f1cc46c586" [label=""];
  "sha256:2c8b529ca08e0a77c94d36b8f55d06a56b9d0959425e76c318c198f1cc46c586" -> "sha256:8add068152503643f263593ba18e40c47b30f5a8c68272171576be5a87a4460f" [label=""];
  "sha256:8add068152503643f263593ba18e40c47b30f5a8c68272171576be5a87a4460f" -> "sha256:cd9c79d53491d25fb1acef50af044595cebefaecbc07a2ea31fff06263881d77" [label=""];
  "sha256:cd9c79d53491d25fb1acef50af044595cebefaecbc07a2ea31fff06263881d77" -> "sha256:85ff667cdf2b3f0d543c64073d4205e431d9f5dba9853aba7d55a14cc2b75a43" [label=""];
  "sha256:02111d5ad7cfb4ee9dda78052cdfc5115a545a3bfeb502347618f82583259cd3" -> "sha256:85ff667cdf2b3f0d543c64073d4205e431d9f5dba9853aba7d55a14cc2b75a43" [label=""];
  "sha256:85ff667cdf2b3f0d543c64073d4205e431d9f5dba9853aba7d55a14cc2b75a43" -> "sha256:0b539fd02658040d0a1db7f5c0a8820ebe25e9c1ff29272579530dc3bf14e73a" [label=""];
  "sha256:0b539fd02658040d0a1db7f5c0a8820ebe25e9c1ff29272579530dc3bf14e73a" -> "sha256:2fb9d8a787a62f376ca1ec932d0fb84a7933d773b8831ac8b8c2f1d66aefac02" [label=""];
  "sha256:2fb9d8a787a62f376ca1ec932d0fb84a7933d773b8831ac8b8c2f1d66aefac02" -> "sha256:6d6f0d7ac93302f6dba4df795b776d4099e44bcddee832c6e0975b282aaa40c3" [label=""];
  "sha256:02111d5ad7cfb4ee9dda78052cdfc5115a545a3bfeb502347618f82583259cd3" -> "sha256:6d6f0d7ac93302f6dba4df795b776d4099e44bcddee832c6e0975b282aaa40c3" [label=""];
  "sha256:6d6f0d7ac93302f6dba4df795b776d4099e44bcddee832c6e0975b282aaa40c3" -> "sha256:072ceb9ae0b843f020f199b12946b27fee4dead1351b706d1ad5cd8ec1041b20" [label=""];
  "sha256:072ceb9ae0b843f020f199b12946b27fee4dead1351b706d1ad5cd8ec1041b20" -> "sha256:b219ed4e07ff4506fe814decc700934ca1c68bf9ddd67056394844db7c5be529" [label=""];
  "sha256:b219ed4e07ff4506fe814decc700934ca1c68bf9ddd67056394844db7c5be529" -> "sha256:45cacee17baf3551cd5efa035f1ba41fb7a4f9be6f896a669290770a02196008" [label=""];
  "sha256:02111d5ad7cfb4ee9dda78052cdfc5115a545a3bfeb502347618f82583259cd3" -> "sha256:45cacee17baf3551cd5efa035f1ba41fb7a4f9be6f896a669290770a02196008" [label=""];
  "sha256:45cacee17baf3551cd5efa035f1ba41fb7a4f9be6f896a669290770a02196008" -> "sha256:7c8e0a680eba615621be1e107e63231d7cd39fb2f7c1bd3c9b08c5049edf9c1c" [label=""];
  "sha256:02111d5ad7cfb4ee9dda78052cdfc5115a545a3bfeb502347618f82583259cd3" -> "sha256:7c8e0a680eba615621be1e107e63231d7cd39fb2f7c1bd3c9b08c5049edf9c1c" [label=""];
  "sha256:7c8e0a680eba615621be1e107e63231d7cd39fb2f7c1bd3c9b08c5049edf9c1c" -> "sha256:e24e6002290bf8ff3565ccc02ab586953ee66a8ef364f0ae2d19ec6f57b07f3d" [label=""];
  "sha256:02111d5ad7cfb4ee9dda78052cdfc5115a545a3bfeb502347618f82583259cd3" -> "sha256:e24e6002290bf8ff3565ccc02ab586953ee66a8ef364f0ae2d19ec6f57b07f3d" [label=""];
  "sha256:e24e6002290bf8ff3565ccc02ab586953ee66a8ef364f0ae2d19ec6f57b07f3d" -> "sha256:7ac4b83dbf859665697d752bc3bc34c30136a9ccf40f0a95d017a32b438d090b" [label=""];
  "sha256:7ac4b83dbf859665697d752bc3bc34c30136a9ccf40f0a95d017a32b438d090b" -> "sha256:fe200cef83a05779ad2cd510700530fe3ecea0012cc06de7e1c00004f59a698c" [label=""];
  "sha256:fe200cef83a05779ad2cd510700530fe3ecea0012cc06de7e1c00004f59a698c" -> "sha256:96113ce9c6c894f6e3b0ab0ac71a403fe4bddc717fc33ce658f01bbbfdd9a02a" [label=""];
  "sha256:96113ce9c6c894f6e3b0ab0ac71a403fe4bddc717fc33ce658f01bbbfdd9a02a" -> "sha256:f0acedb4eafb85057222fcc09da4901d96a66ee9a6fbf7e9a46081250af02781" [label=""];
}

