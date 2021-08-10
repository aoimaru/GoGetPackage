[app/sources/178962710.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:8ff783f564c9b679a114bfd664fb7ee1ec2708bda8e7361e2deaac894f32f53a" [label="/bin/sh -c apt-get update && apt-get install -y apt-transport-https ca-certificates" shape="box"];
  "sha256:8581821651a3fc452ee35a1d93cbf154a3c30825e7371b2e6554b4dc5953392a" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv 1655a0ab68576280 && apt-key update && apt-get update" shape="box"];
  "sha256:03747fd69f5601857ac418742d15fb5d965e089bdc5b635e97461f08e3129c27" [label="/bin/sh -c apt-get install -y build-essential libxml2-dev libxslt-dev git curl g++ gcc curl && apt-get clean" shape="box"];
  "sha256:1af280bda6d6b82a3d7bb596901bab3dd8401f2131954f439cb80254c231757d" [label="/bin/sh -c gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB" shape="box"];
  "sha256:208181348cd88f72023837cca81cab27f8d8f0a15c119761ea2d995cc55912c4" [label="/bin/sh -c curl -sSL https://get.rvm.io | bash -s stable" shape="box"];
  "sha256:521ef99af122f79241b72a58fac10731d986a80dfb4326be17cf711a10badd41" [label="/bin/sh -c /bin/bash -l -c \"rvm install 2.3.3\"" shape="box"];
  "sha256:eff5d32eeb1db00b3eb740bb7782755d4da4eae73bb083764367ce82deb398d3" [label="/bin/sh -c /bin/bash -l -c \"rvm use 2.3.3\"" shape="box"];
  "sha256:68b706ccbdec19cc7f93043dcf01e355e706d2508c4cf590a95f5ab0bfd107e2" [label="/bin/sh -c /bin/bash -l -c \"echo 'gem: --no-ri --no-rdoc' > ~/.gemrc\"" shape="box"];
  "sha256:97bf2e8a8f748b1617740b087bf177dfbec2085e72367b7206d586b25ba03ea0" [label="/bin/sh -c /bin/bash -l -c \"gem install bundler -v \"1.16.2\" --no-ri --no-rdoc\"" shape="box"];
  "sha256:4e1bec21535aa7ff536132b1792a05f566640c5564381ed466cbb78b1ffd167b" [label="/bin/sh -c useradd -d /home/cloudhealth/ -m cloudhealth" shape="box"];
  "sha256:fe7a4185d51121e17cc907e3e533a527326c218100bfd89435a1808d9015d54a" [label="local://context" shape="ellipse"];
  "sha256:011b71820a6e597c86649737018005f61e8596be7836381623e9af75cb353b5f" [label="copy{src=/docker/config/bundle/config, dest=/home/cloudhealth/.bundle/config}" shape="note"];
  "sha256:c6431adc7a60e98c67acf3042edec41acb1750d475196433472fe19dedff0313" [label="/bin/sh -c chown -R cloudhealth:cloudhealth /home/cloudhealth/.bundle/" shape="box"];
  "sha256:8f1389fea4a75b684c038136ff7b251cc723d6c0245c970d7d104693f79c5531" [label="/bin/sh -c mkdir -p /home/cloudhealth/ar-ondemand" shape="box"];
  "sha256:1deaa7a2b71f2eb5ad1c8c08fee83895fd2f7f07dae03ef94d924f8b25166362" [label="/bin/sh -c mkdir -p /home/cloudhealth/ar-ondemand/lib" shape="box"];
  "sha256:6d922c83404931e629ee9d3b1b78c544a0d69bf42a887ef304bdc354750e49c5" [label="/bin/sh -c mkdir -p /home/cloudhealth/ar-ondemand/lib/ar-ondemand" shape="box"];
  "sha256:8824408f8de12dca110037d37529a19d1c1c9e29ffd52fa7688e649bc88f02fc" [label="copy{src=/Gemfile, dest=/home/cloudhealth/ar-ondemand}" shape="note"];
  "sha256:fff340fbf8292b223fd96e9a8a10c8707737a15d95b8babca5940f7a5f0b43b3" [label="copy{src=/ar-ondemand.gemspec, dest=/home/cloudhealth/ar-ondemand}" shape="note"];
  "sha256:5158b13b41a1bbe2c128b28de42681b45c26aa57172410ed41c2fd040d540418" [label="copy{src=/lib/ar-ondemand/version.rb, dest=/home/cloudhealth/ar-ondemand/lib/ar-ondemand}" shape="note"];
  "sha256:bdce5efe197a896872774d19ae648a3374d37385bd3b40250a0c34bf85161057" [label="/bin/sh -c chown -R cloudhealth:cloudhealth /home/cloudhealth/ar-ondemand" shape="box"];
  "sha256:413ceabea590d871f3558dea09ed199855ce0daf84256f17a9c0471554825a89" [label="mkdir{path=/home/cloudhealth/ar-ondemand}" shape="note"];
  "sha256:a03dd82ed844a13cfea266a0963cfc13a07d0b865048c66d445f5d39b5a9415e" [label="/bin/sh -c /bin/bash -c -l \"USE_SYSTEM_GECODE=1 RAILS_ENV=test bundle install --no-deployment --binstubs=bin\"" shape="box"];
  "sha256:69becca9877748fa1b8057d0c536813d84b7c6de75fc1b99be8e1929045f9435" [label="sha256:69becca9877748fa1b8057d0c536813d84b7c6de75fc1b99be8e1929045f9435" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:8ff783f564c9b679a114bfd664fb7ee1ec2708bda8e7361e2deaac894f32f53a" [label=""];
  "sha256:8ff783f564c9b679a114bfd664fb7ee1ec2708bda8e7361e2deaac894f32f53a" -> "sha256:8581821651a3fc452ee35a1d93cbf154a3c30825e7371b2e6554b4dc5953392a" [label=""];
  "sha256:8581821651a3fc452ee35a1d93cbf154a3c30825e7371b2e6554b4dc5953392a" -> "sha256:03747fd69f5601857ac418742d15fb5d965e089bdc5b635e97461f08e3129c27" [label=""];
  "sha256:03747fd69f5601857ac418742d15fb5d965e089bdc5b635e97461f08e3129c27" -> "sha256:1af280bda6d6b82a3d7bb596901bab3dd8401f2131954f439cb80254c231757d" [label=""];
  "sha256:1af280bda6d6b82a3d7bb596901bab3dd8401f2131954f439cb80254c231757d" -> "sha256:208181348cd88f72023837cca81cab27f8d8f0a15c119761ea2d995cc55912c4" [label=""];
  "sha256:208181348cd88f72023837cca81cab27f8d8f0a15c119761ea2d995cc55912c4" -> "sha256:521ef99af122f79241b72a58fac10731d986a80dfb4326be17cf711a10badd41" [label=""];
  "sha256:521ef99af122f79241b72a58fac10731d986a80dfb4326be17cf711a10badd41" -> "sha256:eff5d32eeb1db00b3eb740bb7782755d4da4eae73bb083764367ce82deb398d3" [label=""];
  "sha256:eff5d32eeb1db00b3eb740bb7782755d4da4eae73bb083764367ce82deb398d3" -> "sha256:68b706ccbdec19cc7f93043dcf01e355e706d2508c4cf590a95f5ab0bfd107e2" [label=""];
  "sha256:68b706ccbdec19cc7f93043dcf01e355e706d2508c4cf590a95f5ab0bfd107e2" -> "sha256:97bf2e8a8f748b1617740b087bf177dfbec2085e72367b7206d586b25ba03ea0" [label=""];
  "sha256:97bf2e8a8f748b1617740b087bf177dfbec2085e72367b7206d586b25ba03ea0" -> "sha256:4e1bec21535aa7ff536132b1792a05f566640c5564381ed466cbb78b1ffd167b" [label=""];
  "sha256:4e1bec21535aa7ff536132b1792a05f566640c5564381ed466cbb78b1ffd167b" -> "sha256:011b71820a6e597c86649737018005f61e8596be7836381623e9af75cb353b5f" [label=""];
  "sha256:fe7a4185d51121e17cc907e3e533a527326c218100bfd89435a1808d9015d54a" -> "sha256:011b71820a6e597c86649737018005f61e8596be7836381623e9af75cb353b5f" [label=""];
  "sha256:011b71820a6e597c86649737018005f61e8596be7836381623e9af75cb353b5f" -> "sha256:c6431adc7a60e98c67acf3042edec41acb1750d475196433472fe19dedff0313" [label=""];
  "sha256:c6431adc7a60e98c67acf3042edec41acb1750d475196433472fe19dedff0313" -> "sha256:8f1389fea4a75b684c038136ff7b251cc723d6c0245c970d7d104693f79c5531" [label=""];
  "sha256:8f1389fea4a75b684c038136ff7b251cc723d6c0245c970d7d104693f79c5531" -> "sha256:1deaa7a2b71f2eb5ad1c8c08fee83895fd2f7f07dae03ef94d924f8b25166362" [label=""];
  "sha256:1deaa7a2b71f2eb5ad1c8c08fee83895fd2f7f07dae03ef94d924f8b25166362" -> "sha256:6d922c83404931e629ee9d3b1b78c544a0d69bf42a887ef304bdc354750e49c5" [label=""];
  "sha256:6d922c83404931e629ee9d3b1b78c544a0d69bf42a887ef304bdc354750e49c5" -> "sha256:8824408f8de12dca110037d37529a19d1c1c9e29ffd52fa7688e649bc88f02fc" [label=""];
  "sha256:fe7a4185d51121e17cc907e3e533a527326c218100bfd89435a1808d9015d54a" -> "sha256:8824408f8de12dca110037d37529a19d1c1c9e29ffd52fa7688e649bc88f02fc" [label=""];
  "sha256:8824408f8de12dca110037d37529a19d1c1c9e29ffd52fa7688e649bc88f02fc" -> "sha256:fff340fbf8292b223fd96e9a8a10c8707737a15d95b8babca5940f7a5f0b43b3" [label=""];
  "sha256:fe7a4185d51121e17cc907e3e533a527326c218100bfd89435a1808d9015d54a" -> "sha256:fff340fbf8292b223fd96e9a8a10c8707737a15d95b8babca5940f7a5f0b43b3" [label=""];
  "sha256:fff340fbf8292b223fd96e9a8a10c8707737a15d95b8babca5940f7a5f0b43b3" -> "sha256:5158b13b41a1bbe2c128b28de42681b45c26aa57172410ed41c2fd040d540418" [label=""];
  "sha256:fe7a4185d51121e17cc907e3e533a527326c218100bfd89435a1808d9015d54a" -> "sha256:5158b13b41a1bbe2c128b28de42681b45c26aa57172410ed41c2fd040d540418" [label=""];
  "sha256:5158b13b41a1bbe2c128b28de42681b45c26aa57172410ed41c2fd040d540418" -> "sha256:bdce5efe197a896872774d19ae648a3374d37385bd3b40250a0c34bf85161057" [label=""];
  "sha256:bdce5efe197a896872774d19ae648a3374d37385bd3b40250a0c34bf85161057" -> "sha256:413ceabea590d871f3558dea09ed199855ce0daf84256f17a9c0471554825a89" [label=""];
  "sha256:413ceabea590d871f3558dea09ed199855ce0daf84256f17a9c0471554825a89" -> "sha256:a03dd82ed844a13cfea266a0963cfc13a07d0b865048c66d445f5d39b5a9415e" [label=""];
  "sha256:a03dd82ed844a13cfea266a0963cfc13a07d0b865048c66d445f5d39b5a9415e" -> "sha256:69becca9877748fa1b8057d0c536813d84b7c6de75fc1b99be8e1929045f9435" [label=""];
}

