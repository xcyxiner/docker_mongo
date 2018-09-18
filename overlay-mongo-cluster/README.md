# 当前主机操作
* 创建overlay网络 aaa
* docker-compose up -d 后使用1.sh中的第一条脚本命令
* 查看容器在aaa网路下的IP地址，并在2.sh中替换
* 执行脚本1.sh，进入容器内部后，切换到tmp目录
* 执行脚本2.sh

## 其他主机操作
* docker-compose up -d 后使用1.sh中的第一条脚本命令
* 查看容器在aaa网路下的IP地址
* 连接Primay主机的MongoDB，执行 rs.add("IP:Port");
* 查看状态 rs.status()

## 移除节点

```
所有节点移除都是这样
rs.remove("IP:Port");

添加仲裁节点
rs.addArb("IP:Port");
```
