[app/sources/252789817.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:8692c615aaf495124188f4fa2e75a3e11cf2c2823e116e9d8a2cc1493cb4512b" [label="/bin/sh -c apt-get install -y freetds-bin freetds-common freetds-dev libpq-dev python-dev libmysqlclient-dev python-pip" shape="box"];
  "sha256:268ca04b630999f6c477df3d83bf784248721f17cae88e476fde4a216ab09784" [label="/bin/sh -c pip install pip --upgrade" shape="box"];
  "sha256:a837ef31b4f1e0bf33d47b0cfbe73afbf7a4ff406ed0c3885f25cf7519c377a8" [label="/bin/sh -c pip install xlwt psycopg2 simplejson pymssql cherrypy sqlalchemy pisa mako xhtml2pdf==0.0.5 html5lib==1.0b3 reportlab==2.7" shape="box"];
  "sha256:73bbcf4c5e3543f6936f0d05ccf113cad6252d7399de14c129321d28106eb345" [label="/bin/sh -c mkdir /root/application" shape="box"];
  "sha256:1482ef3356ac7ca1c3f4b6eca1684c0639988e697d9c18cb8ac842264a2a49ff" [label="sha256:1482ef3356ac7ca1c3f4b6eca1684c0639988e697d9c18cb8ac842264a2a49ff" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label=""];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" -> "sha256:8692c615aaf495124188f4fa2e75a3e11cf2c2823e116e9d8a2cc1493cb4512b" [label=""];
  "sha256:8692c615aaf495124188f4fa2e75a3e11cf2c2823e116e9d8a2cc1493cb4512b" -> "sha256:268ca04b630999f6c477df3d83bf784248721f17cae88e476fde4a216ab09784" [label=""];
  "sha256:268ca04b630999f6c477df3d83bf784248721f17cae88e476fde4a216ab09784" -> "sha256:a837ef31b4f1e0bf33d47b0cfbe73afbf7a4ff406ed0c3885f25cf7519c377a8" [label=""];
  "sha256:a837ef31b4f1e0bf33d47b0cfbe73afbf7a4ff406ed0c3885f25cf7519c377a8" -> "sha256:73bbcf4c5e3543f6936f0d05ccf113cad6252d7399de14c129321d28106eb345" [label=""];
  "sha256:73bbcf4c5e3543f6936f0d05ccf113cad6252d7399de14c129321d28106eb345" -> "sha256:1482ef3356ac7ca1c3f4b6eca1684c0639988e697d9c18cb8ac842264a2a49ff" [label=""];
}

