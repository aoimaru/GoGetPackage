[app/sources/257274297.Dockerfile]
digraph {
  "sha256:ba9827e1b5da83ebf01c100036d20d16fad4fd1e0cf792fecb6653aa19f3eb40" [label="docker-image://docker.io/tensorflow/tensorflow:nightly-gpu" shape="ellipse"];
  "sha256:fd1df27d979cfe05ec948f9877080d37de58a41bc8ff917354ff912bf1c26976" [label="mkdir{path=/root}" shape="note"];
  "sha256:1df705135f6733e303bb73ede05edaed6bfe37671f9e4d7cbe416b42035e8687" [label="/bin/sh -c apt-get install -y curl" shape="box"];
  "sha256:75c79aaad55c334d39f27ffb9a6481ee802db0b354a51a2e86f50b89a8c856a2" [label="/bin/sh -c echo \"deb http://packages.cloud.google.com/apt cloud-sdk-$(lsb_release -c -s) main\" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list" shape="box"];
  "sha256:d40c1001beec5ce178fbcc233d06a9ebe08f9044a2cbf4904a6d75926b819091" [label="/bin/sh -c curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -" shape="box"];
  "sha256:de8b00b04575079214dac4297ffe895674e04901a02a2e2bceb5b34835d05376" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:2c03d6e84ed9ba4dad1958cd43b262601c22d3ddd9151c90bfa80fb509c3b4e0" [label="/bin/sh -c apt-get install -y --no-install-recommends       git       build-essential       software-properties-common       ca-certificates       wget       htop       zip       google-cloud-sdk       vim       unzip" shape="box"];
  "sha256:fdd1a556d4271a526d3d20880c509756d3c08fd84e959528ce72df5a953ac478" [label="/bin/sh -c pip install --upgrade --force-reinstall ${tensorflow_pip_spec}" shape="box"];
  "sha256:638fd18481d51351236d4a70b9170a6184547483cc5792a653334ba5edec465e" [label="/bin/sh -c curl https://raw.githubusercontent.com/tensorflow/models/master/official/requirements.txt > /tmp/requirements.txt" shape="box"];
  "sha256:d8908bea5117eec4e283cb1df2067ca45492f59bb4e2056a448fa9ce76fd76f6" [label="/bin/sh -c pip install -r /tmp/requirements.txt" shape="box"];
  "sha256:34c27ab564a7b2587ab606fe385fb1c8ad0538515f683681f3813c94466e70fa" [label="/bin/sh -c pip freeze" shape="box"];
  "sha256:cac34f1aa42b2b56fb999280f74f61c5062ed9cd53e8b010de0c88ad51be7590" [label="sha256:cac34f1aa42b2b56fb999280f74f61c5062ed9cd53e8b010de0c88ad51be7590" shape="plaintext"];
  "sha256:ba9827e1b5da83ebf01c100036d20d16fad4fd1e0cf792fecb6653aa19f3eb40" -> "sha256:fd1df27d979cfe05ec948f9877080d37de58a41bc8ff917354ff912bf1c26976" [label=""];
  "sha256:fd1df27d979cfe05ec948f9877080d37de58a41bc8ff917354ff912bf1c26976" -> "sha256:1df705135f6733e303bb73ede05edaed6bfe37671f9e4d7cbe416b42035e8687" [label=""];
  "sha256:1df705135f6733e303bb73ede05edaed6bfe37671f9e4d7cbe416b42035e8687" -> "sha256:75c79aaad55c334d39f27ffb9a6481ee802db0b354a51a2e86f50b89a8c856a2" [label=""];
  "sha256:75c79aaad55c334d39f27ffb9a6481ee802db0b354a51a2e86f50b89a8c856a2" -> "sha256:d40c1001beec5ce178fbcc233d06a9ebe08f9044a2cbf4904a6d75926b819091" [label=""];
  "sha256:d40c1001beec5ce178fbcc233d06a9ebe08f9044a2cbf4904a6d75926b819091" -> "sha256:de8b00b04575079214dac4297ffe895674e04901a02a2e2bceb5b34835d05376" [label=""];
  "sha256:de8b00b04575079214dac4297ffe895674e04901a02a2e2bceb5b34835d05376" -> "sha256:2c03d6e84ed9ba4dad1958cd43b262601c22d3ddd9151c90bfa80fb509c3b4e0" [label=""];
  "sha256:2c03d6e84ed9ba4dad1958cd43b262601c22d3ddd9151c90bfa80fb509c3b4e0" -> "sha256:fdd1a556d4271a526d3d20880c509756d3c08fd84e959528ce72df5a953ac478" [label=""];
  "sha256:fdd1a556d4271a526d3d20880c509756d3c08fd84e959528ce72df5a953ac478" -> "sha256:638fd18481d51351236d4a70b9170a6184547483cc5792a653334ba5edec465e" [label=""];
  "sha256:638fd18481d51351236d4a70b9170a6184547483cc5792a653334ba5edec465e" -> "sha256:d8908bea5117eec4e283cb1df2067ca45492f59bb4e2056a448fa9ce76fd76f6" [label=""];
  "sha256:d8908bea5117eec4e283cb1df2067ca45492f59bb4e2056a448fa9ce76fd76f6" -> "sha256:34c27ab564a7b2587ab606fe385fb1c8ad0538515f683681f3813c94466e70fa" [label=""];
  "sha256:34c27ab564a7b2587ab606fe385fb1c8ad0538515f683681f3813c94466e70fa" -> "sha256:cac34f1aa42b2b56fb999280f74f61c5062ed9cd53e8b010de0c88ad51be7590" [label=""];
}

