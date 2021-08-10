[app/sources/234463113.Dockerfile]
digraph {
  "sha256:c97e76f7c0eb24c2f93ccf66e48558fdb1bf9eb9de9ac7e9b50cb6bf33b7e38e" [label="docker-image://docker.io/idoall/ubuntu16.04-tengine2.2.0-php:7.1.9" shape="ellipse"];
  "sha256:ade7d2e625c7fd2eddcd2e7ea9660d47ebe01c10588c902b0dee8563c5857cf3" [label="/bin/sh -c mkdir -p /home/work/_app/php7.1.9/session \t&& chmod o=rwx -R /home/work/_app/php7.1.9/session" shape="box"];
  "sha256:20c92283b152efdfa5cb31c43e2bb62bb2d2ae0da521a147443a78b5cf9b5d14" [label="/bin/sh -c wget -O /home/work/_src/zenTaoPMS.zip http://dl.cnezsoft.com/zentao/10.5.1/ZenTaoPMS.$ZENTAO_VERSION.zip \t&& cd /home/work/_src \t&& unzip zenTaoPMS.zip \t&& mv zentaopms/* /home/work/_app/nginx/html" shape="box"];
  "sha256:59eb3e858f340e2c8db36d3bb2d68a4a5e71b9060ec2582758e7396ad328e1f3" [label="/bin/sh -c chmod 755 /hooks \t&& chown -R work:work /home/work/* \t&& apt-get -y clean   \t&& rm -rf /var/lib/apt/lists/*   \t&& rm -rf /var/cache/apt/archives/apt-fast/*   \t&& rm -rf /home/work/_src/*" shape="box"];
  "sha256:a114d6a4da493aef66a7a1bb066726fc8a22863776b1534361b40bf4644ceeaf" [label="sha256:a114d6a4da493aef66a7a1bb066726fc8a22863776b1534361b40bf4644ceeaf" shape="plaintext"];
  "sha256:c97e76f7c0eb24c2f93ccf66e48558fdb1bf9eb9de9ac7e9b50cb6bf33b7e38e" -> "sha256:ade7d2e625c7fd2eddcd2e7ea9660d47ebe01c10588c902b0dee8563c5857cf3" [label=""];
  "sha256:ade7d2e625c7fd2eddcd2e7ea9660d47ebe01c10588c902b0dee8563c5857cf3" -> "sha256:20c92283b152efdfa5cb31c43e2bb62bb2d2ae0da521a147443a78b5cf9b5d14" [label=""];
  "sha256:20c92283b152efdfa5cb31c43e2bb62bb2d2ae0da521a147443a78b5cf9b5d14" -> "sha256:59eb3e858f340e2c8db36d3bb2d68a4a5e71b9060ec2582758e7396ad328e1f3" [label=""];
  "sha256:59eb3e858f340e2c8db36d3bb2d68a4a5e71b9060ec2582758e7396ad328e1f3" -> "sha256:a114d6a4da493aef66a7a1bb066726fc8a22863776b1534361b40bf4644ceeaf" [label=""];
}

