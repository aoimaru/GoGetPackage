[app/sources/221541308.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2e348b50f7a327a4d0fa0243527e078fe9959998ee0eb79c29b703c2a921b6a4" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:886dcd639b8083960f432abfdce070e85c0caa0ccdfd77e454c8a816b3052166" [label="/bin/sh -c apt-get install -y    gcc   make   git    wget   build-essential   devscripts   fakeroot   debhelper   libsystemd-dev" shape="box"];
  "sha256:3982c3b068d723675cf243c07813faa14eb8cf7b8f15b11e5627560b22e93ff1" [label="/bin/sh -c wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb" shape="box"];
  "sha256:09629370d53953f89648fc50c65a184c67874bd58f2dbee260571c87c03c25c5" [label="/bin/sh -c dpkg -i erlang-solutions_1.0_all.deb" shape="box"];
  "sha256:319544af5b72c310e51885fae5540adef78c1a9540006f65f6ee9cc38e485970" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:46ad9370932a1fb460ceb1b3c477ae75acc59322f911f5511575c17aab50ab7c" [label="/bin/sh -c apt-get install -y erlang-base=1:20.3-1     erlang-syntax-tools=1:20.3-1     erlang-examples=1:20.3-1     erlang-src=1:20.3-1     erlang-ic=1:20.3-1     erlang-ic-java=1:20.3-1     erlang-asn1=1:20.3-1     erlang-crypto=1:20.3-1     erlang-public-key=1:20.3-1     erlang-ssl=1:20.3-1     erlang-mnesia=1:20.3-1     erlang-runtime-tools=1:20.3-1     erlang-dev=1:20.3-1     erlang-diameter=1:20.3-1     erlang-eldap=1:20.3-1     erlang-appmon=1:20.3-1     erlang-common-test=1:20.3-1     erlang-corba=1:20.3-1     erlang-debugger=1:20.3-1     erlang-dialyzer=1:20.3-1     erlang-edoc=1:20.3-1     erlang-erl-docgen=1:20.3-1     erlang-et=1:20.3-1     erlang-eunit=1:20.3-1     erlang-gs=1:20.3-1     erlang-inets=1:20.3-1     erlang-inviso=1:20.3-1     erlang-megaco=1:20.3-1     erlang-observer=1:20.3-1     erlang-odbc=1:20.3-1     erlang-os-mon=1:20.3-1     erlang-parsetools=1:20.3-1     erlang-percept=1:20.3-1     erlang-pman=1:20.3-1     erlang-reltool=1:20.3-1     erlang-snmp=1:20.3-1     erlang-ssh=1:20.3-1     erlang-test-server=1:20.3-1     erlang-toolbar=1:20.3-1     erlang-tools=1:20.3-1     erlang-tv=1:20.3-1     erlang-typer=1:20.3-1     erlang-wx=1:20.3-1     erlang-xmerl=1:20.3-1     erlang=1:20.3-1" shape="box"];
  "sha256:56616ccbca25d4e601a251be471099549a0ae44d9f09934e941464ba498df7a5" [label="sha256:56616ccbca25d4e601a251be471099549a0ae44d9f09934e941464ba498df7a5" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2e348b50f7a327a4d0fa0243527e078fe9959998ee0eb79c29b703c2a921b6a4" [label=""];
  "sha256:2e348b50f7a327a4d0fa0243527e078fe9959998ee0eb79c29b703c2a921b6a4" -> "sha256:886dcd639b8083960f432abfdce070e85c0caa0ccdfd77e454c8a816b3052166" [label=""];
  "sha256:886dcd639b8083960f432abfdce070e85c0caa0ccdfd77e454c8a816b3052166" -> "sha256:3982c3b068d723675cf243c07813faa14eb8cf7b8f15b11e5627560b22e93ff1" [label=""];
  "sha256:3982c3b068d723675cf243c07813faa14eb8cf7b8f15b11e5627560b22e93ff1" -> "sha256:09629370d53953f89648fc50c65a184c67874bd58f2dbee260571c87c03c25c5" [label=""];
  "sha256:09629370d53953f89648fc50c65a184c67874bd58f2dbee260571c87c03c25c5" -> "sha256:319544af5b72c310e51885fae5540adef78c1a9540006f65f6ee9cc38e485970" [label=""];
  "sha256:319544af5b72c310e51885fae5540adef78c1a9540006f65f6ee9cc38e485970" -> "sha256:46ad9370932a1fb460ceb1b3c477ae75acc59322f911f5511575c17aab50ab7c" [label=""];
  "sha256:46ad9370932a1fb460ceb1b3c477ae75acc59322f911f5511575c17aab50ab7c" -> "sha256:56616ccbca25d4e601a251be471099549a0ae44d9f09934e941464ba498df7a5" [label=""];
}

