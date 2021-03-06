[app/sources/165822547.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:9c907c0181dcf48bf8c7ff1d00c1112df6eb4572c1a777f3d4259e8bd4e5ff27" [label="/bin/sh -c yum -y update" shape="box"];
  "sha256:d462d7c35497fe71c1f7f1586a5b5efcc7e6157481187981187dfe4229cf7059" [label="/bin/sh -c yum -y install epel-release" shape="box"];
  "sha256:acf4e47c6dfa4eda71434f3695a980be3805e9fb080b8fae729c964ed969a57f" [label="/bin/sh -c yum -y install gd gd-devel wget httpd php gcc make perl tar sendmail supervisor" shape="box"];
  "sha256:bd7c265993125f55b42aa77103e3b57c894fc1408cf2d7e73604288659cfcd7f" [label="/bin/sh -c adduser nagios" shape="box"];
  "sha256:1d17f2ec3d31af0ef20f852b577178d6e226b474a383fbe41c5a8f2412bcc4bc" [label="/bin/sh -c groupadd nagcmd" shape="box"];
  "sha256:7b4254d62aedb00b867a4410aea0597a215a7ded36f743e7e0096be8353941e0" [label="/bin/sh -c usermod -a -G nagcmd nagios" shape="box"];
  "sha256:dc3cede3e820c78c50865ca6b5d33640d041970cab6bb74b5d1ccafd024387af" [label="/bin/sh -c usermod -a -G nagios apache" shape="box"];
  "sha256:7444d653d94a2184460aff54bd4b1ae5768b1a3cf7b97104a94535f5cf6520b4" [label="http://downloads.sourceforge.net/project/nagios/nagios-4.x/nagios-4.0.8/nagios-4.0.8.tar.gz" shape="ellipse"];
  "sha256:1a08cbc0140be438a111faf59cfa3f39d92f1916cd13a81ad72f83c044326d09" [label="copy{src=/nagios-4.0.8.tar.gz, dest=/nagios-4.0.8.tar.gz}" shape="note"];
  "sha256:899d1415d1ca052b48e3ce73638e867a77659938f457514b94f7df5f7bfb60d2" [label="http://www.nagios-plugins.org/download/nagios-plugins-2.0.3.tar.gz" shape="ellipse"];
  "sha256:51f27557124f58f5a68383a0032dfc4412047288f702fe390c3498eb6113c25f" [label="copy{src=/nagios-plugins-2.0.3.tar.gz, dest=/nagios-plugins-2.0.3.tar.gz}" shape="note"];
  "sha256:f93be8a5f73ae44279172c68b2c20b55ed93304523de1e4278a9beee7f6847eb" [label="/bin/sh -c tar xf nagios-4.0.8.tar.gz" shape="box"];
  "sha256:b626ab2df01cfc7c7efad377a2480861349bbd210f45a73a4ce8b9f10a7eb426" [label="/bin/sh -c cd nagios-4.0.8 && ./configure --with-command-group=nagcmd" shape="box"];
  "sha256:3e5c85f1c5688ef217cecad0c5a8010927832ea7bbf8630ddda3bb4f2ec62120" [label="/bin/sh -c cd nagios-4.0.8 && make all && make install && make install-init" shape="box"];
  "sha256:7dfe4a23aa7f7ea414322a890074e511d0da5c073d62895321db81b2849f9870" [label="/bin/sh -c cd nagios-4.0.8 && make install-config && make install-commandmode && make install-webconf" shape="box"];
  "sha256:785d7e9f2b300d87d70fc12adb6c63812cca31254b4a7e7a0649983d2fefe6e9" [label="/bin/sh -c echo \"nagiosadmin:M.t9dyxR3OZ3E\" > /usr/local/nagios/etc/htpasswd.users" shape="box"];
  "sha256:251f30be1f1ed07e191904cdbbe77e96483c0ba2fa515a852f78f17246af5022" [label="/bin/sh -c chown nagios:nagios /usr/local/nagios/etc/htpasswd.users" shape="box"];
  "sha256:209e2de9d024a1efeb0f20afb94804500d6b84cb87f2467dcd936a3c1f17abac" [label="/bin/sh -c tar xf nagios-plugins-2.0.3.tar.gz" shape="box"];
  "sha256:bf66f85789bd004451eecfcbfc00b959eebc7b4a60c540df6b686cc2f84cc0b8" [label="/bin/sh -c cd nagios-plugins-2.0.3 && ./configure --with-nagios-user=nagios --with-nagios-group=nagios" shape="box"];
  "sha256:e4fba829c6228344e78c81909eae40cf5c1bf2087e7a387a70a5270b5fe58a35" [label="/bin/sh -c cd nagios-plugins-2.0.3 && make && make install" shape="box"];
  "sha256:0be3c39847bad0891d13cbf7ea22dc84b0ed6ef5e6cf75e02cb047a56b26a220" [label="/bin/sh -c /usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg" shape="box"];
  "sha256:eb431abdceb886f0768a081ea08a9a113fa8156d16fa34c368de2c531db768fc" [label="/bin/sh -c touch /var/www/html/index.html" shape="box"];
  "sha256:c9d0cbe5b1f6f7a5b033c9f606ff9f4e6c97d5ed44ab3b04a94e1ddc6d7ade69" [label="/bin/sh -c chown nagios.nagcmd /usr/local/nagios/var/rw" shape="box"];
  "sha256:8e8295ff07958a2f5a0361e593fdae80d68e59dcf43a4724d187a280d310730e" [label="/bin/sh -c chmod g+rwx /usr/local/nagios/var/rw" shape="box"];
  "sha256:c6eb550412173c5d43984c926ddf06fe7bb35e8a1dac91d4a733be8abce17a94" [label="/bin/sh -c chmod g+s /usr/local/nagios/var/rw" shape="box"];
  "sha256:5f003fc6a2111161199e58e5be581a996b1eb218fffb1b893fdbbe205aa14822" [label="/bin/sh -c yum -y remove gcc" shape="box"];
  "sha256:653ecdc1a054bc8fef3a4077d5468821a37f42c07f5b2164b25cbe56edebf337" [label="local://context" shape="ellipse"];
  "sha256:9e437571ee6ad1620ff7525851910910d4f979c707ee08d89b481863feedc9ae" [label="copy{src=/supervisord.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:5fba64ca1e695ba1f7a9869eae2578e035a802a85f1adcea6c07e03eaac8d423" [label="sha256:5fba64ca1e695ba1f7a9869eae2578e035a802a85f1adcea6c07e03eaac8d423" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:9c907c0181dcf48bf8c7ff1d00c1112df6eb4572c1a777f3d4259e8bd4e5ff27" [label=""];
  "sha256:9c907c0181dcf48bf8c7ff1d00c1112df6eb4572c1a777f3d4259e8bd4e5ff27" -> "sha256:d462d7c35497fe71c1f7f1586a5b5efcc7e6157481187981187dfe4229cf7059" [label=""];
  "sha256:d462d7c35497fe71c1f7f1586a5b5efcc7e6157481187981187dfe4229cf7059" -> "sha256:acf4e47c6dfa4eda71434f3695a980be3805e9fb080b8fae729c964ed969a57f" [label=""];
  "sha256:acf4e47c6dfa4eda71434f3695a980be3805e9fb080b8fae729c964ed969a57f" -> "sha256:bd7c265993125f55b42aa77103e3b57c894fc1408cf2d7e73604288659cfcd7f" [label=""];
  "sha256:bd7c265993125f55b42aa77103e3b57c894fc1408cf2d7e73604288659cfcd7f" -> "sha256:1d17f2ec3d31af0ef20f852b577178d6e226b474a383fbe41c5a8f2412bcc4bc" [label=""];
  "sha256:1d17f2ec3d31af0ef20f852b577178d6e226b474a383fbe41c5a8f2412bcc4bc" -> "sha256:7b4254d62aedb00b867a4410aea0597a215a7ded36f743e7e0096be8353941e0" [label=""];
  "sha256:7b4254d62aedb00b867a4410aea0597a215a7ded36f743e7e0096be8353941e0" -> "sha256:dc3cede3e820c78c50865ca6b5d33640d041970cab6bb74b5d1ccafd024387af" [label=""];
  "sha256:dc3cede3e820c78c50865ca6b5d33640d041970cab6bb74b5d1ccafd024387af" -> "sha256:1a08cbc0140be438a111faf59cfa3f39d92f1916cd13a81ad72f83c044326d09" [label=""];
  "sha256:7444d653d94a2184460aff54bd4b1ae5768b1a3cf7b97104a94535f5cf6520b4" -> "sha256:1a08cbc0140be438a111faf59cfa3f39d92f1916cd13a81ad72f83c044326d09" [label=""];
  "sha256:1a08cbc0140be438a111faf59cfa3f39d92f1916cd13a81ad72f83c044326d09" -> "sha256:51f27557124f58f5a68383a0032dfc4412047288f702fe390c3498eb6113c25f" [label=""];
  "sha256:899d1415d1ca052b48e3ce73638e867a77659938f457514b94f7df5f7bfb60d2" -> "sha256:51f27557124f58f5a68383a0032dfc4412047288f702fe390c3498eb6113c25f" [label=""];
  "sha256:51f27557124f58f5a68383a0032dfc4412047288f702fe390c3498eb6113c25f" -> "sha256:f93be8a5f73ae44279172c68b2c20b55ed93304523de1e4278a9beee7f6847eb" [label=""];
  "sha256:f93be8a5f73ae44279172c68b2c20b55ed93304523de1e4278a9beee7f6847eb" -> "sha256:b626ab2df01cfc7c7efad377a2480861349bbd210f45a73a4ce8b9f10a7eb426" [label=""];
  "sha256:b626ab2df01cfc7c7efad377a2480861349bbd210f45a73a4ce8b9f10a7eb426" -> "sha256:3e5c85f1c5688ef217cecad0c5a8010927832ea7bbf8630ddda3bb4f2ec62120" [label=""];
  "sha256:3e5c85f1c5688ef217cecad0c5a8010927832ea7bbf8630ddda3bb4f2ec62120" -> "sha256:7dfe4a23aa7f7ea414322a890074e511d0da5c073d62895321db81b2849f9870" [label=""];
  "sha256:7dfe4a23aa7f7ea414322a890074e511d0da5c073d62895321db81b2849f9870" -> "sha256:785d7e9f2b300d87d70fc12adb6c63812cca31254b4a7e7a0649983d2fefe6e9" [label=""];
  "sha256:785d7e9f2b300d87d70fc12adb6c63812cca31254b4a7e7a0649983d2fefe6e9" -> "sha256:251f30be1f1ed07e191904cdbbe77e96483c0ba2fa515a852f78f17246af5022" [label=""];
  "sha256:251f30be1f1ed07e191904cdbbe77e96483c0ba2fa515a852f78f17246af5022" -> "sha256:209e2de9d024a1efeb0f20afb94804500d6b84cb87f2467dcd936a3c1f17abac" [label=""];
  "sha256:209e2de9d024a1efeb0f20afb94804500d6b84cb87f2467dcd936a3c1f17abac" -> "sha256:bf66f85789bd004451eecfcbfc00b959eebc7b4a60c540df6b686cc2f84cc0b8" [label=""];
  "sha256:bf66f85789bd004451eecfcbfc00b959eebc7b4a60c540df6b686cc2f84cc0b8" -> "sha256:e4fba829c6228344e78c81909eae40cf5c1bf2087e7a387a70a5270b5fe58a35" [label=""];
  "sha256:e4fba829c6228344e78c81909eae40cf5c1bf2087e7a387a70a5270b5fe58a35" -> "sha256:0be3c39847bad0891d13cbf7ea22dc84b0ed6ef5e6cf75e02cb047a56b26a220" [label=""];
  "sha256:0be3c39847bad0891d13cbf7ea22dc84b0ed6ef5e6cf75e02cb047a56b26a220" -> "sha256:eb431abdceb886f0768a081ea08a9a113fa8156d16fa34c368de2c531db768fc" [label=""];
  "sha256:eb431abdceb886f0768a081ea08a9a113fa8156d16fa34c368de2c531db768fc" -> "sha256:c9d0cbe5b1f6f7a5b033c9f606ff9f4e6c97d5ed44ab3b04a94e1ddc6d7ade69" [label=""];
  "sha256:c9d0cbe5b1f6f7a5b033c9f606ff9f4e6c97d5ed44ab3b04a94e1ddc6d7ade69" -> "sha256:8e8295ff07958a2f5a0361e593fdae80d68e59dcf43a4724d187a280d310730e" [label=""];
  "sha256:8e8295ff07958a2f5a0361e593fdae80d68e59dcf43a4724d187a280d310730e" -> "sha256:c6eb550412173c5d43984c926ddf06fe7bb35e8a1dac91d4a733be8abce17a94" [label=""];
  "sha256:c6eb550412173c5d43984c926ddf06fe7bb35e8a1dac91d4a733be8abce17a94" -> "sha256:5f003fc6a2111161199e58e5be581a996b1eb218fffb1b893fdbbe205aa14822" [label=""];
  "sha256:5f003fc6a2111161199e58e5be581a996b1eb218fffb1b893fdbbe205aa14822" -> "sha256:9e437571ee6ad1620ff7525851910910d4f979c707ee08d89b481863feedc9ae" [label=""];
  "sha256:653ecdc1a054bc8fef3a4077d5468821a37f42c07f5b2164b25cbe56edebf337" -> "sha256:9e437571ee6ad1620ff7525851910910d4f979c707ee08d89b481863feedc9ae" [label=""];
  "sha256:9e437571ee6ad1620ff7525851910910d4f979c707ee08d89b481863feedc9ae" -> "sha256:5fba64ca1e695ba1f7a9869eae2578e035a802a85f1adcea6c07e03eaac8d423" [label=""];
}

