[app/sources/330073475.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:18c96e9494f0800bfc3b22bb4449a328b675b92e28dcc89d8f73f40ad619d964" [label="/bin/sh -c dpkg --add-architecture i386" shape="box"];
  "sha256:bec2bd8dcaf86192180f796540b3f2b1565a092d316171ef72a8f3ffed8afa8b" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:381e4b1fd46187f1a5afb9a5400bda89e58c80a71579846c68519bb1268b2683" [label="/bin/sh -c apt-get -y upgrade" shape="box"];
  "sha256:0293949a65a55a533a7288aa5f93539e98c53939210b1a22d70b39daa9c232bb" [label="/bin/sh -c apt-get install --no-install-recommends -y pkg-config:i386 gcc-multilib g++-multilib cmake git libsdl2-dev:i386 libsdl2-mixer-dev:i386 ninja-build libyaml-cpp-dev:i386" shape="box"];
  "sha256:49acb4fa7beaa114b4808ba15457d5a98c87c6e42c7235f8d56b74ebccfe4699" [label="/bin/sh -c apt-get install --no-install-recommends -y clang" shape="box"];
  "sha256:0612150e1984ed21ca42f630922472fa3ee7c8480268c41c54299eab294adc51" [label="sha256:0612150e1984ed21ca42f630922472fa3ee7c8480268c41c54299eab294adc51" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:18c96e9494f0800bfc3b22bb4449a328b675b92e28dcc89d8f73f40ad619d964" [label=""];
  "sha256:18c96e9494f0800bfc3b22bb4449a328b675b92e28dcc89d8f73f40ad619d964" -> "sha256:bec2bd8dcaf86192180f796540b3f2b1565a092d316171ef72a8f3ffed8afa8b" [label=""];
  "sha256:bec2bd8dcaf86192180f796540b3f2b1565a092d316171ef72a8f3ffed8afa8b" -> "sha256:381e4b1fd46187f1a5afb9a5400bda89e58c80a71579846c68519bb1268b2683" [label=""];
  "sha256:381e4b1fd46187f1a5afb9a5400bda89e58c80a71579846c68519bb1268b2683" -> "sha256:0293949a65a55a533a7288aa5f93539e98c53939210b1a22d70b39daa9c232bb" [label=""];
  "sha256:0293949a65a55a533a7288aa5f93539e98c53939210b1a22d70b39daa9c232bb" -> "sha256:49acb4fa7beaa114b4808ba15457d5a98c87c6e42c7235f8d56b74ebccfe4699" [label=""];
  "sha256:49acb4fa7beaa114b4808ba15457d5a98c87c6e42c7235f8d56b74ebccfe4699" -> "sha256:0612150e1984ed21ca42f630922472fa3ee7c8480268c41c54299eab294adc51" [label=""];
}

