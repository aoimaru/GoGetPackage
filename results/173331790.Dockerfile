[app/sources/173331790.Dockerfile]
digraph {
  "sha256:082aaa850a55bda5bf9d7ecdbf6bd4591ed314bc76e426fa0e605d2c321141b4" [label="docker-image://docker.io/dockerfile/nodejs:latest" shape="ellipse"];
  "sha256:a3d05c5258439d6e045317d8d13db27461a4889eef17730588dedd048c652d52" [label="/bin/sh -c mkdir -p /data/db" shape="box"];
  "sha256:182bd75dc5fff4e372ff94112d7e0e52f5d9bc151c8626980ee15fb45f3436b8" [label="/bin/sh -c mkdir -p /data/server_logs" shape="box"];
  "sha256:d01947ae3cf52eaf6ad8379a4d6501c2580427d79ee5ffcbb03b1b14926b6e2d" [label="local://context" shape="ellipse"];
  "sha256:bdb728a48d2e8130efe516f1735847ae36acf6a5821e2111ef9f037b6704e59c" [label="copy{src=/rabbitmq-signing-key-public.asc, dest=/tmp/rabbitmq-signing-key-public.asc}" shape="note"];
  "sha256:561a858bd78093400e7366cf5c0c25e1a060bc867c651974b0ffb09d6b93c9ed" [label="/bin/sh -c apt-key add /tmp/rabbitmq-signing-key-public.asc" shape="box"];
  "sha256:a484b32f86eab963f505765474946ae0950c75d2394d93e63d76179ed5bdd1a8" [label="/bin/sh -c echo \"deb http://www.rabbitmq.com/debian/ testing main\" > /etc/apt/sources.list.d/rabbitmq.list" shape="box"];
  "sha256:ba249a2349cca6d6451a21673b3289d5f455ca54523a20a7c00e9c2211ea280b" [label="/bin/sh -c apt-get -qq update > /dev/null" shape="box"];
  "sha256:0dd3af22000bd66d401f19185171cdbf0fc885c6abb56b2604741bbc7d366725" [label="/bin/sh -c apt-get -qq -y install rabbitmq-server > /dev/null" shape="box"];
  "sha256:e2ec71f623b8e86f3aa44cad041e134c517fb5fef08ab95557cd28f0f43efa21" [label="/bin/sh -c /usr/sbin/rabbitmq-plugins enable rabbitmq_management" shape="box"];
  "sha256:5c5cd2b4173257944ded223477343653c7b403aa56f87271f768497b42a78ea6" [label="/bin/sh -c echo \"[{rabbit, [{loopback_users, []}]}].\" > /etc/rabbitmq/rabbitmq.config" shape="box"];
  "sha256:7c4727e6da9924a5e1a486c1d351caf11c112243a11040b08cce4d289e6fe273" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10" shape="box"];
  "sha256:66e165068a5e65914a6d9e12808f09d1ab27dac8e5bf8c618bf67d1adc03a204" [label="/bin/sh -c echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/10gen.list" shape="box"];
  "sha256:fbb797c23d0490d45a90c0d35c42fff6b4487d53f785ad07d0717e18bf7c9aa5" [label="/bin/sh -c apt-get update && apt-get install -y mongodb-org" shape="box"];
  "sha256:b24b49698b3bf256819c9ea1d93914b35fd479cdf74110825d423681bcc8145d" [label="mkdir{path=/root}" shape="note"];
  "sha256:ee4fd17e0d2d0c17706a72ac9efe709805c73fafeafdd69be2ad852c04dd6c21" [label="/bin/sh -c npm install -g supervisor" shape="box"];
  "sha256:4d72b64d8c48cd34df3c4c7788ae112f36fde9e80fdfd3635abf335347adcc3d" [label="/bin/sh -c apt-get install git" shape="box"];
  "sha256:de46108bbb69eebf246eca8adfaf026fbe836001ea195ace56f10fb496f807db" [label="mkdir{path=/usr/local/lib/node_modules}" shape="note"];
  "sha256:f4632fbc00fdf4e0a30d8ec74ebc7ff839f2058325e9352900f18e24f71f5b52" [label="/bin/sh -c git clone https://github.com/bipio-server/bipio.git" shape="box"];
  "sha256:831538a7ba05682361cf7fd20fb80579512d70df3508c95f45ea3e8b110fb238" [label="mkdir{path=/usr/local/lib/node_modules/bipio}" shape="note"];
  "sha256:502a9575458b2fd9b761a0eb0246ed6fa38c22f19a84c1982e66bca81916c8eb" [label="/bin/sh -c npm install" shape="box"];
  "sha256:3ba8be91adc5b41f484a435e3e581d686af9847a72c48d1d6269c5c67b304cae" [label="/bin/sh -c mv /etc/localtime /etc/localtime.bak" shape="box"];
  "sha256:33c2893166846fe647d52cd40ef6b3f3b068a18085260d089656dff4027fd173" [label="/bin/sh -c ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime" shape="box"];
  "sha256:19bf48c13bf9d68febbf84c7790588fd7082b52dda1fb5436b50df88a28afb28" [label="copy{src=/bootstrap.sh, dest=/root/bootstrap.sh}" shape="note"];
  "sha256:8d3c957fce460fe809c1cebdd0fec7b091fdc01e692af0e2f0522cbfab15188f" [label="/bin/sh -c chmod 755 /root/*.sh" shape="box"];
  "sha256:0e1c95fde53da5d23bc435aa34108641e6ec1748cf9f9ceb4c4dd21d7966714a" [label="sha256:0e1c95fde53da5d23bc435aa34108641e6ec1748cf9f9ceb4c4dd21d7966714a" shape="plaintext"];
  "sha256:082aaa850a55bda5bf9d7ecdbf6bd4591ed314bc76e426fa0e605d2c321141b4" -> "sha256:a3d05c5258439d6e045317d8d13db27461a4889eef17730588dedd048c652d52" [label=""];
  "sha256:a3d05c5258439d6e045317d8d13db27461a4889eef17730588dedd048c652d52" -> "sha256:182bd75dc5fff4e372ff94112d7e0e52f5d9bc151c8626980ee15fb45f3436b8" [label=""];
  "sha256:182bd75dc5fff4e372ff94112d7e0e52f5d9bc151c8626980ee15fb45f3436b8" -> "sha256:bdb728a48d2e8130efe516f1735847ae36acf6a5821e2111ef9f037b6704e59c" [label=""];
  "sha256:d01947ae3cf52eaf6ad8379a4d6501c2580427d79ee5ffcbb03b1b14926b6e2d" -> "sha256:bdb728a48d2e8130efe516f1735847ae36acf6a5821e2111ef9f037b6704e59c" [label=""];
  "sha256:bdb728a48d2e8130efe516f1735847ae36acf6a5821e2111ef9f037b6704e59c" -> "sha256:561a858bd78093400e7366cf5c0c25e1a060bc867c651974b0ffb09d6b93c9ed" [label=""];
  "sha256:561a858bd78093400e7366cf5c0c25e1a060bc867c651974b0ffb09d6b93c9ed" -> "sha256:a484b32f86eab963f505765474946ae0950c75d2394d93e63d76179ed5bdd1a8" [label=""];
  "sha256:a484b32f86eab963f505765474946ae0950c75d2394d93e63d76179ed5bdd1a8" -> "sha256:ba249a2349cca6d6451a21673b3289d5f455ca54523a20a7c00e9c2211ea280b" [label=""];
  "sha256:ba249a2349cca6d6451a21673b3289d5f455ca54523a20a7c00e9c2211ea280b" -> "sha256:0dd3af22000bd66d401f19185171cdbf0fc885c6abb56b2604741bbc7d366725" [label=""];
  "sha256:0dd3af22000bd66d401f19185171cdbf0fc885c6abb56b2604741bbc7d366725" -> "sha256:e2ec71f623b8e86f3aa44cad041e134c517fb5fef08ab95557cd28f0f43efa21" [label=""];
  "sha256:e2ec71f623b8e86f3aa44cad041e134c517fb5fef08ab95557cd28f0f43efa21" -> "sha256:5c5cd2b4173257944ded223477343653c7b403aa56f87271f768497b42a78ea6" [label=""];
  "sha256:5c5cd2b4173257944ded223477343653c7b403aa56f87271f768497b42a78ea6" -> "sha256:7c4727e6da9924a5e1a486c1d351caf11c112243a11040b08cce4d289e6fe273" [label=""];
  "sha256:7c4727e6da9924a5e1a486c1d351caf11c112243a11040b08cce4d289e6fe273" -> "sha256:66e165068a5e65914a6d9e12808f09d1ab27dac8e5bf8c618bf67d1adc03a204" [label=""];
  "sha256:66e165068a5e65914a6d9e12808f09d1ab27dac8e5bf8c618bf67d1adc03a204" -> "sha256:fbb797c23d0490d45a90c0d35c42fff6b4487d53f785ad07d0717e18bf7c9aa5" [label=""];
  "sha256:fbb797c23d0490d45a90c0d35c42fff6b4487d53f785ad07d0717e18bf7c9aa5" -> "sha256:b24b49698b3bf256819c9ea1d93914b35fd479cdf74110825d423681bcc8145d" [label=""];
  "sha256:b24b49698b3bf256819c9ea1d93914b35fd479cdf74110825d423681bcc8145d" -> "sha256:ee4fd17e0d2d0c17706a72ac9efe709805c73fafeafdd69be2ad852c04dd6c21" [label=""];
  "sha256:ee4fd17e0d2d0c17706a72ac9efe709805c73fafeafdd69be2ad852c04dd6c21" -> "sha256:4d72b64d8c48cd34df3c4c7788ae112f36fde9e80fdfd3635abf335347adcc3d" [label=""];
  "sha256:4d72b64d8c48cd34df3c4c7788ae112f36fde9e80fdfd3635abf335347adcc3d" -> "sha256:de46108bbb69eebf246eca8adfaf026fbe836001ea195ace56f10fb496f807db" [label=""];
  "sha256:de46108bbb69eebf246eca8adfaf026fbe836001ea195ace56f10fb496f807db" -> "sha256:f4632fbc00fdf4e0a30d8ec74ebc7ff839f2058325e9352900f18e24f71f5b52" [label=""];
  "sha256:f4632fbc00fdf4e0a30d8ec74ebc7ff839f2058325e9352900f18e24f71f5b52" -> "sha256:831538a7ba05682361cf7fd20fb80579512d70df3508c95f45ea3e8b110fb238" [label=""];
  "sha256:831538a7ba05682361cf7fd20fb80579512d70df3508c95f45ea3e8b110fb238" -> "sha256:502a9575458b2fd9b761a0eb0246ed6fa38c22f19a84c1982e66bca81916c8eb" [label=""];
  "sha256:502a9575458b2fd9b761a0eb0246ed6fa38c22f19a84c1982e66bca81916c8eb" -> "sha256:3ba8be91adc5b41f484a435e3e581d686af9847a72c48d1d6269c5c67b304cae" [label=""];
  "sha256:3ba8be91adc5b41f484a435e3e581d686af9847a72c48d1d6269c5c67b304cae" -> "sha256:33c2893166846fe647d52cd40ef6b3f3b068a18085260d089656dff4027fd173" [label=""];
  "sha256:33c2893166846fe647d52cd40ef6b3f3b068a18085260d089656dff4027fd173" -> "sha256:19bf48c13bf9d68febbf84c7790588fd7082b52dda1fb5436b50df88a28afb28" [label=""];
  "sha256:d01947ae3cf52eaf6ad8379a4d6501c2580427d79ee5ffcbb03b1b14926b6e2d" -> "sha256:19bf48c13bf9d68febbf84c7790588fd7082b52dda1fb5436b50df88a28afb28" [label=""];
  "sha256:19bf48c13bf9d68febbf84c7790588fd7082b52dda1fb5436b50df88a28afb28" -> "sha256:8d3c957fce460fe809c1cebdd0fec7b091fdc01e692af0e2f0522cbfab15188f" [label=""];
  "sha256:8d3c957fce460fe809c1cebdd0fec7b091fdc01e692af0e2f0522cbfab15188f" -> "sha256:0e1c95fde53da5d23bc435aa34108641e6ec1748cf9f9ceb4c4dd21d7966714a" [label=""];
}

