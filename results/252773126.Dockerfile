[app/sources/252773126.Dockerfile]
digraph {
  "sha256:8fc27933ac188f539d9095154a712a72c23c0affd152b231d478fe6364ffb69c" [label="local://context" shape="ellipse"];
  "sha256:129479e881e6fe15f9b85d1e7071ed232638d909f299e1e68b38a9571c34be53" [label="docker-image://docker.io/library/ruby:2.1.8" shape="ellipse"];
  "sha256:570d3db872310947b93481fe43dc77edbc19bf8a3ffa5305eca83f875a57408c" [label="/bin/sh -c apt-get update && apt-get install -y build-essential cron supervisor gettext && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5ac1fdb53383e8217f5163f90fce365440a324be433ecddd641b489c3ca11f96" [label="/bin/sh -c cd /opt && git clone git://github.com/bfolkens/batsd && cd batsd && gem install bundler && bundle install" shape="box"];
  "sha256:e81363962474861d00693e71abb29371eafe510fd5f6ff89a20d4badf85c1182" [label="/bin/sh -c rm -rf /tmp/ && apt-get clean && apt-get autoremove -y && mkdir /tmp" shape="box"];
  "sha256:9d51dfa7dd618974a111c3e2278cd26a9ef672dfceb689afa528fff355f475c1" [label="copy{src=/etc/config.tmpl.yml, dest=/opt/batsd/config.tmpl.yml}" shape="note"];
  "sha256:b44a690b6ec1fee709001e87c0dde662574718e60406ad7a86e1df2bac4776cd" [label="copy{src=/etc/crontab, dest=/etc/}" shape="note"];
  "sha256:c5b72e45a809819cab0f7fa008486844b29c338a5f59f99bb5d31227da8db986" [label="/bin/sh -c chown root:root /etc/crontab" shape="box"];
  "sha256:d22a642c165e8eae97023ea404de148e09246cc1e5264f84eafed63eddb97977" [label="copy{src=/etc/supervisord.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:35b3cd6936e9e3eda4afa7d449d9d81f8310c3413b206db925af985ed8db38dd" [label="copy{src=/bin/startup.sh, dest=/usr/bin/startup.sh}" shape="note"];
  "sha256:4df135b050d093cba20fa483f1ee8762bb10147003e7f697232a3b849fdca898" [label="sha256:4df135b050d093cba20fa483f1ee8762bb10147003e7f697232a3b849fdca898" shape="plaintext"];
  "sha256:129479e881e6fe15f9b85d1e7071ed232638d909f299e1e68b38a9571c34be53" -> "sha256:570d3db872310947b93481fe43dc77edbc19bf8a3ffa5305eca83f875a57408c" [label=""];
  "sha256:570d3db872310947b93481fe43dc77edbc19bf8a3ffa5305eca83f875a57408c" -> "sha256:5ac1fdb53383e8217f5163f90fce365440a324be433ecddd641b489c3ca11f96" [label=""];
  "sha256:5ac1fdb53383e8217f5163f90fce365440a324be433ecddd641b489c3ca11f96" -> "sha256:e81363962474861d00693e71abb29371eafe510fd5f6ff89a20d4badf85c1182" [label=""];
  "sha256:e81363962474861d00693e71abb29371eafe510fd5f6ff89a20d4badf85c1182" -> "sha256:9d51dfa7dd618974a111c3e2278cd26a9ef672dfceb689afa528fff355f475c1" [label=""];
  "sha256:8fc27933ac188f539d9095154a712a72c23c0affd152b231d478fe6364ffb69c" -> "sha256:9d51dfa7dd618974a111c3e2278cd26a9ef672dfceb689afa528fff355f475c1" [label=""];
  "sha256:9d51dfa7dd618974a111c3e2278cd26a9ef672dfceb689afa528fff355f475c1" -> "sha256:b44a690b6ec1fee709001e87c0dde662574718e60406ad7a86e1df2bac4776cd" [label=""];
  "sha256:8fc27933ac188f539d9095154a712a72c23c0affd152b231d478fe6364ffb69c" -> "sha256:b44a690b6ec1fee709001e87c0dde662574718e60406ad7a86e1df2bac4776cd" [label=""];
  "sha256:b44a690b6ec1fee709001e87c0dde662574718e60406ad7a86e1df2bac4776cd" -> "sha256:c5b72e45a809819cab0f7fa008486844b29c338a5f59f99bb5d31227da8db986" [label=""];
  "sha256:c5b72e45a809819cab0f7fa008486844b29c338a5f59f99bb5d31227da8db986" -> "sha256:d22a642c165e8eae97023ea404de148e09246cc1e5264f84eafed63eddb97977" [label=""];
  "sha256:8fc27933ac188f539d9095154a712a72c23c0affd152b231d478fe6364ffb69c" -> "sha256:d22a642c165e8eae97023ea404de148e09246cc1e5264f84eafed63eddb97977" [label=""];
  "sha256:d22a642c165e8eae97023ea404de148e09246cc1e5264f84eafed63eddb97977" -> "sha256:35b3cd6936e9e3eda4afa7d449d9d81f8310c3413b206db925af985ed8db38dd" [label=""];
  "sha256:8fc27933ac188f539d9095154a712a72c23c0affd152b231d478fe6364ffb69c" -> "sha256:35b3cd6936e9e3eda4afa7d449d9d81f8310c3413b206db925af985ed8db38dd" [label=""];
  "sha256:35b3cd6936e9e3eda4afa7d449d9d81f8310c3413b206db925af985ed8db38dd" -> "sha256:4df135b050d093cba20fa483f1ee8762bb10147003e7f697232a3b849fdca898" [label=""];
}

