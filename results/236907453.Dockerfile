[app/sources/236907453.Dockerfile]
digraph {
  "sha256:a7507f552ca4873976ca03d91b9d06d835610cdc3666f68321f366843df6da18" [label="docker-image://docker.io/yangxuan8282/rpi-php:7.1.2-alpine" shape="ellipse"];
  "sha256:ba1618be325032ec8f7cd028a6f00ccece2303a09f351c691e35857f37e08aef" [label="/bin/sh -c set -x   && mkdir -p /usr/src/kodexplorer   && apk --update --no-cache add wget bash   && wget -qO- $KODEXPLORER_URL | tar -xz -C /usr/src/kodexplorer/ --strip-components=1   && apk del wget" shape="box"];
  "sha256:fcc9fb81b71a4abd47d39823e0a17dce7909dd524c333ae4c047e9c671818f44" [label="/bin/sh -c set -x   && apk add --no-cache --update         freetype libpng libjpeg-turbo         freetype-dev libpng-dev libjpeg-turbo-dev   && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/   && docker-php-ext-install -j \"$(getconf _NPROCESSORS_ONLN)\" gd   && apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev" shape="box"];
  "sha256:6b55f9144db494d359d59f98eb4e9288df9294f94bcf8ab6e473c98dfdcc2c28" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:be63bc3f714e7550fb145951c3431fe369797d7f69c9fd5a8d06feef8d58b0fa" [label="local://context" shape="ellipse"];
  "sha256:7a8de5e2e5e77f8a2268a83385001d5d1a579128de48e74d7bea7790ba0100a4" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:621b2938a824b8e70e674cb4649644816550317c3486ac626ed4e93f5e512285" [label="sha256:621b2938a824b8e70e674cb4649644816550317c3486ac626ed4e93f5e512285" shape="plaintext"];
  "sha256:a7507f552ca4873976ca03d91b9d06d835610cdc3666f68321f366843df6da18" -> "sha256:ba1618be325032ec8f7cd028a6f00ccece2303a09f351c691e35857f37e08aef" [label=""];
  "sha256:ba1618be325032ec8f7cd028a6f00ccece2303a09f351c691e35857f37e08aef" -> "sha256:fcc9fb81b71a4abd47d39823e0a17dce7909dd524c333ae4c047e9c671818f44" [label=""];
  "sha256:fcc9fb81b71a4abd47d39823e0a17dce7909dd524c333ae4c047e9c671818f44" -> "sha256:6b55f9144db494d359d59f98eb4e9288df9294f94bcf8ab6e473c98dfdcc2c28" [label=""];
  "sha256:6b55f9144db494d359d59f98eb4e9288df9294f94bcf8ab6e473c98dfdcc2c28" -> "sha256:7a8de5e2e5e77f8a2268a83385001d5d1a579128de48e74d7bea7790ba0100a4" [label=""];
  "sha256:be63bc3f714e7550fb145951c3431fe369797d7f69c9fd5a8d06feef8d58b0fa" -> "sha256:7a8de5e2e5e77f8a2268a83385001d5d1a579128de48e74d7bea7790ba0100a4" [label=""];
  "sha256:7a8de5e2e5e77f8a2268a83385001d5d1a579128de48e74d7bea7790ba0100a4" -> "sha256:621b2938a824b8e70e674cb4649644816550317c3486ac626ed4e93f5e512285" [label=""];
}

