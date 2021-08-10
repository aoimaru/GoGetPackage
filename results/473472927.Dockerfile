[app/sources/473472927.Dockerfile]
digraph {
  "sha256:e9469df5445cfd48156bc1fd666f485d2db7fa34a17b7db899444993100b29c1" [label="docker-image://docker.io/google/dart:2" shape="ellipse"];
  "sha256:81b68fe2a1da50929ebe6d612a2bb0f378e300e8df85bd835e156e53ea047941" [label="/bin/sh -c apt-get update -qq && apt-get install -qqy --no-install-recommends   curl=7.*   jq=1.*   bash=4.*   git=1:2.*   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:39ee390faafae29343d0811f12ea8c8145f03056219b7e3e790b3d75107415ff" [label="local://context" shape="ellipse"];
  "sha256:9cb4f50f13d0ab18a6cbbf5be44b6c42dbc5ead06fecf6469cd371e0ef6d61d9" [label="copy{src=/lib.sh, dest=/lib.sh}" shape="note"];
  "sha256:6db09b2e5f7c3200f768e8422f6e1a2a4a1dd2a2638494127e61df814a4c104d" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:094c3b351cc35703fba0177fa89d0ea0fc71742f4c3448dd19e48c2035cc514b" [label="sha256:094c3b351cc35703fba0177fa89d0ea0fc71742f4c3448dd19e48c2035cc514b" shape="plaintext"];
  "sha256:e9469df5445cfd48156bc1fd666f485d2db7fa34a17b7db899444993100b29c1" -> "sha256:81b68fe2a1da50929ebe6d612a2bb0f378e300e8df85bd835e156e53ea047941" [label=""];
  "sha256:81b68fe2a1da50929ebe6d612a2bb0f378e300e8df85bd835e156e53ea047941" -> "sha256:9cb4f50f13d0ab18a6cbbf5be44b6c42dbc5ead06fecf6469cd371e0ef6d61d9" [label=""];
  "sha256:39ee390faafae29343d0811f12ea8c8145f03056219b7e3e790b3d75107415ff" -> "sha256:9cb4f50f13d0ab18a6cbbf5be44b6c42dbc5ead06fecf6469cd371e0ef6d61d9" [label=""];
  "sha256:9cb4f50f13d0ab18a6cbbf5be44b6c42dbc5ead06fecf6469cd371e0ef6d61d9" -> "sha256:6db09b2e5f7c3200f768e8422f6e1a2a4a1dd2a2638494127e61df814a4c104d" [label=""];
  "sha256:39ee390faafae29343d0811f12ea8c8145f03056219b7e3e790b3d75107415ff" -> "sha256:6db09b2e5f7c3200f768e8422f6e1a2a4a1dd2a2638494127e61df814a4c104d" [label=""];
  "sha256:6db09b2e5f7c3200f768e8422f6e1a2a4a1dd2a2638494127e61df814a4c104d" -> "sha256:094c3b351cc35703fba0177fa89d0ea0fc71742f4c3448dd19e48c2035cc514b" [label=""];
}

