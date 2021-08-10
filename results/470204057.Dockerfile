[app/sources/470204057.Dockerfile]
digraph {
  "sha256:d5adba941ea645a20eadb6d6835d2dc68157b2e0b52417e73bd2aa0eb53eb86b" [label="docker-image://docker.io/cyphernode/alpine-glibc-base:3.8" shape="ellipse"];
  "sha256:b18eacbca3265043ecd66e217b66fe1c53e855fdc6616dbcda9ff8b98361e70b" [label="/bin/sh -c apk add --update --no-cache     sqlite     jq     curl     su-exec" shape="box"];
  "sha256:85e31a5fe2560e0f1204160efa30732245222671a2d0ab2f198843c0f1e07835" [label="mkdir{path=/proxy}" shape="note"];
  "sha256:1ebed3368a5411756e6d2d690089d69ad6136105325053964b30fa93eac81204" [label="local://context" shape="ellipse"];
  "sha256:055f135129278959591dc87ef87ad9241a5586d458d4e8d620d60e31f7e29ea6" [label="copy{src=/app/data/*, dest=/proxy/}" shape="note"];
  "sha256:1004febe2a78581f80e15354bdbce97ef1c03d22a76816dcdeee52c7285ad791" [label="copy{src=/app/script/*, dest=/proxy/}" shape="note"];
  "sha256:155d9dab4076390e3c702d0fd3f26f836b4605e05e8c5a1ebc4651c753fe5f3a" [label="docker-image://docker.io/cyphernode/clightning:v0.7.0-test" shape="ellipse"];
  "sha256:4ffe22f31bf336904ee6e3c4aa3a1551178ef1975375f86505bc3b9900efa355" [label="copy{src=/usr/local/bin/lightning-cli, dest=/proxy/}" shape="note"];
  "sha256:f0f22775bfefdcb4070899c1fb144dc3dba7488862b8790ea66f8b759e7a7363" [label="docker-image://docker.io/library/eclipse-mosquitto:1.6" shape="ellipse"];
  "sha256:8988d555392128d5f9af251c63647d9c49ef655c94ef5af0df1ee383e82f0124" [label="copy{src=/usr/bin/mosquitto_rr, dest=/usr/bin/},copy{src=/usr/bin/mosquitto_sub, dest=/usr/bin/},copy{src=/usr/bin/mosquitto_pub, dest=/usr/bin/}" shape="note"];
  "sha256:c69ed57542e5e2176977f61ba8341c3d026a33fbc595c42df4054990b058c0bb" [label="copy{src=/usr/lib/libmosquitto*, dest=/usr/lib/}" shape="note"];
  "sha256:3c38ed43bb113e2362ab93cd6f54687237d5c41c9ba0177fd25d959c15ca00b4" [label="/bin/sh -c chmod +x startproxy.sh requesthandler.sh lightning-cli sqlmigrate*.sh waitanyinvoice.sh tests*  && chmod o+w .  && mkdir db" shape="box"];
  "sha256:07f2c452114b35ff647d85817b45f3853f8d624e976cebdd28391614866695e7" [label="sha256:07f2c452114b35ff647d85817b45f3853f8d624e976cebdd28391614866695e7" shape="plaintext"];
  "sha256:d5adba941ea645a20eadb6d6835d2dc68157b2e0b52417e73bd2aa0eb53eb86b" -> "sha256:b18eacbca3265043ecd66e217b66fe1c53e855fdc6616dbcda9ff8b98361e70b" [label=""];
  "sha256:b18eacbca3265043ecd66e217b66fe1c53e855fdc6616dbcda9ff8b98361e70b" -> "sha256:85e31a5fe2560e0f1204160efa30732245222671a2d0ab2f198843c0f1e07835" [label=""];
  "sha256:85e31a5fe2560e0f1204160efa30732245222671a2d0ab2f198843c0f1e07835" -> "sha256:055f135129278959591dc87ef87ad9241a5586d458d4e8d620d60e31f7e29ea6" [label=""];
  "sha256:1ebed3368a5411756e6d2d690089d69ad6136105325053964b30fa93eac81204" -> "sha256:055f135129278959591dc87ef87ad9241a5586d458d4e8d620d60e31f7e29ea6" [label=""];
  "sha256:055f135129278959591dc87ef87ad9241a5586d458d4e8d620d60e31f7e29ea6" -> "sha256:1004febe2a78581f80e15354bdbce97ef1c03d22a76816dcdeee52c7285ad791" [label=""];
  "sha256:1ebed3368a5411756e6d2d690089d69ad6136105325053964b30fa93eac81204" -> "sha256:1004febe2a78581f80e15354bdbce97ef1c03d22a76816dcdeee52c7285ad791" [label=""];
  "sha256:1004febe2a78581f80e15354bdbce97ef1c03d22a76816dcdeee52c7285ad791" -> "sha256:4ffe22f31bf336904ee6e3c4aa3a1551178ef1975375f86505bc3b9900efa355" [label=""];
  "sha256:155d9dab4076390e3c702d0fd3f26f836b4605e05e8c5a1ebc4651c753fe5f3a" -> "sha256:4ffe22f31bf336904ee6e3c4aa3a1551178ef1975375f86505bc3b9900efa355" [label=""];
  "sha256:4ffe22f31bf336904ee6e3c4aa3a1551178ef1975375f86505bc3b9900efa355" -> "sha256:8988d555392128d5f9af251c63647d9c49ef655c94ef5af0df1ee383e82f0124" [label=""];
  "sha256:f0f22775bfefdcb4070899c1fb144dc3dba7488862b8790ea66f8b759e7a7363" -> "sha256:8988d555392128d5f9af251c63647d9c49ef655c94ef5af0df1ee383e82f0124" [label=""];
  "sha256:8988d555392128d5f9af251c63647d9c49ef655c94ef5af0df1ee383e82f0124" -> "sha256:c69ed57542e5e2176977f61ba8341c3d026a33fbc595c42df4054990b058c0bb" [label=""];
  "sha256:f0f22775bfefdcb4070899c1fb144dc3dba7488862b8790ea66f8b759e7a7363" -> "sha256:c69ed57542e5e2176977f61ba8341c3d026a33fbc595c42df4054990b058c0bb" [label=""];
  "sha256:c69ed57542e5e2176977f61ba8341c3d026a33fbc595c42df4054990b058c0bb" -> "sha256:3c38ed43bb113e2362ab93cd6f54687237d5c41c9ba0177fd25d959c15ca00b4" [label=""];
  "sha256:3c38ed43bb113e2362ab93cd6f54687237d5c41c9ba0177fd25d959c15ca00b4" -> "sha256:07f2c452114b35ff647d85817b45f3853f8d624e976cebdd28391614866695e7" [label=""];
}

