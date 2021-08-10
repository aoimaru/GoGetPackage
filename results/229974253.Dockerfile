[app/sources/229974253.Dockerfile]
digraph {
  "sha256:4cfef0277f0ce8992d6e3cb0203176e96a360a7e53d0026f248fcbc4706ddc4e" [label="docker-image://docker.io/keensoft/alfresco-docker-template:201604-GA" shape="ellipse"];
  "sha256:b0faa25d00bc4a8021d09198f5b2e122da272514a7250bb54ab7fc36e3198700" [label="/bin/sh -c set -x \t&& yum install -y \t    ImageMagick    \t    ghostscript \t&& yum clean all" shape="box"];
  "sha256:6cb01017229120284cf02493930aa806b53140db31b97f5cabde0d636bae05ae" [label="/bin/sh -c set -x \t&& mkdir -p conf/Catalina/localhost shared/classes/alfresco/extension\t&& mv $DIST/web-server/webapps/alfresco.war webapps/alfresco.war \t&& mv $DIST/web-server/lib/*.jar lib/ \t&& mv $DIST/alf_data . \t&& mv $DIST/amps . \t&& cp -r $DIST/bin . \t&& mv $DIST/licenses . \t&& mv $DIST/README.txt . \t&& rm -rf webapps/docs \t&& rm -rf webapps/examples \t&& rm -rf /tmp/alfresco \t&& mkdir -p shared/lib" shape="box"];
  "sha256:c9e082b1982c096b7b6d259b43d162d85c5c2293486291b6d6f44f1bf2f30989" [label="local://context" shape="ellipse"];
  "sha256:97bf4f83081c6689b679a434da1b689af269a1288345e5f43d0d7ebda9d4f39f" [label="copy{src=/assets/tomcat/catalina.properties, dest=/conf/catalina.properties}" shape="note"];
  "sha256:2842e68f5cd485d627e552479d53ea5e24f9211b3ab30ce9397a24b5ba6f6c92" [label="copy{src=/assets/tomcat/setenv.sh, dest=/bin/setenv.sh}" shape="note"];
  "sha256:a8a0eb221faac865b5181ecf585404c7718d517003cf77e6a92e8da0eb40035e" [label="copy{src=/assets/alfresco/alfresco-global.properties, dest=/shared/classes/alfresco-global.properties}" shape="note"];
  "sha256:18ef2e66f29c1756da94a8d0fbe369c68082301db7f5b2f5618dffd67bd08fc1" [label="copy{src=/assets/alfresco/apply_alfresco_amps.sh, dest=/bin/apply_amps.sh}" shape="note"];
  "sha256:a609104d12f90b96730dfd40990c24d22eff1e57cbdb3a1b994d5a858e331b67" [label="copy{src=/assets/amps/*, dest=/amps/}" shape="note"];
  "sha256:2723e1b2786a1efeec8d735b69ce6c4660ecb1fa4edf0558ef2562fd1c4f4f6e" [label="/bin/sh -c bash ./bin/apply_amps.sh -nobackup" shape="box"];
  "sha256:c1c73f881e352926cc7eeffcf8a274d1d20dac7716d78bd2e6b61a369faa8cff" [label="/bin/sh -c useradd -ms /bin/bash alfresco" shape="box"];
  "sha256:5b7cad9efb491530dfb6147458ea54f75f0896bffd79b1c7b653ae4f1779693a" [label="/bin/sh -c set -x && chown -RL alfresco:alfresco $ALF_HOME" shape="box"];
  "sha256:f9d2183ebd5d0486d09d3a91bc0d245d495ac9fedae8520d97a05040be9464a9" [label="sha256:f9d2183ebd5d0486d09d3a91bc0d245d495ac9fedae8520d97a05040be9464a9" shape="plaintext"];
  "sha256:4cfef0277f0ce8992d6e3cb0203176e96a360a7e53d0026f248fcbc4706ddc4e" -> "sha256:b0faa25d00bc4a8021d09198f5b2e122da272514a7250bb54ab7fc36e3198700" [label=""];
  "sha256:b0faa25d00bc4a8021d09198f5b2e122da272514a7250bb54ab7fc36e3198700" -> "sha256:6cb01017229120284cf02493930aa806b53140db31b97f5cabde0d636bae05ae" [label=""];
  "sha256:6cb01017229120284cf02493930aa806b53140db31b97f5cabde0d636bae05ae" -> "sha256:97bf4f83081c6689b679a434da1b689af269a1288345e5f43d0d7ebda9d4f39f" [label=""];
  "sha256:c9e082b1982c096b7b6d259b43d162d85c5c2293486291b6d6f44f1bf2f30989" -> "sha256:97bf4f83081c6689b679a434da1b689af269a1288345e5f43d0d7ebda9d4f39f" [label=""];
  "sha256:97bf4f83081c6689b679a434da1b689af269a1288345e5f43d0d7ebda9d4f39f" -> "sha256:2842e68f5cd485d627e552479d53ea5e24f9211b3ab30ce9397a24b5ba6f6c92" [label=""];
  "sha256:c9e082b1982c096b7b6d259b43d162d85c5c2293486291b6d6f44f1bf2f30989" -> "sha256:2842e68f5cd485d627e552479d53ea5e24f9211b3ab30ce9397a24b5ba6f6c92" [label=""];
  "sha256:2842e68f5cd485d627e552479d53ea5e24f9211b3ab30ce9397a24b5ba6f6c92" -> "sha256:a8a0eb221faac865b5181ecf585404c7718d517003cf77e6a92e8da0eb40035e" [label=""];
  "sha256:c9e082b1982c096b7b6d259b43d162d85c5c2293486291b6d6f44f1bf2f30989" -> "sha256:a8a0eb221faac865b5181ecf585404c7718d517003cf77e6a92e8da0eb40035e" [label=""];
  "sha256:a8a0eb221faac865b5181ecf585404c7718d517003cf77e6a92e8da0eb40035e" -> "sha256:18ef2e66f29c1756da94a8d0fbe369c68082301db7f5b2f5618dffd67bd08fc1" [label=""];
  "sha256:c9e082b1982c096b7b6d259b43d162d85c5c2293486291b6d6f44f1bf2f30989" -> "sha256:18ef2e66f29c1756da94a8d0fbe369c68082301db7f5b2f5618dffd67bd08fc1" [label=""];
  "sha256:18ef2e66f29c1756da94a8d0fbe369c68082301db7f5b2f5618dffd67bd08fc1" -> "sha256:a609104d12f90b96730dfd40990c24d22eff1e57cbdb3a1b994d5a858e331b67" [label=""];
  "sha256:c9e082b1982c096b7b6d259b43d162d85c5c2293486291b6d6f44f1bf2f30989" -> "sha256:a609104d12f90b96730dfd40990c24d22eff1e57cbdb3a1b994d5a858e331b67" [label=""];
  "sha256:a609104d12f90b96730dfd40990c24d22eff1e57cbdb3a1b994d5a858e331b67" -> "sha256:2723e1b2786a1efeec8d735b69ce6c4660ecb1fa4edf0558ef2562fd1c4f4f6e" [label=""];
  "sha256:2723e1b2786a1efeec8d735b69ce6c4660ecb1fa4edf0558ef2562fd1c4f4f6e" -> "sha256:c1c73f881e352926cc7eeffcf8a274d1d20dac7716d78bd2e6b61a369faa8cff" [label=""];
  "sha256:c1c73f881e352926cc7eeffcf8a274d1d20dac7716d78bd2e6b61a369faa8cff" -> "sha256:5b7cad9efb491530dfb6147458ea54f75f0896bffd79b1c7b653ae4f1779693a" [label=""];
  "sha256:5b7cad9efb491530dfb6147458ea54f75f0896bffd79b1c7b653ae4f1779693a" -> "sha256:f9d2183ebd5d0486d09d3a91bc0d245d495ac9fedae8520d97a05040be9464a9" [label=""];
}

