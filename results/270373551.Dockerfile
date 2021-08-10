[app/sources/270373551.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:87aeedbb49a2f288fc640ffa166149e6a56957ef48d2d6f3b0b5406dd3e6f8d2" [label="/bin/sh -c echo \"nameserver 1.1.1.1\" >> /etc/resolv.conf" shape="box"];
  "sha256:834947653bac6b660b938d23db61b15e338494958fc88915c28425954133aec8" [label="/bin/sh -c apt update" shape="box"];
  "sha256:ca87c3491af32e4e591c7b06da899f5d6cca057147abec757fa91696e7aa7435" [label="/bin/sh -c apt upgrade -y" shape="box"];
  "sha256:164538016ae439fd88ea967a57c51b03711fb5cbcba1cc989d19649b722d8d58" [label="/bin/sh -c apt install -y ruby ruby-dev build-essential imagemagick libmagickcore-dev git libpq-dev postgresql-client nodejs" shape="box"];
  "sha256:e7c1bf321e7ef730f79f5eb00396602d8cbd2acc1ade5c71656df87d20f18589" [label="/bin/sh -c gem install rails -v 5.2.2 --no-ri --no-rdoc" shape="box"];
  "sha256:76bb2388a7af9802b78678ae4a562f06af6192a86c0615ebe00d4b45930f2c2e" [label="/bin/sh -c gem install bundler --no-ri --no-rdoc" shape="box"];
  "sha256:ec4b49639ef98f74a0fd99939f80d580a9b5df147a808a41e1f3410b0d90b0c5" [label="local://context" shape="ellipse"];
  "sha256:16523974c09f71e787f9b15089e4feca6692731dcf9d27f6f06891978c3f99f2" [label="copy{src=/, dest=/gaku}" shape="note"];
  "sha256:bb77622037b76825a42e7b4fba57fd180d01e8f3edba22fca63a0ab547c34718" [label="mkdir{path=/gaku}" shape="note"];
  "sha256:b841f487bd202536f4f9a73215f1b8512178fe23c75c43e557379ea1b177c763" [label="/bin/sh -c rails new $app --database=postgresql --skip-bundle" shape="box"];
  "sha256:b22c25f775818017ac1b7eb2360ea3a928c72e205e804971834a380169df0bd1" [label="mkdir{path=/app}" shape="note"];
  "sha256:f22158c7365347fbb6abd61d5e8f52f411914d0bf1c464630347e5b5446c8c80" [label="/bin/sh -c echo \"gem 'gaku', path: '../gaku'\" >> Gemfile" shape="box"];
  "sha256:e4598bdba025601c585c13c704b7be6bfa002a7555d597dd7b921530f6b52b7f" [label="/bin/sh -c echo \"gem 'tzinfo-data'\" >> Gemfile" shape="box"];
  "sha256:a15ae48d9023d8d7776ffdc7f9f07f8974abfd8ad6e5866511058f425dd8b873" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:faec2aeb9119ea6684a3abd4c8a15056e6dbf31b539a38c3da8d8a7046bad79a" [label="/bin/sh -c bundle exec rails g gaku:docker" shape="box"];
  "sha256:ae439a8258fe2b0752f130f8f1734975c6ecfaef32114829c5949da3441f87d0" [label="sha256:ae439a8258fe2b0752f130f8f1734975c6ecfaef32114829c5949da3441f87d0" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:87aeedbb49a2f288fc640ffa166149e6a56957ef48d2d6f3b0b5406dd3e6f8d2" [label=""];
  "sha256:87aeedbb49a2f288fc640ffa166149e6a56957ef48d2d6f3b0b5406dd3e6f8d2" -> "sha256:834947653bac6b660b938d23db61b15e338494958fc88915c28425954133aec8" [label=""];
  "sha256:834947653bac6b660b938d23db61b15e338494958fc88915c28425954133aec8" -> "sha256:ca87c3491af32e4e591c7b06da899f5d6cca057147abec757fa91696e7aa7435" [label=""];
  "sha256:ca87c3491af32e4e591c7b06da899f5d6cca057147abec757fa91696e7aa7435" -> "sha256:164538016ae439fd88ea967a57c51b03711fb5cbcba1cc989d19649b722d8d58" [label=""];
  "sha256:164538016ae439fd88ea967a57c51b03711fb5cbcba1cc989d19649b722d8d58" -> "sha256:e7c1bf321e7ef730f79f5eb00396602d8cbd2acc1ade5c71656df87d20f18589" [label=""];
  "sha256:e7c1bf321e7ef730f79f5eb00396602d8cbd2acc1ade5c71656df87d20f18589" -> "sha256:76bb2388a7af9802b78678ae4a562f06af6192a86c0615ebe00d4b45930f2c2e" [label=""];
  "sha256:76bb2388a7af9802b78678ae4a562f06af6192a86c0615ebe00d4b45930f2c2e" -> "sha256:16523974c09f71e787f9b15089e4feca6692731dcf9d27f6f06891978c3f99f2" [label=""];
  "sha256:ec4b49639ef98f74a0fd99939f80d580a9b5df147a808a41e1f3410b0d90b0c5" -> "sha256:16523974c09f71e787f9b15089e4feca6692731dcf9d27f6f06891978c3f99f2" [label=""];
  "sha256:16523974c09f71e787f9b15089e4feca6692731dcf9d27f6f06891978c3f99f2" -> "sha256:bb77622037b76825a42e7b4fba57fd180d01e8f3edba22fca63a0ab547c34718" [label=""];
  "sha256:bb77622037b76825a42e7b4fba57fd180d01e8f3edba22fca63a0ab547c34718" -> "sha256:b841f487bd202536f4f9a73215f1b8512178fe23c75c43e557379ea1b177c763" [label=""];
  "sha256:b841f487bd202536f4f9a73215f1b8512178fe23c75c43e557379ea1b177c763" -> "sha256:b22c25f775818017ac1b7eb2360ea3a928c72e205e804971834a380169df0bd1" [label=""];
  "sha256:b22c25f775818017ac1b7eb2360ea3a928c72e205e804971834a380169df0bd1" -> "sha256:f22158c7365347fbb6abd61d5e8f52f411914d0bf1c464630347e5b5446c8c80" [label=""];
  "sha256:f22158c7365347fbb6abd61d5e8f52f411914d0bf1c464630347e5b5446c8c80" -> "sha256:e4598bdba025601c585c13c704b7be6bfa002a7555d597dd7b921530f6b52b7f" [label=""];
  "sha256:e4598bdba025601c585c13c704b7be6bfa002a7555d597dd7b921530f6b52b7f" -> "sha256:a15ae48d9023d8d7776ffdc7f9f07f8974abfd8ad6e5866511058f425dd8b873" [label=""];
  "sha256:a15ae48d9023d8d7776ffdc7f9f07f8974abfd8ad6e5866511058f425dd8b873" -> "sha256:faec2aeb9119ea6684a3abd4c8a15056e6dbf31b539a38c3da8d8a7046bad79a" [label=""];
  "sha256:faec2aeb9119ea6684a3abd4c8a15056e6dbf31b539a38c3da8d8a7046bad79a" -> "sha256:ae439a8258fe2b0752f130f8f1734975c6ecfaef32114829c5949da3441f87d0" [label=""];
}

