[app/sources/252801142.Dockerfile]
digraph {
  "sha256:c8e0a689d7fd6c53098e13b6ba0a62e641b965180e5a7970e3f7b28cdb484f0f" [label="docker-image://docker.io/library/tomcat:8.5.23-jre8" shape="ellipse"];
  "sha256:e944bd1df45c55d353d52b9d5535a53cc4b4c9d352087ec368108a3de0201638" [label="/bin/sh -c cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime" shape="box"];
  "sha256:3ab3188b481c6cdff5bd0d8fdbe235f2ddc78c6d469ce4c91ae09efe1035fe2a" [label="/bin/sh -c ulimit -HSn 4096" shape="box"];
  "sha256:c53488c8532f24bd1e372114a22c4473a58b180e56b8d7ec9af71d29ffc6062b" [label="local://context" shape="ellipse"];
  "sha256:5105145dff6290133bff4698d597c5c3a81c46eff2c0b57312aa4888c9264401" [label="copy{src=/tomcat, dest=/usr/local/tomcat}" shape="note"];
  "sha256:e9b6e6bc15bb81b5cce3cf684400203c81f51c4c2b91dbfae5ab6c9b2e4caea7" [label="/bin/sh -c chmod a+x $CATALINA_HOME/bin/catalina.sh" shape="box"];
  "sha256:b899ece70466522f12150f965c23937655d25f5fa53a756e912c6d787a5f0a6d" [label="/bin/sh -c rm -rf $CATALINA_HOME/webapps/docs" shape="box"];
  "sha256:bd814bab72954dc04f8bd0c4c8e1ca694799e85e1edf96d86c7edbb5fc285680" [label="/bin/sh -c rm -rf $CATALINA_HOME/webapps/examples" shape="box"];
  "sha256:0f166a8ec6157e92cb715c0e24b1a0b04a2f84ffaa3a11565f642ce230729b59" [label="copy{src=/shell, dest=/shell}" shape="note"];
  "sha256:090e57071de1dd23162b83b03cbaaefce974161993032538f0c96cb1c56c8fa3" [label="/bin/sh -c chmod a+x /shell/*" shape="box"];
  "sha256:a467f0f228f4244e50b91a8a603db6e7ffbed54fb5b494397936de671cd08e49" [label="sha256:a467f0f228f4244e50b91a8a603db6e7ffbed54fb5b494397936de671cd08e49" shape="plaintext"];
  "sha256:c8e0a689d7fd6c53098e13b6ba0a62e641b965180e5a7970e3f7b28cdb484f0f" -> "sha256:e944bd1df45c55d353d52b9d5535a53cc4b4c9d352087ec368108a3de0201638" [label=""];
  "sha256:e944bd1df45c55d353d52b9d5535a53cc4b4c9d352087ec368108a3de0201638" -> "sha256:3ab3188b481c6cdff5bd0d8fdbe235f2ddc78c6d469ce4c91ae09efe1035fe2a" [label=""];
  "sha256:3ab3188b481c6cdff5bd0d8fdbe235f2ddc78c6d469ce4c91ae09efe1035fe2a" -> "sha256:5105145dff6290133bff4698d597c5c3a81c46eff2c0b57312aa4888c9264401" [label=""];
  "sha256:c53488c8532f24bd1e372114a22c4473a58b180e56b8d7ec9af71d29ffc6062b" -> "sha256:5105145dff6290133bff4698d597c5c3a81c46eff2c0b57312aa4888c9264401" [label=""];
  "sha256:5105145dff6290133bff4698d597c5c3a81c46eff2c0b57312aa4888c9264401" -> "sha256:e9b6e6bc15bb81b5cce3cf684400203c81f51c4c2b91dbfae5ab6c9b2e4caea7" [label=""];
  "sha256:e9b6e6bc15bb81b5cce3cf684400203c81f51c4c2b91dbfae5ab6c9b2e4caea7" -> "sha256:b899ece70466522f12150f965c23937655d25f5fa53a756e912c6d787a5f0a6d" [label=""];
  "sha256:b899ece70466522f12150f965c23937655d25f5fa53a756e912c6d787a5f0a6d" -> "sha256:bd814bab72954dc04f8bd0c4c8e1ca694799e85e1edf96d86c7edbb5fc285680" [label=""];
  "sha256:bd814bab72954dc04f8bd0c4c8e1ca694799e85e1edf96d86c7edbb5fc285680" -> "sha256:0f166a8ec6157e92cb715c0e24b1a0b04a2f84ffaa3a11565f642ce230729b59" [label=""];
  "sha256:c53488c8532f24bd1e372114a22c4473a58b180e56b8d7ec9af71d29ffc6062b" -> "sha256:0f166a8ec6157e92cb715c0e24b1a0b04a2f84ffaa3a11565f642ce230729b59" [label=""];
  "sha256:0f166a8ec6157e92cb715c0e24b1a0b04a2f84ffaa3a11565f642ce230729b59" -> "sha256:090e57071de1dd23162b83b03cbaaefce974161993032538f0c96cb1c56c8fa3" [label=""];
  "sha256:090e57071de1dd23162b83b03cbaaefce974161993032538f0c96cb1c56c8fa3" -> "sha256:a467f0f228f4244e50b91a8a603db6e7ffbed54fb5b494397936de671cd08e49" [label=""];
}

