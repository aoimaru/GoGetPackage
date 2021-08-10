[app/sources/135644460.Dockerfile]
digraph {
  "sha256:386def524172655d84ea9edf9830e635d0666f30c0fd0c1f2e028a455354166b" [label="local://context" shape="ellipse"];
  "sha256:16a5e0ddb5074fb64c2955f4c2c52818a4ace91f5bfe0db82508bce6186610cb" [label="docker-image://docker.io/tutum/nginx:latest" shape="ellipse"];
  "sha256:0308cf8d7e0d542830fd60d4569c069c3c14f1adfe2c83b8d3ef7a5538a5539c" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:5ae76fb392772b06b972fc2e41d7b81e3d3149f2659cf37cd459cc86eaa5c6fd" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y wget pwgen apache2-utils curl" shape="box"];
  "sha256:9cd466dd1a2054391f44877d43e66a3bfb5d796dfd43fcc24112ff8cd4ebb05b" [label="/bin/sh -c wget http://grafanarel.s3.amazonaws.com/grafana-${GRAFANA_VERSION}.tar.gz -O grafana.tar.gz" shape="box"];
  "sha256:ee86c7934e6565f605a4a565a968295fb7bdc1548995fcb64d8a7ee76ce7a994" [label="/bin/sh -c tar zxf grafana.tar.gz && rm grafana.tar.gz && rm -rf app && mv grafana-${GRAFANA_VERSION} app" shape="box"];
  "sha256:2969bef98d5150eb89afd9055acd23a4b3c008a559ebdd1161afa4bf04c0bbab" [label="copy{src=/config.js, dest=/app/config.js}" shape="note"];
  "sha256:7ea46aa6d2923c255bfaa2623648c37777fde6762636fe0f92d1c64c87ddd7e9" [label="copy{src=/default, dest=/etc/nginx/sites-enabled/default}" shape="note"];
  "sha256:d667337b8035067b768929696916543c15c9da0e06eaf3b99a4b9f7daec13077" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:8c44c1c3ff5286a88b2ba2dd9962cdf16754190ae3f40ceff021b309f818adf3" [label="copy{src=/set_influx_db.sh, dest=/set_influx_db.sh}" shape="note"];
  "sha256:837a0cfed99e07c77bf7507d8f31bbaf6ca52b360b34124a52f96f92bc2acf0c" [label="copy{src=/set_basic_auth.sh, dest=/set_basic_auth.sh}" shape="note"];
  "sha256:c061bf0943ec26ea7d0d44287390eba3f497854fe93485b425ec6ce6b58c604f" [label="copy{src=/set_elasticsearch.sh, dest=/set_elasticsearch.sh}" shape="note"];
  "sha256:12cc33130bb60208bc43df9ca5eeca775acd3b82db53f99ab6fed2c33e7fa7d5" [label="/bin/sh -c chmod +x /*.sh" shape="box"];
  "sha256:8264a608a341a3adeeb31e6a713995bc479a20d5b647d62ab16483411a5e2890" [label="sha256:8264a608a341a3adeeb31e6a713995bc479a20d5b647d62ab16483411a5e2890" shape="plaintext"];
  "sha256:16a5e0ddb5074fb64c2955f4c2c52818a4ace91f5bfe0db82508bce6186610cb" -> "sha256:0308cf8d7e0d542830fd60d4569c069c3c14f1adfe2c83b8d3ef7a5538a5539c" [label=""];
  "sha256:0308cf8d7e0d542830fd60d4569c069c3c14f1adfe2c83b8d3ef7a5538a5539c" -> "sha256:5ae76fb392772b06b972fc2e41d7b81e3d3149f2659cf37cd459cc86eaa5c6fd" [label=""];
  "sha256:5ae76fb392772b06b972fc2e41d7b81e3d3149f2659cf37cd459cc86eaa5c6fd" -> "sha256:9cd466dd1a2054391f44877d43e66a3bfb5d796dfd43fcc24112ff8cd4ebb05b" [label=""];
  "sha256:9cd466dd1a2054391f44877d43e66a3bfb5d796dfd43fcc24112ff8cd4ebb05b" -> "sha256:ee86c7934e6565f605a4a565a968295fb7bdc1548995fcb64d8a7ee76ce7a994" [label=""];
  "sha256:ee86c7934e6565f605a4a565a968295fb7bdc1548995fcb64d8a7ee76ce7a994" -> "sha256:2969bef98d5150eb89afd9055acd23a4b3c008a559ebdd1161afa4bf04c0bbab" [label=""];
  "sha256:386def524172655d84ea9edf9830e635d0666f30c0fd0c1f2e028a455354166b" -> "sha256:2969bef98d5150eb89afd9055acd23a4b3c008a559ebdd1161afa4bf04c0bbab" [label=""];
  "sha256:2969bef98d5150eb89afd9055acd23a4b3c008a559ebdd1161afa4bf04c0bbab" -> "sha256:7ea46aa6d2923c255bfaa2623648c37777fde6762636fe0f92d1c64c87ddd7e9" [label=""];
  "sha256:386def524172655d84ea9edf9830e635d0666f30c0fd0c1f2e028a455354166b" -> "sha256:7ea46aa6d2923c255bfaa2623648c37777fde6762636fe0f92d1c64c87ddd7e9" [label=""];
  "sha256:7ea46aa6d2923c255bfaa2623648c37777fde6762636fe0f92d1c64c87ddd7e9" -> "sha256:d667337b8035067b768929696916543c15c9da0e06eaf3b99a4b9f7daec13077" [label=""];
  "sha256:386def524172655d84ea9edf9830e635d0666f30c0fd0c1f2e028a455354166b" -> "sha256:d667337b8035067b768929696916543c15c9da0e06eaf3b99a4b9f7daec13077" [label=""];
  "sha256:d667337b8035067b768929696916543c15c9da0e06eaf3b99a4b9f7daec13077" -> "sha256:8c44c1c3ff5286a88b2ba2dd9962cdf16754190ae3f40ceff021b309f818adf3" [label=""];
  "sha256:386def524172655d84ea9edf9830e635d0666f30c0fd0c1f2e028a455354166b" -> "sha256:8c44c1c3ff5286a88b2ba2dd9962cdf16754190ae3f40ceff021b309f818adf3" [label=""];
  "sha256:8c44c1c3ff5286a88b2ba2dd9962cdf16754190ae3f40ceff021b309f818adf3" -> "sha256:837a0cfed99e07c77bf7507d8f31bbaf6ca52b360b34124a52f96f92bc2acf0c" [label=""];
  "sha256:386def524172655d84ea9edf9830e635d0666f30c0fd0c1f2e028a455354166b" -> "sha256:837a0cfed99e07c77bf7507d8f31bbaf6ca52b360b34124a52f96f92bc2acf0c" [label=""];
  "sha256:837a0cfed99e07c77bf7507d8f31bbaf6ca52b360b34124a52f96f92bc2acf0c" -> "sha256:c061bf0943ec26ea7d0d44287390eba3f497854fe93485b425ec6ce6b58c604f" [label=""];
  "sha256:386def524172655d84ea9edf9830e635d0666f30c0fd0c1f2e028a455354166b" -> "sha256:c061bf0943ec26ea7d0d44287390eba3f497854fe93485b425ec6ce6b58c604f" [label=""];
  "sha256:c061bf0943ec26ea7d0d44287390eba3f497854fe93485b425ec6ce6b58c604f" -> "sha256:12cc33130bb60208bc43df9ca5eeca775acd3b82db53f99ab6fed2c33e7fa7d5" [label=""];
  "sha256:12cc33130bb60208bc43df9ca5eeca775acd3b82db53f99ab6fed2c33e7fa7d5" -> "sha256:8264a608a341a3adeeb31e6a713995bc479a20d5b647d62ab16483411a5e2890" [label=""];
}

