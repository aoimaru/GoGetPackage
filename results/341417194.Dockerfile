[app/sources/341417194.Dockerfile]
digraph {
  "sha256:52933c96dc51b98f52c0b888de95a297c0ec2105a509963856b20f6cfe1aa160" [label="docker-image://docker.io/library/opensuse:42.3" shape="ellipse"];
  "sha256:491914dd53d564e4890f74c3c51927fad2f731b9495476b90c83c81830055c64" [label="/bin/sh -c zypper -n update" shape="box"];
  "sha256:e01ceed8df8039f0c7e9c5e4c064e0d5009d044d5841cb515f4ea7782cbba1cc" [label="/bin/sh -c zypper -n install -y rpm-build cmake gcc-c++ tar make openssl-devel ruby ruby-devel bison libuv-devel git" shape="box"];
  "sha256:cb4b86ac6a7b92bd66aec1877f4aa430f72d05eb79fa11e6bd2d324699a6cf00" [label="/bin/sh -c zypper --no-gpg-checks -n -p http://download.opensuse.org/repositories/devel:/tools/openSUSE_Leap_42.3/ install rpmdevtools" shape="box"];
  "sha256:f97e37f84803012814ea435d64808e6c1adee53bab7b902b173ce5e5accfe8c4" [label="/bin/sh -c rpmdev-setuptree" shape="box"];
  "sha256:f9f7c001bf4fe1fd303eb872528135e57d5c5a280d541e003ae8c0f51770eff2" [label="local://context" shape="ellipse"];
  "sha256:9cf7e8a11245d126380fb3c82fbd1894a2871038ffaa1facd027f3e18418d2dc" [label="copy{src=/rpmbuild, dest=/rpmbuild/}" shape="note"];
  "sha256:c210d8e1d6af9527ce6e6d7937ccfc619e269fc7c7c642ceb5c3e420ea851d3e" [label="/bin/sh -c chown -R root:root /rpmbuild" shape="box"];
  "sha256:105b5696e96d78a0c61f6c4fff8412bf4d8ae2ff8ca4eaac1225c1949aa30804" [label="/bin/sh -c rpmbuild -ba /rpmbuild/SPECS/h2o.spec" shape="box"];
  "sha256:b149350b59fe4b07f76fa097905339c55b58ada8b23c9715d7f757f8e85adf0b" [label="/bin/sh -c tar -czf /tmp/h2o.tar.gz -C /rpmbuild RPMS SRPMS" shape="box"];
  "sha256:5a50bca7adcab989e728edc72d1cd6578bdd7767df058b9374b8238947672e2f" [label="sha256:5a50bca7adcab989e728edc72d1cd6578bdd7767df058b9374b8238947672e2f" shape="plaintext"];
  "sha256:52933c96dc51b98f52c0b888de95a297c0ec2105a509963856b20f6cfe1aa160" -> "sha256:491914dd53d564e4890f74c3c51927fad2f731b9495476b90c83c81830055c64" [label=""];
  "sha256:491914dd53d564e4890f74c3c51927fad2f731b9495476b90c83c81830055c64" -> "sha256:e01ceed8df8039f0c7e9c5e4c064e0d5009d044d5841cb515f4ea7782cbba1cc" [label=""];
  "sha256:e01ceed8df8039f0c7e9c5e4c064e0d5009d044d5841cb515f4ea7782cbba1cc" -> "sha256:cb4b86ac6a7b92bd66aec1877f4aa430f72d05eb79fa11e6bd2d324699a6cf00" [label=""];
  "sha256:cb4b86ac6a7b92bd66aec1877f4aa430f72d05eb79fa11e6bd2d324699a6cf00" -> "sha256:f97e37f84803012814ea435d64808e6c1adee53bab7b902b173ce5e5accfe8c4" [label=""];
  "sha256:f97e37f84803012814ea435d64808e6c1adee53bab7b902b173ce5e5accfe8c4" -> "sha256:9cf7e8a11245d126380fb3c82fbd1894a2871038ffaa1facd027f3e18418d2dc" [label=""];
  "sha256:f9f7c001bf4fe1fd303eb872528135e57d5c5a280d541e003ae8c0f51770eff2" -> "sha256:9cf7e8a11245d126380fb3c82fbd1894a2871038ffaa1facd027f3e18418d2dc" [label=""];
  "sha256:9cf7e8a11245d126380fb3c82fbd1894a2871038ffaa1facd027f3e18418d2dc" -> "sha256:c210d8e1d6af9527ce6e6d7937ccfc619e269fc7c7c642ceb5c3e420ea851d3e" [label=""];
  "sha256:c210d8e1d6af9527ce6e6d7937ccfc619e269fc7c7c642ceb5c3e420ea851d3e" -> "sha256:105b5696e96d78a0c61f6c4fff8412bf4d8ae2ff8ca4eaac1225c1949aa30804" [label=""];
  "sha256:105b5696e96d78a0c61f6c4fff8412bf4d8ae2ff8ca4eaac1225c1949aa30804" -> "sha256:b149350b59fe4b07f76fa097905339c55b58ada8b23c9715d7f757f8e85adf0b" [label=""];
  "sha256:b149350b59fe4b07f76fa097905339c55b58ada8b23c9715d7f757f8e85adf0b" -> "sha256:5a50bca7adcab989e728edc72d1cd6578bdd7767df058b9374b8238947672e2f" [label=""];
}

