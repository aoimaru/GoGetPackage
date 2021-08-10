[app/sources/264906969.Dockerfile]
digraph {
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" [label="docker-image://docker.io/library/php:7.0-apache" shape="ellipse"];
  "sha256:1e1ca42055402f47a7524bfbd027d59a87d1932d24dee639122af76de7836994" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer" shape="box"];
  "sha256:22b0016d8115a1c05fbfd0b3c567458eed36cf07b4b2b15686fbca08c9312786" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:9e0a6361dc357cb6dc4be66faf32f4e205af814c70ee764eb5c641c1073fa0b2" [label="/bin/sh -c apt-get install -y git" shape="box"];
  "sha256:4b7d0f580e4533f84dc952528b3a4ddf3a754968b6b154f38b01c1af556046fb" [label="local://context" shape="ellipse"];
  "sha256:ccc1faa76c08e3aca0c2716dfbd5203acb7d5e97199382770c23298d1f19e245" [label="copy{src=/composer.json, dest=/var/www}" shape="note"];
  "sha256:2cad44294ce586c67c7cfe563353a4ad1226a88d5591d66dcfad7b9bbc59818e" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:9669db117bc19e3656ac9ef60e436413f8d9d3347e72b0fe26bbf4a5823696cf" [label="/bin/sh -c composer install" shape="box"];
  "sha256:99a71804e0a31c2ae1f41daaf2e3222606d8102531208958ed0261fb29716630" [label="copy{src=/public, dest=/var/www/html/}" shape="note"];
  "sha256:4c84b3e17b7d479b949365bb3fb441f47917678531d6e94614db818a52d426d0" [label="copy{src=/src, dest=/var/www/src}" shape="note"];
  "sha256:2c4563ae402bf27d1ae921232970724aaac878247a021824553a103037428eaa" [label="/bin/sh -c cp /var/www/src/diskover/Constants.php.sample /var/www/src/diskover/Constants.php" shape="box"];
  "sha256:b36454bd268809bda29d73b1c956a78940594bc81183974cba732e5c53407c69" [label="/bin/sh -c cp /var/www/html/smartsearches.txt.sample /var/www/html/smartsearches.txt" shape="box"];
  "sha256:7d3938254445dc0d202306fa6a6fe661a240d873783c60f9a5a59ee467f2ff59" [label="/bin/sh -c cp /var/www/html/customtags.txt.sample /var/www/html/customtags.txt" shape="box"];
  "sha256:e18c109db81cfe01cb7b7ed05a157851375e2cd3cda746edc737a11b45fe1549" [label="/bin/sh -c cp /var/www/html/extrafields.txt.sample /var/www/html/extrafields.txt" shape="box"];
  "sha256:4ea723e7f235b76d3a8646dfa632f50216d8603764ebbe5135c4d81e8993069d" [label="/bin/sh -c sed -i \"s!const ES_HOST = 'localhost';!const ES_HOST = '$ES_HOST';!g\" /var/www/src/diskover/Constants.php" shape="box"];
  "sha256:59b2d00fd5ab61e45e7ccc53e950db75dd48ccd196e830d72a01f2337fceaa9a" [label="/bin/sh -c ln -s /var/www/html/dashboard.php /var/www/html/index.php" shape="box"];
  "sha256:da35588b7702ec7dc83f34cb0e04607a4b79f104988144a7e87db287b32b5753" [label="sha256:da35588b7702ec7dc83f34cb0e04607a4b79f104988144a7e87db287b32b5753" shape="plaintext"];
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" -> "sha256:1e1ca42055402f47a7524bfbd027d59a87d1932d24dee639122af76de7836994" [label=""];
  "sha256:1e1ca42055402f47a7524bfbd027d59a87d1932d24dee639122af76de7836994" -> "sha256:22b0016d8115a1c05fbfd0b3c567458eed36cf07b4b2b15686fbca08c9312786" [label=""];
  "sha256:22b0016d8115a1c05fbfd0b3c567458eed36cf07b4b2b15686fbca08c9312786" -> "sha256:9e0a6361dc357cb6dc4be66faf32f4e205af814c70ee764eb5c641c1073fa0b2" [label=""];
  "sha256:9e0a6361dc357cb6dc4be66faf32f4e205af814c70ee764eb5c641c1073fa0b2" -> "sha256:ccc1faa76c08e3aca0c2716dfbd5203acb7d5e97199382770c23298d1f19e245" [label=""];
  "sha256:4b7d0f580e4533f84dc952528b3a4ddf3a754968b6b154f38b01c1af556046fb" -> "sha256:ccc1faa76c08e3aca0c2716dfbd5203acb7d5e97199382770c23298d1f19e245" [label=""];
  "sha256:ccc1faa76c08e3aca0c2716dfbd5203acb7d5e97199382770c23298d1f19e245" -> "sha256:2cad44294ce586c67c7cfe563353a4ad1226a88d5591d66dcfad7b9bbc59818e" [label=""];
  "sha256:2cad44294ce586c67c7cfe563353a4ad1226a88d5591d66dcfad7b9bbc59818e" -> "sha256:9669db117bc19e3656ac9ef60e436413f8d9d3347e72b0fe26bbf4a5823696cf" [label=""];
  "sha256:9669db117bc19e3656ac9ef60e436413f8d9d3347e72b0fe26bbf4a5823696cf" -> "sha256:99a71804e0a31c2ae1f41daaf2e3222606d8102531208958ed0261fb29716630" [label=""];
  "sha256:4b7d0f580e4533f84dc952528b3a4ddf3a754968b6b154f38b01c1af556046fb" -> "sha256:99a71804e0a31c2ae1f41daaf2e3222606d8102531208958ed0261fb29716630" [label=""];
  "sha256:99a71804e0a31c2ae1f41daaf2e3222606d8102531208958ed0261fb29716630" -> "sha256:4c84b3e17b7d479b949365bb3fb441f47917678531d6e94614db818a52d426d0" [label=""];
  "sha256:4b7d0f580e4533f84dc952528b3a4ddf3a754968b6b154f38b01c1af556046fb" -> "sha256:4c84b3e17b7d479b949365bb3fb441f47917678531d6e94614db818a52d426d0" [label=""];
  "sha256:4c84b3e17b7d479b949365bb3fb441f47917678531d6e94614db818a52d426d0" -> "sha256:2c4563ae402bf27d1ae921232970724aaac878247a021824553a103037428eaa" [label=""];
  "sha256:2c4563ae402bf27d1ae921232970724aaac878247a021824553a103037428eaa" -> "sha256:b36454bd268809bda29d73b1c956a78940594bc81183974cba732e5c53407c69" [label=""];
  "sha256:b36454bd268809bda29d73b1c956a78940594bc81183974cba732e5c53407c69" -> "sha256:7d3938254445dc0d202306fa6a6fe661a240d873783c60f9a5a59ee467f2ff59" [label=""];
  "sha256:7d3938254445dc0d202306fa6a6fe661a240d873783c60f9a5a59ee467f2ff59" -> "sha256:e18c109db81cfe01cb7b7ed05a157851375e2cd3cda746edc737a11b45fe1549" [label=""];
  "sha256:e18c109db81cfe01cb7b7ed05a157851375e2cd3cda746edc737a11b45fe1549" -> "sha256:4ea723e7f235b76d3a8646dfa632f50216d8603764ebbe5135c4d81e8993069d" [label=""];
  "sha256:4ea723e7f235b76d3a8646dfa632f50216d8603764ebbe5135c4d81e8993069d" -> "sha256:59b2d00fd5ab61e45e7ccc53e950db75dd48ccd196e830d72a01f2337fceaa9a" [label=""];
  "sha256:59b2d00fd5ab61e45e7ccc53e950db75dd48ccd196e830d72a01f2337fceaa9a" -> "sha256:da35588b7702ec7dc83f34cb0e04607a4b79f104988144a7e87db287b32b5753" [label=""];
}

