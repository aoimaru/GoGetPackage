[app/sources/308815192.Dockerfile]
digraph {
  "sha256:18b7c50c07b62f292e1c29cf85f373fe6f11defaeae25a7081b7c46e5cea2cdc" [label="local://context" shape="ellipse"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:495f0f04a859f51fe44bb6c5abdcb521d92df25b5d8319bf59ba4f31d047a030" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:6402cc3b30601bba0fac0d08fb87d9eb037e96e3904d442b99dff77de2fe7da0" [label="mkdir{path=/code}" shape="note"];
  "sha256:ba0c2304716e6b6a6825512c96fcc397a216df2419a74a6be4398c1cbf33d82b" [label="copy{src=/requirements.txt, dest=/code/}" shape="note"];
  "sha256:383c839894bad7b5654691a2706540524e439b904f669ac303bb317ec7fee051" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:8162ed2b3fa126bb4f730845bf05cfda543723e3219b0dbe33c243a1c114bbc2" [label="copy{src=/, dest=/code/}" shape="note"];
  "sha256:9b75fad4268d9437e2cd0b02dc4e65195f96faefcd8438743842c6815b768d82" [label="sha256:9b75fad4268d9437e2cd0b02dc4e65195f96faefcd8438743842c6815b768d82" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:495f0f04a859f51fe44bb6c5abdcb521d92df25b5d8319bf59ba4f31d047a030" [label=""];
  "sha256:495f0f04a859f51fe44bb6c5abdcb521d92df25b5d8319bf59ba4f31d047a030" -> "sha256:6402cc3b30601bba0fac0d08fb87d9eb037e96e3904d442b99dff77de2fe7da0" [label=""];
  "sha256:6402cc3b30601bba0fac0d08fb87d9eb037e96e3904d442b99dff77de2fe7da0" -> "sha256:ba0c2304716e6b6a6825512c96fcc397a216df2419a74a6be4398c1cbf33d82b" [label=""];
  "sha256:18b7c50c07b62f292e1c29cf85f373fe6f11defaeae25a7081b7c46e5cea2cdc" -> "sha256:ba0c2304716e6b6a6825512c96fcc397a216df2419a74a6be4398c1cbf33d82b" [label=""];
  "sha256:ba0c2304716e6b6a6825512c96fcc397a216df2419a74a6be4398c1cbf33d82b" -> "sha256:383c839894bad7b5654691a2706540524e439b904f669ac303bb317ec7fee051" [label=""];
  "sha256:383c839894bad7b5654691a2706540524e439b904f669ac303bb317ec7fee051" -> "sha256:8162ed2b3fa126bb4f730845bf05cfda543723e3219b0dbe33c243a1c114bbc2" [label=""];
  "sha256:18b7c50c07b62f292e1c29cf85f373fe6f11defaeae25a7081b7c46e5cea2cdc" -> "sha256:8162ed2b3fa126bb4f730845bf05cfda543723e3219b0dbe33c243a1c114bbc2" [label=""];
  "sha256:8162ed2b3fa126bb4f730845bf05cfda543723e3219b0dbe33c243a1c114bbc2" -> "sha256:9b75fad4268d9437e2cd0b02dc4e65195f96faefcd8438743842c6815b768d82" [label=""];
}

