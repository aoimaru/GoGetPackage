[app/sources/165968418.Dockerfile]
digraph {
  "sha256:a1edaa6e084f8589253bb2d36c467a2feba13a56383aab09721d5c4c8f24ddb9" [label="docker-image://docker.io/tianon/debian-devel:latest" shape="ellipse"];
  "sha256:8e171743ce7546ae781e04eef5e52f4459674e144a402b4bdb1b561cc45097e8" [label="local://context" shape="ellipse"];
  "sha256:753d8cae89a370d335f63eba85a7ca02f9209f979aceb447b24ad739214d40b0" [label="copy{src=/control, dest=/usr/src/go-md2man/debian/}" shape="note"];
  "sha256:18d5a71539302ce85e5b21af94f8a9f202b695e1b708b81bf2708594218e37c4" [label="mkdir{path=/usr/src/go-md2man}" shape="note"];
  "sha256:3bc96cbed1271f09ebfc5b8745871d53a7003baa9f1883d2a47ad2316cb7970b" [label="/bin/sh -c apt-get update && mk-build-deps -irt'apt-get --no-install-recommends -yV' debian/control" shape="box"];
  "sha256:2053ac0e5e6c8b789f41ebe42f481aa42a8ec701ec9652656b909b634c8d271c" [label="copy{src=/, dest=/usr/src/go-md2man/debian}" shape="note"];
  "sha256:a57994191834675b0c9cdd0be812e37e1ebd0dec3253fec2fe26f09b984d55e7" [label="/bin/sh -c uscan --force-download --verbose --download-current-version" shape="box"];
  "sha256:5e903ef98ae1933fb2a143ea7530ca36e22c75d0fff194e2cda3c5ddb74d08df" [label="/bin/sh -c /tianon/extract-origtargz.sh" shape="box"];
  "sha256:48185c7d20f244272af54bce08cd87d2b861de9fc3cb3dd857313f423ab85c98" [label="/bin/sh -c echo '/tianon/extract-origtargz.sh && dpkg-buildpackage -us -uc && lintian -EvIL+pedantic' >> /root/.bash_history" shape="box"];
  "sha256:3258f16648244dd51ab9137be4d11aed60e3c2d00663dd953c83e199bd1fefe2" [label="sha256:3258f16648244dd51ab9137be4d11aed60e3c2d00663dd953c83e199bd1fefe2" shape="plaintext"];
  "sha256:a1edaa6e084f8589253bb2d36c467a2feba13a56383aab09721d5c4c8f24ddb9" -> "sha256:753d8cae89a370d335f63eba85a7ca02f9209f979aceb447b24ad739214d40b0" [label=""];
  "sha256:8e171743ce7546ae781e04eef5e52f4459674e144a402b4bdb1b561cc45097e8" -> "sha256:753d8cae89a370d335f63eba85a7ca02f9209f979aceb447b24ad739214d40b0" [label=""];
  "sha256:753d8cae89a370d335f63eba85a7ca02f9209f979aceb447b24ad739214d40b0" -> "sha256:18d5a71539302ce85e5b21af94f8a9f202b695e1b708b81bf2708594218e37c4" [label=""];
  "sha256:18d5a71539302ce85e5b21af94f8a9f202b695e1b708b81bf2708594218e37c4" -> "sha256:3bc96cbed1271f09ebfc5b8745871d53a7003baa9f1883d2a47ad2316cb7970b" [label=""];
  "sha256:3bc96cbed1271f09ebfc5b8745871d53a7003baa9f1883d2a47ad2316cb7970b" -> "sha256:2053ac0e5e6c8b789f41ebe42f481aa42a8ec701ec9652656b909b634c8d271c" [label=""];
  "sha256:8e171743ce7546ae781e04eef5e52f4459674e144a402b4bdb1b561cc45097e8" -> "sha256:2053ac0e5e6c8b789f41ebe42f481aa42a8ec701ec9652656b909b634c8d271c" [label=""];
  "sha256:2053ac0e5e6c8b789f41ebe42f481aa42a8ec701ec9652656b909b634c8d271c" -> "sha256:a57994191834675b0c9cdd0be812e37e1ebd0dec3253fec2fe26f09b984d55e7" [label=""];
  "sha256:a57994191834675b0c9cdd0be812e37e1ebd0dec3253fec2fe26f09b984d55e7" -> "sha256:5e903ef98ae1933fb2a143ea7530ca36e22c75d0fff194e2cda3c5ddb74d08df" [label=""];
  "sha256:5e903ef98ae1933fb2a143ea7530ca36e22c75d0fff194e2cda3c5ddb74d08df" -> "sha256:48185c7d20f244272af54bce08cd87d2b861de9fc3cb3dd857313f423ab85c98" [label=""];
  "sha256:48185c7d20f244272af54bce08cd87d2b861de9fc3cb3dd857313f423ab85c98" -> "sha256:3258f16648244dd51ab9137be4d11aed60e3c2d00663dd953c83e199bd1fefe2" [label=""];
}

