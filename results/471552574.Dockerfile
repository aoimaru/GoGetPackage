[app/sources/471552574.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:df184bdeecbcfd1db7661660ec445a34d57084e87b0ecfdb87c0739dcda57286" [label="/bin/sh -c apt-get update && apt-get install -y     python3     python3-pip     wget     rabbitmq-server     supervisor     openjdk-8-jdk-headless     wget     apt-transport-https" shape="box"];
  "sha256:910c15c6c6eca9cfcdc44648d5cc7e7ba8c44cdea4d6ec5b045f98e9436508da" [label="/bin/sh -c wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -" shape="box"];
  "sha256:38e3c52c2fc20f36bf882ede43d737c042fd67a9d2530e4bb0fd666a61c08315" [label="/bin/sh -c echo \"deb https://artifacts.elastic.co/packages/6.x/apt stable main\" | tee -a /etc/apt/sources.list.d/elastic-6.x.list" shape="box"];
  "sha256:a8f71ade8463cefa412f305da951f5a362d5d28112d2289e37f811b1cb654f71" [label="/bin/sh -c apt-get update && apt-get install elasticsearch kibana -y" shape="box"];
  "sha256:7d66ff15e86609c9193295e4c73f55e2c1873c9dc865400f6ad9db86e891a101" [label="/bin/sh -c pip3 install Flask celery flower luigi" shape="box"];
  "sha256:ac3fc29e631a69c8cd2d69a323f4e31a9cfa9d2b76fffdb8ab6a3fe831148965" [label="/bin/sh -c pip3 install numpy pandas elasticsearch elasticsearch_dsl requests" shape="box"];
  "sha256:9b8c10d1360dccdb2a60f0e18d37de09fee4f7d22e667a21a9de1ab9bed5bfa7" [label="/bin/sh -c pip3 install tensorflow" shape="box"];
  "sha256:95713a9d8b7ff0a2d49000fc11135b019bb556031a29bef34349c4dd40092851" [label="mkdir{path=/app}" shape="note"];
  "sha256:d5c7c90dabe6a6c047cc396f1c8599b2c150673876c05cfe8b46f1aa7a97e335" [label="local://context" shape="ellipse"];
  "sha256:fa06e6ebe63d2e325de47df29d082357497408d71932d01099967ee9b762762f" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:41fc5579a8d5dd3771b01be03795a0b1690db232a5ae74cc584c5364b84b3931" [label="/bin/sh -c cp elasticsearch.yml /etc/elasticsearch/" shape="box"];
  "sha256:9429ec3519d1a93722a5e6d2ac558924b05624c4c235eaedd6b59aebdc519a42" [label="/bin/sh -c cp kibana.yml /etc/kibana/" shape="box"];
  "sha256:d3c23ca3809a6919f2992c672ff2dfcfcbb97ee5c6def370b4176d97f08f2216" [label="sha256:d3c23ca3809a6919f2992c672ff2dfcfcbb97ee5c6def370b4176d97f08f2216" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:df184bdeecbcfd1db7661660ec445a34d57084e87b0ecfdb87c0739dcda57286" [label=""];
  "sha256:df184bdeecbcfd1db7661660ec445a34d57084e87b0ecfdb87c0739dcda57286" -> "sha256:910c15c6c6eca9cfcdc44648d5cc7e7ba8c44cdea4d6ec5b045f98e9436508da" [label=""];
  "sha256:910c15c6c6eca9cfcdc44648d5cc7e7ba8c44cdea4d6ec5b045f98e9436508da" -> "sha256:38e3c52c2fc20f36bf882ede43d737c042fd67a9d2530e4bb0fd666a61c08315" [label=""];
  "sha256:38e3c52c2fc20f36bf882ede43d737c042fd67a9d2530e4bb0fd666a61c08315" -> "sha256:a8f71ade8463cefa412f305da951f5a362d5d28112d2289e37f811b1cb654f71" [label=""];
  "sha256:a8f71ade8463cefa412f305da951f5a362d5d28112d2289e37f811b1cb654f71" -> "sha256:7d66ff15e86609c9193295e4c73f55e2c1873c9dc865400f6ad9db86e891a101" [label=""];
  "sha256:7d66ff15e86609c9193295e4c73f55e2c1873c9dc865400f6ad9db86e891a101" -> "sha256:ac3fc29e631a69c8cd2d69a323f4e31a9cfa9d2b76fffdb8ab6a3fe831148965" [label=""];
  "sha256:ac3fc29e631a69c8cd2d69a323f4e31a9cfa9d2b76fffdb8ab6a3fe831148965" -> "sha256:9b8c10d1360dccdb2a60f0e18d37de09fee4f7d22e667a21a9de1ab9bed5bfa7" [label=""];
  "sha256:9b8c10d1360dccdb2a60f0e18d37de09fee4f7d22e667a21a9de1ab9bed5bfa7" -> "sha256:95713a9d8b7ff0a2d49000fc11135b019bb556031a29bef34349c4dd40092851" [label=""];
  "sha256:95713a9d8b7ff0a2d49000fc11135b019bb556031a29bef34349c4dd40092851" -> "sha256:fa06e6ebe63d2e325de47df29d082357497408d71932d01099967ee9b762762f" [label=""];
  "sha256:d5c7c90dabe6a6c047cc396f1c8599b2c150673876c05cfe8b46f1aa7a97e335" -> "sha256:fa06e6ebe63d2e325de47df29d082357497408d71932d01099967ee9b762762f" [label=""];
  "sha256:fa06e6ebe63d2e325de47df29d082357497408d71932d01099967ee9b762762f" -> "sha256:41fc5579a8d5dd3771b01be03795a0b1690db232a5ae74cc584c5364b84b3931" [label=""];
  "sha256:41fc5579a8d5dd3771b01be03795a0b1690db232a5ae74cc584c5364b84b3931" -> "sha256:9429ec3519d1a93722a5e6d2ac558924b05624c4c235eaedd6b59aebdc519a42" [label=""];
  "sha256:9429ec3519d1a93722a5e6d2ac558924b05624c4c235eaedd6b59aebdc519a42" -> "sha256:d3c23ca3809a6919f2992c672ff2dfcfcbb97ee5c6def370b4176d97f08f2216" [label=""];
}

