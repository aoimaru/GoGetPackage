[app/sources/195720842.Dockerfile]
digraph {
  "sha256:e531ec672ac409aaaccd4d4d0941bf743c5173c998d0eeedf1ba21926c75510b" [label="docker-image://docker.io/andrewosh/binder-base:latest" shape="ellipse"];
  "sha256:59c1c2cbda4d8cec9b6d0c30b400bb57d3ca27f6790cea5f3259ab6372acda76" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_0.12 | bash - &&     apt-get install -y nodejs npm &&     npm install -g bower" shape="box"];
  "sha256:219979c8ba7e69c22492aca4a1999f15c1989555a2b8723c1d2a66c27b4de163" [label="/bin/sh -c apt-get -y update &&     apt-get -y install software-properties-common" shape="box"];
  "sha256:c1e40d913f4d4937c3be9ec17fb8a25fcc8732848fd45ff317db91936d964e8e" [label="/bin/sh -c echo \"===> add webupd8 repository...\"  &&     echo \"deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main\" | tee /etc/apt/sources.list.d/webupd8team-java.list  &&     echo \"deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main\" | tee -a /etc/apt/sources.list.d/webupd8team-java.list  &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886  &&     apt-get update" shape="box"];
  "sha256:9d19996dbbd1d4ece0e0ad87a2a1cdf017a0540e413c14af98821906c2e67d9e" [label="/bin/sh -c echo \"===> install Java\"  &&     echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections  &&     echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections  &&     DEBIAN_FRONTEND=noninteractive  apt-get install -y --force-yes oracle-java8-installer oracle-java8-set-default &&     apt-get clean &&     update-java-alternatives -s java-8-oracle" shape="box"];
  "sha256:b563e7eb7b4fb36482bce6aeee28efb5091de99c9bcf3d53cdd36dc5f6d26d7f" [label="/bin/sh -c cd /tmp &&         wget -q http://apache.claz.org/spark/spark-${APACHE_SPARK_VERSION}/spark-${APACHE_SPARK_VERSION}-bin-hadoop2.6.tgz &&         tar xzf spark-${APACHE_SPARK_VERSION}-bin-hadoop2.6.tgz -C /usr/local &&         rm spark-${APACHE_SPARK_VERSION}-bin-hadoop2.6.tgz" shape="box"];
  "sha256:57c74f9d2fbdc23256262b2a8c34c15b6937bc310519e0811e57a788712ea563" [label="/bin/sh -c cd /usr/local && ln -s spark-${APACHE_SPARK_VERSION}-bin-hadoop2.6 spark" shape="box"];
  "sha256:d472f2f240336169a4012246e26f924b518feafe923fca8f341c00afd13957ab" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends     fonts-dejavu     gfortran     gcc && apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:17f20415477f5fdebe52852881fdb1016e17f449c62b8ec0cc7bb3cc604547d8" [label="/bin/sh -c conda install -y jupyter seaborn futures &&     bash -c \"source activate python3 &&         conda install seaborn\"" shape="box"];
  "sha256:4482251e2d8b1445d7fa2261e3e3e1979da90561b94a76822481f3099ab24f58" [label="/bin/sh -c conda config --add channels r &&     conda install --quiet --yes     'r-base=3.2*'     'r-ggplot2=1.0*'     'r-rcurl=1.95*' && conda clean -tipsy" shape="box"];
  "sha256:ae7575727ffac57dd97a4df0645b8c9529accd6e0fb3876c3a20198fe41ba38a" [label="/bin/sh -c pip install jupyter_dashboards==0.4.1     jupyter_declarativewidgets==$DECL_WIDGETS_VERSION     jupyter_dashboards_bundlers==0.2.2" shape="box"];
  "sha256:c706e408b096f01ddef2864126d2a9f4156f0136b521da30362ad8b8fc51a3ed" [label="/bin/sh -c jupyter dashboards install --user --symlink &&     jupyter declarativewidgets install --user --symlink &&     jupyter dashboards activate &&     jupyter declarativewidgets activate &&     jupyter dashboards_bundlers activate" shape="box"];
  "sha256:cde69f9028d4e11e94cfe9b394b43545dd5c93a5ec7f45cf93ef0e0dedfe6171" [label="/bin/sh -c bash -c \"source activate python3 && pip install jupyter_declarativewidgets==$DECL_WIDGETS_VERSION\"" shape="box"];
  "sha256:4bbcef394e0c2ef62f73ef1984357056d82de4f10476297e2cd2ebfb5ae248bf" [label="/bin/sh -c pip install 'toree>=0.1.0.dev0, <=0.1.0'" shape="box"];
  "sha256:866a0f8ea44f1fd62ae22553c3dac766da49797aa3ff45e69e3517cb7e3cfe38" [label="/bin/sh -c jupyter toree install --user" shape="box"];
  "sha256:0e10dfa47cce0d5929573ee8d5eb6c2dca1231cab005f8599af832bb217b238f" [label="local://context" shape="ellipse"];
  "sha256:8c90f7e4d2d0ec3df7ac615dea6c56c30eda4f67f67470f906422978acf8b766" [label="copy{src=/index.ipynb, dest=/notebooks/}" shape="note"];
  "sha256:c8b9302519b74f21f708807d3907e7e2b7e6b13995d3aa84d40e5eb973b28c2c" [label="sha256:c8b9302519b74f21f708807d3907e7e2b7e6b13995d3aa84d40e5eb973b28c2c" shape="plaintext"];
  "sha256:e531ec672ac409aaaccd4d4d0941bf743c5173c998d0eeedf1ba21926c75510b" -> "sha256:59c1c2cbda4d8cec9b6d0c30b400bb57d3ca27f6790cea5f3259ab6372acda76" [label=""];
  "sha256:59c1c2cbda4d8cec9b6d0c30b400bb57d3ca27f6790cea5f3259ab6372acda76" -> "sha256:219979c8ba7e69c22492aca4a1999f15c1989555a2b8723c1d2a66c27b4de163" [label=""];
  "sha256:219979c8ba7e69c22492aca4a1999f15c1989555a2b8723c1d2a66c27b4de163" -> "sha256:c1e40d913f4d4937c3be9ec17fb8a25fcc8732848fd45ff317db91936d964e8e" [label=""];
  "sha256:c1e40d913f4d4937c3be9ec17fb8a25fcc8732848fd45ff317db91936d964e8e" -> "sha256:9d19996dbbd1d4ece0e0ad87a2a1cdf017a0540e413c14af98821906c2e67d9e" [label=""];
  "sha256:9d19996dbbd1d4ece0e0ad87a2a1cdf017a0540e413c14af98821906c2e67d9e" -> "sha256:b563e7eb7b4fb36482bce6aeee28efb5091de99c9bcf3d53cdd36dc5f6d26d7f" [label=""];
  "sha256:b563e7eb7b4fb36482bce6aeee28efb5091de99c9bcf3d53cdd36dc5f6d26d7f" -> "sha256:57c74f9d2fbdc23256262b2a8c34c15b6937bc310519e0811e57a788712ea563" [label=""];
  "sha256:57c74f9d2fbdc23256262b2a8c34c15b6937bc310519e0811e57a788712ea563" -> "sha256:d472f2f240336169a4012246e26f924b518feafe923fca8f341c00afd13957ab" [label=""];
  "sha256:d472f2f240336169a4012246e26f924b518feafe923fca8f341c00afd13957ab" -> "sha256:17f20415477f5fdebe52852881fdb1016e17f449c62b8ec0cc7bb3cc604547d8" [label=""];
  "sha256:17f20415477f5fdebe52852881fdb1016e17f449c62b8ec0cc7bb3cc604547d8" -> "sha256:4482251e2d8b1445d7fa2261e3e3e1979da90561b94a76822481f3099ab24f58" [label=""];
  "sha256:4482251e2d8b1445d7fa2261e3e3e1979da90561b94a76822481f3099ab24f58" -> "sha256:ae7575727ffac57dd97a4df0645b8c9529accd6e0fb3876c3a20198fe41ba38a" [label=""];
  "sha256:ae7575727ffac57dd97a4df0645b8c9529accd6e0fb3876c3a20198fe41ba38a" -> "sha256:c706e408b096f01ddef2864126d2a9f4156f0136b521da30362ad8b8fc51a3ed" [label=""];
  "sha256:c706e408b096f01ddef2864126d2a9f4156f0136b521da30362ad8b8fc51a3ed" -> "sha256:cde69f9028d4e11e94cfe9b394b43545dd5c93a5ec7f45cf93ef0e0dedfe6171" [label=""];
  "sha256:cde69f9028d4e11e94cfe9b394b43545dd5c93a5ec7f45cf93ef0e0dedfe6171" -> "sha256:4bbcef394e0c2ef62f73ef1984357056d82de4f10476297e2cd2ebfb5ae248bf" [label=""];
  "sha256:4bbcef394e0c2ef62f73ef1984357056d82de4f10476297e2cd2ebfb5ae248bf" -> "sha256:866a0f8ea44f1fd62ae22553c3dac766da49797aa3ff45e69e3517cb7e3cfe38" [label=""];
  "sha256:866a0f8ea44f1fd62ae22553c3dac766da49797aa3ff45e69e3517cb7e3cfe38" -> "sha256:8c90f7e4d2d0ec3df7ac615dea6c56c30eda4f67f67470f906422978acf8b766" [label=""];
  "sha256:0e10dfa47cce0d5929573ee8d5eb6c2dca1231cab005f8599af832bb217b238f" -> "sha256:8c90f7e4d2d0ec3df7ac615dea6c56c30eda4f67f67470f906422978acf8b766" [label=""];
  "sha256:8c90f7e4d2d0ec3df7ac615dea6c56c30eda4f67f67470f906422978acf8b766" -> "sha256:c8b9302519b74f21f708807d3907e7e2b7e6b13995d3aa84d40e5eb973b28c2c" [label=""];
}

