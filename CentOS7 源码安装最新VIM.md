# CentOS7 源码安装最新VIM



### 1. 安装依赖

```shell
[root@localhost ~]# yum -y install git ncurses-devel ruby ruby-devel lua lua-devel perl perl-devel python3 python3-devel python2-devel perl-ExtUtils-Embed lrzsz cmake wget gcc gcc-c++ unzip
```

### 2. 下载VIM源码

```shell
[root@localhost ~]# git clone https://github.com/vim/vim
```

### 3. 编译安装

```shell
[root@localhost ~]# cd vim-master/
[root@localhost vim-master]# ./configure --with-features=huge \
            --enable-rubyinterp=yes \
            --enable-luainterp=yes \
            --enable-perlinterp=yes \
            --enable-python3interp=yes \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/usr/lib64/python2.7/config \
            --with-python3-config-dir=/usr/lib64/python3.6/config-3.6m-x86_64-linux-gnu \
            --enable-fontset=yes \
            --enable-cscope=yes \
            --enable-multibyte \
            --disable-gui \
            --enable-fail-if-missing \
            --prefix=/usr/local \
            --with-compiledby='Professional operations'
[root@localhost vim-master]# make VIMRUNTIMEDIR=/usr/local/share/vim/vim82 && make install
```

原文链接：[https://github.com/DolphZiggler/blogs.git](https://www.linuxprobe.com/centos7-install-vim8.html)

