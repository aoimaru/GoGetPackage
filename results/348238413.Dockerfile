[app/sources/348238413.Dockerfile]
digraph {
  "sha256:0d603aee50f896adc4ab0c50dd65bff57e061b7fa72d4572c9024aee77fdff29" [label="docker-image://docker.io/geodata/gdal:latest" shape="ellipse"];
  "sha256:4e9b94f001c7e106cb93eb46c858433958b8ea13e9a67fdd7f1b0cdf4737b0a6" [label="/bin/sh -c apt-get install -y curl" shape="box"];
  "sha256:8d39c7bff3ced2ec5f89e749bbea76641b65178cd0e17d842a8fd17a16113a92" [label="/bin/sh -c sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10" shape="box"];
  "sha256:5525403b60517ee49a978696ffa662d45c2bc51035ee2ccc6075d761162a0094" [label="/bin/sh -c echo \"deb http://repo.mongodb.org/apt/ubuntu \"$(lsb_release -sc)\"/mongodb-org/3.0 multiverse\" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list" shape="box"];
  "sha256:b28c4bf80e9b5940f7e2a97eb0e55a13b6dcca09b621e7f94a1f22625c63c832" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -" shape="box"];
  "sha256:b737e47d9d56621f7008e448bdc0d56a2b95de97121bd857c6b454845e1a299f" [label="/bin/sh -c apt-get install -y   make   gcc   g++   curl   git   unzip   zlib1g-dev   nodejs   mongodb-org-shell   mongodb-org-tools" shape="box"];
  "sha256:699baa3edd692f6237f1cd44ebb1eb45bc60cb584e5a2cb35cb7faa782234630" [label="mkdir{path=/data}" shape="note"];
  "sha256:ad9922711a3898c79de447354deec1d0ee4d9df58f358bb20d148b4373161080" [label="local://context" shape="ellipse"];
  "sha256:2ea5543a0b9820d7568b9e163db2786f63e44c349f391d466724d69b402e5cd0" [label="copy{src=/package.json, dest=/data/}" shape="note"];
  "sha256:1eecc58c062246a1cdd3c44b5a26f45d64c1d1c78012c3ac64eae22d6a4d06bf" [label="/bin/sh -c npm install" shape="box"];
  "sha256:f973514ac6e1469b6759df0fe278bccc04f3685710e66adafa89cf3a5d20fb61" [label="copy{src=/, dest=/data/}" shape="note"];
  "sha256:43f2998883b13cf1e5ddb86483e049f5652c576cdd6b92b946ebb7972d60ef3a" [label="sha256:43f2998883b13cf1e5ddb86483e049f5652c576cdd6b92b946ebb7972d60ef3a" shape="plaintext"];
  "sha256:0d603aee50f896adc4ab0c50dd65bff57e061b7fa72d4572c9024aee77fdff29" -> "sha256:4e9b94f001c7e106cb93eb46c858433958b8ea13e9a67fdd7f1b0cdf4737b0a6" [label=""];
  "sha256:4e9b94f001c7e106cb93eb46c858433958b8ea13e9a67fdd7f1b0cdf4737b0a6" -> "sha256:8d39c7bff3ced2ec5f89e749bbea76641b65178cd0e17d842a8fd17a16113a92" [label=""];
  "sha256:8d39c7bff3ced2ec5f89e749bbea76641b65178cd0e17d842a8fd17a16113a92" -> "sha256:5525403b60517ee49a978696ffa662d45c2bc51035ee2ccc6075d761162a0094" [label=""];
  "sha256:5525403b60517ee49a978696ffa662d45c2bc51035ee2ccc6075d761162a0094" -> "sha256:b28c4bf80e9b5940f7e2a97eb0e55a13b6dcca09b621e7f94a1f22625c63c832" [label=""];
  "sha256:b28c4bf80e9b5940f7e2a97eb0e55a13b6dcca09b621e7f94a1f22625c63c832" -> "sha256:b737e47d9d56621f7008e448bdc0d56a2b95de97121bd857c6b454845e1a299f" [label=""];
  "sha256:b737e47d9d56621f7008e448bdc0d56a2b95de97121bd857c6b454845e1a299f" -> "sha256:699baa3edd692f6237f1cd44ebb1eb45bc60cb584e5a2cb35cb7faa782234630" [label=""];
  "sha256:699baa3edd692f6237f1cd44ebb1eb45bc60cb584e5a2cb35cb7faa782234630" -> "sha256:2ea5543a0b9820d7568b9e163db2786f63e44c349f391d466724d69b402e5cd0" [label=""];
  "sha256:ad9922711a3898c79de447354deec1d0ee4d9df58f358bb20d148b4373161080" -> "sha256:2ea5543a0b9820d7568b9e163db2786f63e44c349f391d466724d69b402e5cd0" [label=""];
  "sha256:2ea5543a0b9820d7568b9e163db2786f63e44c349f391d466724d69b402e5cd0" -> "sha256:1eecc58c062246a1cdd3c44b5a26f45d64c1d1c78012c3ac64eae22d6a4d06bf" [label=""];
  "sha256:1eecc58c062246a1cdd3c44b5a26f45d64c1d1c78012c3ac64eae22d6a4d06bf" -> "sha256:f973514ac6e1469b6759df0fe278bccc04f3685710e66adafa89cf3a5d20fb61" [label=""];
  "sha256:ad9922711a3898c79de447354deec1d0ee4d9df58f358bb20d148b4373161080" -> "sha256:f973514ac6e1469b6759df0fe278bccc04f3685710e66adafa89cf3a5d20fb61" [label=""];
  "sha256:f973514ac6e1469b6759df0fe278bccc04f3685710e66adafa89cf3a5d20fb61" -> "sha256:43f2998883b13cf1e5ddb86483e049f5652c576cdd6b92b946ebb7972d60ef3a" [label=""];
}

