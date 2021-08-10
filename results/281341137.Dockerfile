[app/sources/281341137.Dockerfile]
digraph {
  "sha256:c4887a24c05e66b3154ab6ffd4c339bcaebfbbd749190fe265725f4658f3de7d" [label="docker-image://docker.io/library/ubuntu:17.04" shape="ellipse"];
  "sha256:1d11617819ad79ce1b07d3cfa8ed5db013de1b487075ad110b28667e8199df68" [label="/bin/sh -c apt-get -qy update && apt-get -qy install --no-upgrade --no-install-recommends         apt-transport-https         apt-utils         curl         software-properties-common" shape="box"];
  "sha256:4aebe50a9fc0c2bb142773dd2f1005db7824a0e06a3dd3619b176f03be5d6277" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BA9EF27F" shape="box"];
  "sha256:001089d0878c60453bcb6f43dcf6fb0057ad51b83ed3aa2403824c06af12362c" [label="/bin/sh -c add-apt-repository -y ppa:ubuntu-toolchain-r/test" shape="box"];
  "sha256:c840047fbaa5ea6225794cbe6ecb4a19d08ffcea04c8abf9369764ac4eaf3060" [label="/bin/sh -c curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -" shape="box"];
  "sha256:354c78f1af613f7f1c93c94ed3fed25be1c6284b7c9a8293e0d660fbde5c4d5e" [label="/bin/sh -c add-apt-repository \"$(curl -s https://packages.microsoft.com/config/ubuntu/16.04/prod.list)\"" shape="box"];
  "sha256:b640e171eee251c8c7303a44f09641abf1bbe7ffb6ff00f85a83381877d7b6e9" [label="/bin/sh -c apt-get -qy update && apt-get -qy install --no-upgrade --no-install-recommends         cmake         g++-5         git         iputils-ping         make         mysql-client         libsqliteodbc         odbc-postgresql         postgresql-client         sqlite3         unixodbc         unixodbc-dev         vim" shape="box"];
  "sha256:d2451f19bd17ffeea9f47603bc6b76e28ccf753961d870b8b01e4a25c1609987" [label="/bin/sh -c ACCEPT_EULA=Y apt-get -qy install --no-upgrade --no-install-recommends         msodbcsql         mssql-tools" shape="box"];
  "sha256:cd1a997d15e10b9ad818a8326cab404f90dd903aac60ec52bdcd8b32753d0d39" [label="/bin/sh -c echo 'export PATH=\"$PATH:/opt/mssql-tools/bin\"' >> ~/.bash_profile" shape="box"];
  "sha256:3c17bc17716ae44fd42c4a62448b7ef6e7924a309a0265023259fc32a43e629c" [label="/bin/sh -c echo 'export PATH=\"$PATH:/opt/mssql-tools/bin\"' >> ~/.bashrc" shape="box"];
  "sha256:59ae380bde897e2caec2385ba4470a41c973fbe93a89f94c85e46a890a894154" [label="/bin/sh -c apt-get install -y locales     && echo \"en_US.UTF-8 UTF-8\" > /etc/locale.gen     && locale-gen" shape="box"];
  "sha256:2e9ef39eb077ddf95f7536ff6cf38447fd420c7450e1f20745178a8e532e0416" [label="/bin/sh -c odbcinst -i -d -f /usr/share/sqliteodbc/unixodbc.ini" shape="box"];
  "sha256:0e3fa54fce6e73a6ccb0f699fb007159f53894272615d3081bc87cca5b2097c0" [label="/bin/sh -c curl -SL https://dev.mysql.com/get/Downloads/Connector-ODBC/5.3/mysql-connector-odbc-5.3.9-linux-ubuntu17.04-x86-64bit.tar.gz | tar -zxC /opt" shape="box"];
  "sha256:9ee917712e707ac39aa5686febc9f04536a303a479b0bc36b0926716be2ba2e9" [label="/bin/sh -c cp /opt/mysql-connector-odbc-5.3.9-linux-ubuntu17.04-x86-64bit/lib/libmyodbc5* /usr/lib/x86_64-linux-gnu/odbc/" shape="box"];
  "sha256:013a66e0f6ca49b4431045f7e682b47afab99f3d3f794d744e4b92ab79b3a94f" [label="/bin/sh -c /opt/mysql-connector-odbc-5.3.9-linux-ubuntu17.04-x86-64bit/bin/myodbc-installer -d -a -n \"MySQL ODBC 5.3 ANSI Driver\" -t \"DRIVER=/usr/lib/x86_64-linux-gnu/odbc/libmyodbc5a.so;\"" shape="box"];
  "sha256:241d6c47f9bda919cd8b62379e14f4bf2fda3a88033ea562fe5457980eec8f4c" [label="/bin/sh -c /opt/mysql-connector-odbc-5.3.9-linux-ubuntu17.04-x86-64bit/bin/myodbc-installer -d -a -n \"MySQL ODBC 5.3 Unicode Driver\" -t \"DRIVER=/usr/lib/x86_64-linux-gnu/odbc/libmyodbc5w.so;\"" shape="box"];
  "sha256:64f58d4d8d5791a19e2843aec161ea04af07493ad34013916a5b7c884d141a31" [label="/bin/sh -c git clone https://github.com/nanodbc/nanodbc.git /opt/nanodbc && mkdir -p /opt/nanodbc/build" shape="box"];
  "sha256:c3fe331f93ae38ca6a39cdbdeeda5a493db892bc1d971d2dedd5f7780c5c0b53" [label="sha256:c3fe331f93ae38ca6a39cdbdeeda5a493db892bc1d971d2dedd5f7780c5c0b53" shape="plaintext"];
  "sha256:c4887a24c05e66b3154ab6ffd4c339bcaebfbbd749190fe265725f4658f3de7d" -> "sha256:1d11617819ad79ce1b07d3cfa8ed5db013de1b487075ad110b28667e8199df68" [label=""];
  "sha256:1d11617819ad79ce1b07d3cfa8ed5db013de1b487075ad110b28667e8199df68" -> "sha256:4aebe50a9fc0c2bb142773dd2f1005db7824a0e06a3dd3619b176f03be5d6277" [label=""];
  "sha256:4aebe50a9fc0c2bb142773dd2f1005db7824a0e06a3dd3619b176f03be5d6277" -> "sha256:001089d0878c60453bcb6f43dcf6fb0057ad51b83ed3aa2403824c06af12362c" [label=""];
  "sha256:001089d0878c60453bcb6f43dcf6fb0057ad51b83ed3aa2403824c06af12362c" -> "sha256:c840047fbaa5ea6225794cbe6ecb4a19d08ffcea04c8abf9369764ac4eaf3060" [label=""];
  "sha256:c840047fbaa5ea6225794cbe6ecb4a19d08ffcea04c8abf9369764ac4eaf3060" -> "sha256:354c78f1af613f7f1c93c94ed3fed25be1c6284b7c9a8293e0d660fbde5c4d5e" [label=""];
  "sha256:354c78f1af613f7f1c93c94ed3fed25be1c6284b7c9a8293e0d660fbde5c4d5e" -> "sha256:b640e171eee251c8c7303a44f09641abf1bbe7ffb6ff00f85a83381877d7b6e9" [label=""];
  "sha256:b640e171eee251c8c7303a44f09641abf1bbe7ffb6ff00f85a83381877d7b6e9" -> "sha256:d2451f19bd17ffeea9f47603bc6b76e28ccf753961d870b8b01e4a25c1609987" [label=""];
  "sha256:d2451f19bd17ffeea9f47603bc6b76e28ccf753961d870b8b01e4a25c1609987" -> "sha256:cd1a997d15e10b9ad818a8326cab404f90dd903aac60ec52bdcd8b32753d0d39" [label=""];
  "sha256:cd1a997d15e10b9ad818a8326cab404f90dd903aac60ec52bdcd8b32753d0d39" -> "sha256:3c17bc17716ae44fd42c4a62448b7ef6e7924a309a0265023259fc32a43e629c" [label=""];
  "sha256:3c17bc17716ae44fd42c4a62448b7ef6e7924a309a0265023259fc32a43e629c" -> "sha256:59ae380bde897e2caec2385ba4470a41c973fbe93a89f94c85e46a890a894154" [label=""];
  "sha256:59ae380bde897e2caec2385ba4470a41c973fbe93a89f94c85e46a890a894154" -> "sha256:2e9ef39eb077ddf95f7536ff6cf38447fd420c7450e1f20745178a8e532e0416" [label=""];
  "sha256:2e9ef39eb077ddf95f7536ff6cf38447fd420c7450e1f20745178a8e532e0416" -> "sha256:0e3fa54fce6e73a6ccb0f699fb007159f53894272615d3081bc87cca5b2097c0" [label=""];
  "sha256:0e3fa54fce6e73a6ccb0f699fb007159f53894272615d3081bc87cca5b2097c0" -> "sha256:9ee917712e707ac39aa5686febc9f04536a303a479b0bc36b0926716be2ba2e9" [label=""];
  "sha256:9ee917712e707ac39aa5686febc9f04536a303a479b0bc36b0926716be2ba2e9" -> "sha256:013a66e0f6ca49b4431045f7e682b47afab99f3d3f794d744e4b92ab79b3a94f" [label=""];
  "sha256:013a66e0f6ca49b4431045f7e682b47afab99f3d3f794d744e4b92ab79b3a94f" -> "sha256:241d6c47f9bda919cd8b62379e14f4bf2fda3a88033ea562fe5457980eec8f4c" [label=""];
  "sha256:241d6c47f9bda919cd8b62379e14f4bf2fda3a88033ea562fe5457980eec8f4c" -> "sha256:64f58d4d8d5791a19e2843aec161ea04af07493ad34013916a5b7c884d141a31" [label=""];
  "sha256:64f58d4d8d5791a19e2843aec161ea04af07493ad34013916a5b7c884d141a31" -> "sha256:c3fe331f93ae38ca6a39cdbdeeda5a493db892bc1d971d2dedd5f7780c5c0b53" [label=""];
}

