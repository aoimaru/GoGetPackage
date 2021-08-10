[app/sources/252774320.Dockerfile]
digraph {
  "sha256:d2c09c1cbf600dacfffef512c294116497ac2e272e2c8e254125f7bc709b14d6" [label="docker-image://docker.io/library/ruby:2.3.1" shape="ellipse"];
  "sha256:5717596f777cbc8d417136d18827607e4d2b5ed09a0dece3af599ee3cb143fd2" [label="/bin/sh -c apt-get update -qq && apt-get install -y build-essential" shape="box"];
  "sha256:ad4af4fba64b0d9b3b7d69bc99af35ab11fc6f111df084adb014549f99c6fc3c" [label="/bin/sh -c mkdir /application" shape="box"];
  "sha256:6fb4e49e7716e486eaad052181bbad25fef8bb145a6927b341c3f9ab09442030" [label="mkdir{path=/application}" shape="note"];
  "sha256:e966fc95366315ac152ece9825b4ce70aa292f4ad6e71deb13d19e8d81376ccb" [label="local://context" shape="ellipse"];
  "sha256:0826b0641e8c91aa19a876ae313723a15dd9a3f675e0a5354ff5a73d32fc6343" [label="copy{src=/Gemfile, dest=/application/Gemfile}" shape="note"];
  "sha256:7cdaa9fc499980fcd37886a380f9ae874f4d77afc555de8b4688884afd7e1f93" [label="copy{src=/Gemfile.lock, dest=/application/Gemfile.lock}" shape="note"];
  "sha256:d87ddaa73cb0c03c3c1f46a2192f0d50004d40429d9733210a378f126155d716" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:aec5fc9f3c19c88bfe7f646aceeb16992e96077e1c287bb3278c29f1a66b5ede" [label="copy{src=/, dest=/application}" shape="note"];
  "sha256:d4179685f7b3a9302b259d2c079f4e1d5277eb73299a6d185b25f013d188bf50" [label="sha256:d4179685f7b3a9302b259d2c079f4e1d5277eb73299a6d185b25f013d188bf50" shape="plaintext"];
  "sha256:d2c09c1cbf600dacfffef512c294116497ac2e272e2c8e254125f7bc709b14d6" -> "sha256:5717596f777cbc8d417136d18827607e4d2b5ed09a0dece3af599ee3cb143fd2" [label=""];
  "sha256:5717596f777cbc8d417136d18827607e4d2b5ed09a0dece3af599ee3cb143fd2" -> "sha256:ad4af4fba64b0d9b3b7d69bc99af35ab11fc6f111df084adb014549f99c6fc3c" [label=""];
  "sha256:ad4af4fba64b0d9b3b7d69bc99af35ab11fc6f111df084adb014549f99c6fc3c" -> "sha256:6fb4e49e7716e486eaad052181bbad25fef8bb145a6927b341c3f9ab09442030" [label=""];
  "sha256:6fb4e49e7716e486eaad052181bbad25fef8bb145a6927b341c3f9ab09442030" -> "sha256:0826b0641e8c91aa19a876ae313723a15dd9a3f675e0a5354ff5a73d32fc6343" [label=""];
  "sha256:e966fc95366315ac152ece9825b4ce70aa292f4ad6e71deb13d19e8d81376ccb" -> "sha256:0826b0641e8c91aa19a876ae313723a15dd9a3f675e0a5354ff5a73d32fc6343" [label=""];
  "sha256:0826b0641e8c91aa19a876ae313723a15dd9a3f675e0a5354ff5a73d32fc6343" -> "sha256:7cdaa9fc499980fcd37886a380f9ae874f4d77afc555de8b4688884afd7e1f93" [label=""];
  "sha256:e966fc95366315ac152ece9825b4ce70aa292f4ad6e71deb13d19e8d81376ccb" -> "sha256:7cdaa9fc499980fcd37886a380f9ae874f4d77afc555de8b4688884afd7e1f93" [label=""];
  "sha256:7cdaa9fc499980fcd37886a380f9ae874f4d77afc555de8b4688884afd7e1f93" -> "sha256:d87ddaa73cb0c03c3c1f46a2192f0d50004d40429d9733210a378f126155d716" [label=""];
  "sha256:d87ddaa73cb0c03c3c1f46a2192f0d50004d40429d9733210a378f126155d716" -> "sha256:aec5fc9f3c19c88bfe7f646aceeb16992e96077e1c287bb3278c29f1a66b5ede" [label=""];
  "sha256:e966fc95366315ac152ece9825b4ce70aa292f4ad6e71deb13d19e8d81376ccb" -> "sha256:aec5fc9f3c19c88bfe7f646aceeb16992e96077e1c287bb3278c29f1a66b5ede" [label=""];
  "sha256:aec5fc9f3c19c88bfe7f646aceeb16992e96077e1c287bb3278c29f1a66b5ede" -> "sha256:d4179685f7b3a9302b259d2c079f4e1d5277eb73299a6d185b25f013d188bf50" [label=""];
}

