[app/sources/232760174.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:9046e1fd470ac4a4d8d14517e54afb31dcebf7dc1a69c3eb8d064bf5c9974a7b" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:a77bc41acfb36162450a72fa3805cce4c3548af34b1cbf42b051236667c5f2d3" [label="/bin/sh -c apt-get install -y swig libssl-dev dpkg-dev netcat" shape="box"];
  "sha256:7d70f634cd64bf4c95a8404d9a8cc2a82cf4b79baea0cd1950d05c1251a4dbb6" [label="/bin/sh -c pip install -U pip pipenv" shape="box"];
  "sha256:89b6f3dbf5708c140698222dfed423bea66875c2436875375f4dac90ce7abe52" [label="local://context" shape="ellipse"];
  "sha256:30bc1fa226f857de369d7978b032cd3fe12365b74e70031a228f0421d4ad9b0e" [label="copy{src=/Pipfile*, dest=/code/}" shape="note"];
  "sha256:d589cd27981064f02dbc8420e2feb32a9a54ebf41580dde97263c764e7a224ee" [label="mkdir{path=/code}" shape="note"];
  "sha256:0141280cf29be172bfb272184da5b9d0f0eb97780e0f7e69b43a7c3db227c93f" [label="/bin/sh -c pipenv install --system" shape="box"];
  "sha256:3e2364f61bb4b1bcf09646ffc25b7494e3b0ff183604d8f198d261aa709a0813" [label="copy{src=/misc/dokku/CHECKS, dest=/app/}" shape="note"];
  "sha256:b42e8f4fa05b3cf833ab48ed23d416a1819ffba220d3cd865a99b9d89a77d2e1" [label="copy{src=/misc/dokku/*, dest=/code/}" shape="note"];
  "sha256:71be793945b35c9b22ff4db53c625ea21045f2f4124658389b581b1342b18ac3" [label="mkdir{path=/code}" shape="note"];
  "sha256:f587bbe444aa97078c2c15e94cbfb005b7a194d21a848db0462d80a4c065fee0" [label="copy{src=/, dest=/code/}" shape="note"];
  "sha256:d313e449a53b6efe338d1d18bbbb18c9b1a368a3315a041de074aa545b7b8e42" [label="/bin/sh -c /code/manage.py collectstatic --noinput" shape="box"];
  "sha256:3608406d42e6a34470156e31dfbf5f8d27069506d14436cd6875d4c0427a10df" [label="sha256:3608406d42e6a34470156e31dfbf5f8d27069506d14436cd6875d4c0427a10df" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:9046e1fd470ac4a4d8d14517e54afb31dcebf7dc1a69c3eb8d064bf5c9974a7b" [label=""];
  "sha256:9046e1fd470ac4a4d8d14517e54afb31dcebf7dc1a69c3eb8d064bf5c9974a7b" -> "sha256:a77bc41acfb36162450a72fa3805cce4c3548af34b1cbf42b051236667c5f2d3" [label=""];
  "sha256:a77bc41acfb36162450a72fa3805cce4c3548af34b1cbf42b051236667c5f2d3" -> "sha256:7d70f634cd64bf4c95a8404d9a8cc2a82cf4b79baea0cd1950d05c1251a4dbb6" [label=""];
  "sha256:7d70f634cd64bf4c95a8404d9a8cc2a82cf4b79baea0cd1950d05c1251a4dbb6" -> "sha256:30bc1fa226f857de369d7978b032cd3fe12365b74e70031a228f0421d4ad9b0e" [label=""];
  "sha256:89b6f3dbf5708c140698222dfed423bea66875c2436875375f4dac90ce7abe52" -> "sha256:30bc1fa226f857de369d7978b032cd3fe12365b74e70031a228f0421d4ad9b0e" [label=""];
  "sha256:30bc1fa226f857de369d7978b032cd3fe12365b74e70031a228f0421d4ad9b0e" -> "sha256:d589cd27981064f02dbc8420e2feb32a9a54ebf41580dde97263c764e7a224ee" [label=""];
  "sha256:d589cd27981064f02dbc8420e2feb32a9a54ebf41580dde97263c764e7a224ee" -> "sha256:0141280cf29be172bfb272184da5b9d0f0eb97780e0f7e69b43a7c3db227c93f" [label=""];
  "sha256:0141280cf29be172bfb272184da5b9d0f0eb97780e0f7e69b43a7c3db227c93f" -> "sha256:3e2364f61bb4b1bcf09646ffc25b7494e3b0ff183604d8f198d261aa709a0813" [label=""];
  "sha256:89b6f3dbf5708c140698222dfed423bea66875c2436875375f4dac90ce7abe52" -> "sha256:3e2364f61bb4b1bcf09646ffc25b7494e3b0ff183604d8f198d261aa709a0813" [label=""];
  "sha256:3e2364f61bb4b1bcf09646ffc25b7494e3b0ff183604d8f198d261aa709a0813" -> "sha256:b42e8f4fa05b3cf833ab48ed23d416a1819ffba220d3cd865a99b9d89a77d2e1" [label=""];
  "sha256:89b6f3dbf5708c140698222dfed423bea66875c2436875375f4dac90ce7abe52" -> "sha256:b42e8f4fa05b3cf833ab48ed23d416a1819ffba220d3cd865a99b9d89a77d2e1" [label=""];
  "sha256:b42e8f4fa05b3cf833ab48ed23d416a1819ffba220d3cd865a99b9d89a77d2e1" -> "sha256:71be793945b35c9b22ff4db53c625ea21045f2f4124658389b581b1342b18ac3" [label=""];
  "sha256:71be793945b35c9b22ff4db53c625ea21045f2f4124658389b581b1342b18ac3" -> "sha256:f587bbe444aa97078c2c15e94cbfb005b7a194d21a848db0462d80a4c065fee0" [label=""];
  "sha256:89b6f3dbf5708c140698222dfed423bea66875c2436875375f4dac90ce7abe52" -> "sha256:f587bbe444aa97078c2c15e94cbfb005b7a194d21a848db0462d80a4c065fee0" [label=""];
  "sha256:f587bbe444aa97078c2c15e94cbfb005b7a194d21a848db0462d80a4c065fee0" -> "sha256:d313e449a53b6efe338d1d18bbbb18c9b1a368a3315a041de074aa545b7b8e42" [label=""];
  "sha256:d313e449a53b6efe338d1d18bbbb18c9b1a368a3315a041de074aa545b7b8e42" -> "sha256:3608406d42e6a34470156e31dfbf5f8d27069506d14436cd6875d4c0427a10df" [label=""];
}

