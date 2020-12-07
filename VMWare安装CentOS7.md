# VMWare安装CentOS7



## 1. VMware配置

### 1.1 网络配置

1. 编辑>首选项>虚拟网络编辑器
2.  更改设置
3. 选中VMnet8 NAT模式
4. 设置子网IP 如：10.0.0.0
5. 点击NAT设置，设置网关如：10.0.0.2
6. 确定

### 1.2 其他配置

编辑>首选项> 工作区> 虚拟机默认位置

## 2.安装CentOS7

1. 新建虚拟机

2. 自定义安装，一路next

3. 启动虚拟机

   1. 启动页面，光标妨碍InstallCentOS
   2. 按下Tab  底部出现字符，输入  net.ifnames=0  biosdevname=0  空格 回车
   3. 安装摘要页面，进入InstallDestination选项
      1. 更改成I will configure partitioning，DONE
      2. 下拉成Standard Partition
      3. 新增partition ：1） /boot 2048M   2）/swap 5162M 3）/
      4. 开始安装

   ## 2.1配置网络

   启动后默认是动态IP的，而且默认不启动，需要自己手动绑定IP

   输入`ip a` 显示`eth0`没有ip。

   查看网络状态：`systemctl status network` 显示是开启状态

   修改配置

   ```shell
   vi /etc/sysconfig/network-scripts/ifcfg-eth0
   
   # 修改选项
   ONBOOT: no=>yes
   BOOOTPROTO: dhco=>none
   UUID删掉
   
   # 新加选项
   IPADDR=10.0.0.81
   NETMASK=255.255.255.0
   GATEWAY=10.0.0.2
   DNS1=114.114.114.114
   DNS2=233.5.5.5
   DNS3=233.6.6.6
   
   ```

   修改完毕后重启网络服务`systemctl restart network`

   

   ## 3. 其他配置

   ### 3.1 关闭防火墙

   > //关闭
   >
   > systemctl stop firewalld
   >
   > // 关闭开机启动
   >
   > systemctl disable firewalld

   ### 3.2 关闭Selinux

   ```shell
   #进入vi
   vi /etc/selinux/config
   SELINUX: enforcing=>disabled
   #进入bash
   setenforce=0
   getenforce// Permissive
   
   ```

   

   ​	