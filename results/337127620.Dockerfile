[app/sources/337127620.Dockerfile]
digraph {
  "sha256:d7600537f603dea2251208fff2d5e833f29c7851362691b0bcb6a213395d9a2a" [label="docker-image://docker.io/openrasp/php5.4:latest" shape="ellipse"];
  "sha256:f49cded1bb1acdf077a4ac698b256a91ff86dcf35f00090b77010690939c2aab" [label="/bin/sh -c curl \"$install_url\" -o /tmp/joomla.tar.bz2 \t&& cd \"$install_path\" \t&& tar -jxf /tmp/joomla.tar.bz2 \t&& chmod 777 -R \"$install_path\" \t&& rm -fr /tmp/joomla.tar.bz2 \"$install_path\"/installation/" shape="box"];
  "sha256:7a82f4c20528c6aeebf7db675a418efbd20f8159e125ffd75afb9817815442bf" [label="local://context" shape="ellipse"];
  "sha256:11b6cb2cba3e998fb5f2a0fdcf4c2da6e73dbfd100f8635540b23aea84d7e1b3" [label="copy{src=/configuration.php, dest=/var/www/html/configuration.php}" shape="note"];
  "sha256:c6584ed9099f508e3232538007768c449568729b13d19e4e96b2a2484d07ad71" [label="copy{src=/mysql.tar.bz2, dest=/tmp/}" shape="note"];
  "sha256:c5870040db3d8390487e6b3604d8524d64e172067da861e24d40757ddcd46b0e" [label="/bin/sh -c tar -xf /tmp/mysql.tar.bz2 -C /var/lib/mysql \t&& chown mysql -R /var/lib/mysql \t&& rm -f /tmp/mysql.tar.bz2" shape="box"];
  "sha256:d9176c0823ed8696d22acac886ce04ed5015d75e5be3bb7f387acc155d5d61d3" [label="sha256:d9176c0823ed8696d22acac886ce04ed5015d75e5be3bb7f387acc155d5d61d3" shape="plaintext"];
  "sha256:d7600537f603dea2251208fff2d5e833f29c7851362691b0bcb6a213395d9a2a" -> "sha256:f49cded1bb1acdf077a4ac698b256a91ff86dcf35f00090b77010690939c2aab" [label=""];
  "sha256:f49cded1bb1acdf077a4ac698b256a91ff86dcf35f00090b77010690939c2aab" -> "sha256:11b6cb2cba3e998fb5f2a0fdcf4c2da6e73dbfd100f8635540b23aea84d7e1b3" [label=""];
  "sha256:7a82f4c20528c6aeebf7db675a418efbd20f8159e125ffd75afb9817815442bf" -> "sha256:11b6cb2cba3e998fb5f2a0fdcf4c2da6e73dbfd100f8635540b23aea84d7e1b3" [label=""];
  "sha256:11b6cb2cba3e998fb5f2a0fdcf4c2da6e73dbfd100f8635540b23aea84d7e1b3" -> "sha256:c6584ed9099f508e3232538007768c449568729b13d19e4e96b2a2484d07ad71" [label=""];
  "sha256:7a82f4c20528c6aeebf7db675a418efbd20f8159e125ffd75afb9817815442bf" -> "sha256:c6584ed9099f508e3232538007768c449568729b13d19e4e96b2a2484d07ad71" [label=""];
  "sha256:c6584ed9099f508e3232538007768c449568729b13d19e4e96b2a2484d07ad71" -> "sha256:c5870040db3d8390487e6b3604d8524d64e172067da861e24d40757ddcd46b0e" [label=""];
  "sha256:c5870040db3d8390487e6b3604d8524d64e172067da861e24d40757ddcd46b0e" -> "sha256:d9176c0823ed8696d22acac886ce04ed5015d75e5be3bb7f387acc155d5d61d3" [label=""];
}

