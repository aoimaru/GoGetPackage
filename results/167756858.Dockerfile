[app/sources/167756858.Dockerfile]
digraph {
  "sha256:eb9c4d52eb9cadcebec16ba6b6b3a0469b5a4ff428d9d5838f0d790ddaad25a0" [label="docker-image://docker.io/metabrainz/python:3.6-1" shape="ellipse"];
  "sha256:c65afc247c59808b8a5c900916a0c1bc604cc59db2f1b937306be50a0c188a32" [label="/bin/sh -c wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -" shape="box"];
  "sha256:d4e0333de990b1f521cfdc6bb68989722af785c4a2d06be4dea3f70db840600e" [label="/bin/sh -c echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list" shape="box"];
  "sha256:ed44bc28bcbf73cad173e7d796ed08e924feaa62c6ca4b912af5a128d98352ae" [label="/bin/sh -c apt-get update     && apt-get install -y postgresql-client-$PG_MAJOR     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6dba8f9cbf1db15d9eab49d2f7d746ceb1f0e460085fb2e66fcfd92fed252d6a" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:18827d6e1587de11929ba39211fe0341f1bf4d6b7cd5deca9950dd9642c8e4f1" [label="mkdir{path=/code}" shape="note"];
  "sha256:a4800b6e3bcb9a6c0255e7011ed55477d104fadebb8cc1c552ae575df884dcef" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_7.x | bash -" shape="box"];
  "sha256:2f582ab0e5abe0fa6133aaecdc58f463c64de216433b20914a333235f4214653" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:ed56e7444a33473aa889037b632e61bab4e68425bc516010be179933319136ea" [label="/bin/sh -c apt-get update      && apt-get install -y --no-install-recommends                         build-essential                         git                         libpq-dev                         libtiff5-dev                         libffi-dev                         libxml2-dev                         libxslt1-dev                         libssl-dev      && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0c10b149975ab8a45ab91a722ae69efde4d27ed477fd84a62bf3dc95c77394d6" [label="local://context" shape="ellipse"];
  "sha256:0669c45d05bda20c637df2dd576d241e1ac581856e314817443d55c30b17e92d" [label="copy{src=/requirements.txt, dest=/code/}" shape="note"];
  "sha256:e9facc9da89b2eb14b15c4aae879a4c35d35409f54c3462cbc846bbb8fb899ee" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:d824d8c0d9568b022bb178f9b9fd60540ec957d9ca73d0c340d81648263bed74" [label="copy{src=/, dest=/code/}" shape="note"];
  "sha256:3f0d19ba38ebccbbd61dad710812dca471c8cf610c2c697d5040ee936bd68cea" [label="sha256:3f0d19ba38ebccbbd61dad710812dca471c8cf610c2c697d5040ee936bd68cea" shape="plaintext"];
  "sha256:eb9c4d52eb9cadcebec16ba6b6b3a0469b5a4ff428d9d5838f0d790ddaad25a0" -> "sha256:c65afc247c59808b8a5c900916a0c1bc604cc59db2f1b937306be50a0c188a32" [label=""];
  "sha256:c65afc247c59808b8a5c900916a0c1bc604cc59db2f1b937306be50a0c188a32" -> "sha256:d4e0333de990b1f521cfdc6bb68989722af785c4a2d06be4dea3f70db840600e" [label=""];
  "sha256:d4e0333de990b1f521cfdc6bb68989722af785c4a2d06be4dea3f70db840600e" -> "sha256:ed44bc28bcbf73cad173e7d796ed08e924feaa62c6ca4b912af5a128d98352ae" [label=""];
  "sha256:ed44bc28bcbf73cad173e7d796ed08e924feaa62c6ca4b912af5a128d98352ae" -> "sha256:6dba8f9cbf1db15d9eab49d2f7d746ceb1f0e460085fb2e66fcfd92fed252d6a" [label=""];
  "sha256:6dba8f9cbf1db15d9eab49d2f7d746ceb1f0e460085fb2e66fcfd92fed252d6a" -> "sha256:18827d6e1587de11929ba39211fe0341f1bf4d6b7cd5deca9950dd9642c8e4f1" [label=""];
  "sha256:18827d6e1587de11929ba39211fe0341f1bf4d6b7cd5deca9950dd9642c8e4f1" -> "sha256:a4800b6e3bcb9a6c0255e7011ed55477d104fadebb8cc1c552ae575df884dcef" [label=""];
  "sha256:a4800b6e3bcb9a6c0255e7011ed55477d104fadebb8cc1c552ae575df884dcef" -> "sha256:2f582ab0e5abe0fa6133aaecdc58f463c64de216433b20914a333235f4214653" [label=""];
  "sha256:2f582ab0e5abe0fa6133aaecdc58f463c64de216433b20914a333235f4214653" -> "sha256:ed56e7444a33473aa889037b632e61bab4e68425bc516010be179933319136ea" [label=""];
  "sha256:ed56e7444a33473aa889037b632e61bab4e68425bc516010be179933319136ea" -> "sha256:0669c45d05bda20c637df2dd576d241e1ac581856e314817443d55c30b17e92d" [label=""];
  "sha256:0c10b149975ab8a45ab91a722ae69efde4d27ed477fd84a62bf3dc95c77394d6" -> "sha256:0669c45d05bda20c637df2dd576d241e1ac581856e314817443d55c30b17e92d" [label=""];
  "sha256:0669c45d05bda20c637df2dd576d241e1ac581856e314817443d55c30b17e92d" -> "sha256:e9facc9da89b2eb14b15c4aae879a4c35d35409f54c3462cbc846bbb8fb899ee" [label=""];
  "sha256:e9facc9da89b2eb14b15c4aae879a4c35d35409f54c3462cbc846bbb8fb899ee" -> "sha256:d824d8c0d9568b022bb178f9b9fd60540ec957d9ca73d0c340d81648263bed74" [label=""];
  "sha256:0c10b149975ab8a45ab91a722ae69efde4d27ed477fd84a62bf3dc95c77394d6" -> "sha256:d824d8c0d9568b022bb178f9b9fd60540ec957d9ca73d0c340d81648263bed74" [label=""];
  "sha256:d824d8c0d9568b022bb178f9b9fd60540ec957d9ca73d0c340d81648263bed74" -> "sha256:3f0d19ba38ebccbbd61dad710812dca471c8cf610c2c697d5040ee936bd68cea" [label=""];
}

