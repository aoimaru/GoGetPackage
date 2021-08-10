[app/sources/234462923.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:9fb1bf8796447a0f460cd641e95c7c94bf1f4932c4344cf1a6ff6b2858e8c26e" [label="local://context" shape="ellipse"];
  "sha256:ad36132b86a78dd3c50369811efb6b0c43ef34c8ca63d83266566efe42822ad1" [label="copy{src=/files, dest=/}" shape="note"];
  "sha256:43d0bc833a76fd5551a05eea511d0bf2cdcc89a4035ee049ccecd187767db2cf" [label="/bin/sh -c apt-get update -y \t&& apt-get -y upgrade \t&& apt-get -o Dpkg::Options::=--force-confdef -y install software-properties-common \t&& add-apt-repository ppa:apt-fast/stable \t&& apt-get update -y \t&& apt-get -y install apt-fast axel" shape="box"];
  "sha256:30c78cb0c84f5212b4aa3d846bc0a3e5286c8ac1ded1f4ce6ece9ec4b9cdeecb" [label="/bin/sh -c apt-fast -o Dpkg::Options::=--force-confdef -y install curl netcat wget telnet vim bzip2 ssmtp locales python-pip  bash-completion net-tools iputils-ping \t&& locale-gen en_US.utf8 \t&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \t&& chmod -R 777 /var/run /var/log /etc/passwd /etc/group \t&& pip --no-cache install --upgrade pip" shape="box"];
  "sha256:620d933b9cb44912bc071b57495d93b9d8019169aad0ab1a7c05bce3d93cd757" [label="/bin/sh -c apt-fast install -y tzdata \t&& ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \t&& echo \"Asia/Shanghai\" > /etc/timezone \t&& dpkg-reconfigure -f noninteractive tzdata" shape="box"];
  "sha256:925dd7530b1bbd9ff945b0e25233b27f89bcbd8674b7cf2fecc76b38f3c5b289" [label="/bin/sh -c useradd -r -m work     && echo \"work:123456\" | chpasswd     && echo \"root:123456\" | chpasswd" shape="box"];
  "sha256:7a9b97602097af41772bfc08d964389280c122745f342b585fcef8ecb1d0e4ad" [label="/bin/sh -c apt-fast install -y supervisor \t&& mkdir -p /home/work/_app/supervisord/conf.d/ /home/work/_logs/supervisord/ \t&& echo_supervisord_conf > /home/work/_app/supervisord/supervisord.ini \t&& echo \"[include]\" >> /home/work/_app/supervisord/supervisord.ini     && echo \"files = /home/work/_app/supervisord/conf.d/*.ini\" >> /home/work/_app/supervisord/supervisord.ini     && sed -i \"s/\\/tmp\\/supervisord.pid/\\/var\\/run\\/supervisord.pid/\" /home/work/_app/supervisord/supervisord.ini     && sed -i \"s/logfile=\\/tmp\\/supervisord.log/logfile=\\/home\\/work\\/_logs\\/supervisord\\/supervisord.log/\" /home/work/_app/supervisord/supervisord.ini     && sed -i \"s/\\/etc\\/supervisor\\/supervisord.conf/\\/home\\/work\\/_app\\/supervisord\\/supervisord.ini/\" /etc/init.d/supervisor" shape="box"];
  "sha256:e6b8066c69b3099cde8bbf18f0ac79ac07d61509bd20c5bdbbcd7092bfcab358" [label="/bin/sh -c chmod 755 /hooks \t&& chown -R work:work /home/work/* \t&& apt-get -y clean   \t&& rm -rf /var/lib/apt/lists/*   \t&& rm -rf /var/cache/apt/archives/apt-fast/*   \t&& rm -rf /home/work/_src/*" shape="box"];
  "sha256:b4b10946d0968e692e0a35dae2dce0c4afc17ff3d0602c53e12ec12c10d4d4c2" [label="mkdir{path=/home/work}" shape="note"];
  "sha256:ab4c1311158f298ee8ef52902ae8cf56a42e24c501b89a61f53cad483c8c4764" [label="sha256:ab4c1311158f298ee8ef52902ae8cf56a42e24c501b89a61f53cad483c8c4764" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:ad36132b86a78dd3c50369811efb6b0c43ef34c8ca63d83266566efe42822ad1" [label=""];
  "sha256:9fb1bf8796447a0f460cd641e95c7c94bf1f4932c4344cf1a6ff6b2858e8c26e" -> "sha256:ad36132b86a78dd3c50369811efb6b0c43ef34c8ca63d83266566efe42822ad1" [label=""];
  "sha256:ad36132b86a78dd3c50369811efb6b0c43ef34c8ca63d83266566efe42822ad1" -> "sha256:43d0bc833a76fd5551a05eea511d0bf2cdcc89a4035ee049ccecd187767db2cf" [label=""];
  "sha256:43d0bc833a76fd5551a05eea511d0bf2cdcc89a4035ee049ccecd187767db2cf" -> "sha256:30c78cb0c84f5212b4aa3d846bc0a3e5286c8ac1ded1f4ce6ece9ec4b9cdeecb" [label=""];
  "sha256:30c78cb0c84f5212b4aa3d846bc0a3e5286c8ac1ded1f4ce6ece9ec4b9cdeecb" -> "sha256:620d933b9cb44912bc071b57495d93b9d8019169aad0ab1a7c05bce3d93cd757" [label=""];
  "sha256:620d933b9cb44912bc071b57495d93b9d8019169aad0ab1a7c05bce3d93cd757" -> "sha256:925dd7530b1bbd9ff945b0e25233b27f89bcbd8674b7cf2fecc76b38f3c5b289" [label=""];
  "sha256:925dd7530b1bbd9ff945b0e25233b27f89bcbd8674b7cf2fecc76b38f3c5b289" -> "sha256:7a9b97602097af41772bfc08d964389280c122745f342b585fcef8ecb1d0e4ad" [label=""];
  "sha256:7a9b97602097af41772bfc08d964389280c122745f342b585fcef8ecb1d0e4ad" -> "sha256:e6b8066c69b3099cde8bbf18f0ac79ac07d61509bd20c5bdbbcd7092bfcab358" [label=""];
  "sha256:e6b8066c69b3099cde8bbf18f0ac79ac07d61509bd20c5bdbbcd7092bfcab358" -> "sha256:b4b10946d0968e692e0a35dae2dce0c4afc17ff3d0602c53e12ec12c10d4d4c2" [label=""];
  "sha256:b4b10946d0968e692e0a35dae2dce0c4afc17ff3d0602c53e12ec12c10d4d4c2" -> "sha256:ab4c1311158f298ee8ef52902ae8cf56a42e24c501b89a61f53cad483c8c4764" [label=""];
}

