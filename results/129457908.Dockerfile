[app/sources/129457908.Dockerfile]
digraph {
  "sha256:9c51ec8cca55c9783fcc5587ae2d78cfb19f11da70c3fa677166c545f60f4605" [label="local://context" shape="ellipse"];
  "sha256:e6a060c19ddaadad91126b60c847f131ae6f3d4d74db50c9ab4ce5cf924da747" [label="docker-image://docker.io/eddelbuettel/debian-r-base:latest" shape="ellipse"];
  "sha256:c5d3624e53031d7a8094a683499d603c821dffc532cdc7b712c1121f4b2d631c" [label="/bin/sh -c apt-get update && apt-get install -y     git     locales     libcurl4-openssl-dev     psmisc     supervisor     sudo && dpkg-reconfigure locales && wget -q http://ftp.us.debian.org/debian/pool/main/o/openssl/libssl0.9.8_0.9.8o-4squeeze14_amd64.deb && dpkg -i libssl0.9.8_0.9.8o-4squeeze14_amd64.deb && rm libssl0.9.8_0.9.8o-4squeeze14_amd64.deb && (wget -q https://s3.amazonaws.com/rstudio-server/current.ver -O currentVersion.txt && ver=$(cat currentVersion.txt) && wget -q http://download2.rstudio.org/rstudio-server-${ver}-amd64.deb && dpkg -i rstudio-server-${ver}-amd64.deb && rm rstudio-server-*-amd64.deb currentVersion.txt )" shape="box"];
  "sha256:5bbbc3c4857f5b3350cecca14ad6074f5324e02dccc195992b3cadb3012f9a85" [label="copy{src=/userconf.sh, dest=/usr/bin/userconf.sh}" shape="note"];
  "sha256:a5351def1daeca66bdc2bbc6bffaff9215d673239937799247c9fdbb235f6ae6" [label="/bin/sh -c mkdir -p /var/log/supervisor" shape="box"];
  "sha256:f9b3a05d5df2e80c0e552dfa42ab33e280852470f57ea5fe8b7f8b8e05681864" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:d955afcda0b53811f92e7975c77c5c6d5e6f41257ce4d93358ffaa45ca46f359" [label="sha256:d955afcda0b53811f92e7975c77c5c6d5e6f41257ce4d93358ffaa45ca46f359" shape="plaintext"];
  "sha256:e6a060c19ddaadad91126b60c847f131ae6f3d4d74db50c9ab4ce5cf924da747" -> "sha256:c5d3624e53031d7a8094a683499d603c821dffc532cdc7b712c1121f4b2d631c" [label=""];
  "sha256:c5d3624e53031d7a8094a683499d603c821dffc532cdc7b712c1121f4b2d631c" -> "sha256:5bbbc3c4857f5b3350cecca14ad6074f5324e02dccc195992b3cadb3012f9a85" [label=""];
  "sha256:9c51ec8cca55c9783fcc5587ae2d78cfb19f11da70c3fa677166c545f60f4605" -> "sha256:5bbbc3c4857f5b3350cecca14ad6074f5324e02dccc195992b3cadb3012f9a85" [label=""];
  "sha256:5bbbc3c4857f5b3350cecca14ad6074f5324e02dccc195992b3cadb3012f9a85" -> "sha256:a5351def1daeca66bdc2bbc6bffaff9215d673239937799247c9fdbb235f6ae6" [label=""];
  "sha256:a5351def1daeca66bdc2bbc6bffaff9215d673239937799247c9fdbb235f6ae6" -> "sha256:f9b3a05d5df2e80c0e552dfa42ab33e280852470f57ea5fe8b7f8b8e05681864" [label=""];
  "sha256:9c51ec8cca55c9783fcc5587ae2d78cfb19f11da70c3fa677166c545f60f4605" -> "sha256:f9b3a05d5df2e80c0e552dfa42ab33e280852470f57ea5fe8b7f8b8e05681864" [label=""];
  "sha256:f9b3a05d5df2e80c0e552dfa42ab33e280852470f57ea5fe8b7f8b8e05681864" -> "sha256:d955afcda0b53811f92e7975c77c5c6d5e6f41257ce4d93358ffaa45ca46f359" [label=""];
}

