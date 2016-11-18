ShadowVPN for OpenWrt mwan3
===

简介
---
 
 本项目搬运自 [aa65535][2] 大大修改部分代码
 
 实现mwan3 负载均衡 策略路由
 
 本项目是 [ShadowVPN][1] 在 OpenWrt 上的移植  
 
 当前版本: 0.2.0-1  


编译
---

 - 从 OpenWrt 的 [SDK][S] 编译  

   ```bash
   # 以 ar71xx 平台为例
   tar xjf OpenWrt-SDK-ar71xx-for-linux-x86_64-gcc-4.8-linaro_uClibc-0.9.33.2.tar.bz2
   cd OpenWrt-SDK-ar71xx-*
   # 获取 Makefile
   git clone https://github.com/kszym2002/openwrt-shadowvpn.git package/shadowvpn
   # 选择要编译的包 Network -> ShadowVPN
   make menuconfig
   # 开始编译
   make package/shadowvpn/compile V=99
   ```

配置
---

 - 多用户配置参考 [Wiki][W]  
 - SSH

  > 请先自行配制 /etc/shadowvpn/client.conf
  
  > 直接运行 /etc/init.d/shadowvpn start
  
  > 在网络--接口处多出 tun0 接口 
  
  > 直接在 mwan3 配置策咯路由 后面给出我收集的部分 ipset ip段
  
 - LUCI
  > 未完成
  
----------

 Name                     | Description
 -------------------------|-----------------------------------
 [ipset BF1][5]           | 收集了战地1亚洲澳洲美洲 IP段 
 [ipset HK][6]            | 收集了HK IP段
 [ipset TW][7]            | 收集了TW IP段
 [ipset KR][R]            | 收集了KR IP段
 [ipset JP][L]            | 收集了JP IP段



  [1]: https://github.com/clowwindy/ShadowVPN
  [2]: https://github.com/aa65535/openwrt-shadowvpn
  [3]: https://github.com/clowwindy/ChinaDNS-C/blob/master/chnroute.txt
  [5]: https://github.com/aa65535/openwrt-chinadns
  [6]: https://github.com/aa65535/openwrt-dnsmasq
  [7]: https://github.com/shadowsocks/openwrt-shadowsocks
  [8]: https://sourceforge.net/p/openwrt-dist/wiki/Plan6/
  [R]: https://github.com/aa65535/openwrt-redsocks2
  [S]: http://wiki.openwrt.org/doc/howto/obtain.firmware.sdk
  [L]: https://github.com/aa65535/openwrt-dist-luci
  [W]: https://github.com/clowwindy/ShadowVPN/wiki/Configure-Multiple-Users
