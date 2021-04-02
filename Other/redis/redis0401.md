### 2.3.4.2.3 AOF 相关配置

主要的配置系信息可以参考 2.3.1

比如你要删除以前的数据，但是无法正常删除，只能通过 rewrite的方式来处理

```sh
appendonly yes
appendfilename "appendonly-${port}.aof"
appendfsync everysec
dir /path
no-appendfsync-on-rewrite yes
auto-aof-rewrite-percentage 100
auto-aof-rewrite-min-size 64mb
aof-load-truncated yes
```

修改名让人不轻易收入执行

```sh
rename-command keys "XxxXxxX"  #keys * 同时显示所有的值会导致服务器崩溃
rename-command flushdb "ansonyeancommand"
rename-command flushall ""
```

#### redis攻击或入侵

避免被攻击，一定要设定redis 安全密码和运行使用redis

### 2.5 redis 数据类型

```sh
SET hongbao wang EX 10 #设定10秒过去
ttl hongbao #查看状态 -2 值说明过期了
```

### 2.5.1.13 数值递增 / 2.5.1.14 数值递减

这工功能通常都是用来做like 和 unlike 用途

```sh
INCR num
DECR num
```

### 2.5.2 列表 list

l = Left

r = right

数据排列，尝试根据操作下

### 2.5.3 集合 set

这使用方式好像数据库， intercept ，union ，different

### 2.5.4 有序集合 sorted set

这可以用拍分数表上；排行榜等等

### 2.5.5 哈希 hash

通常使用在记录个人信息。

**2.5系列了解就好不需要背下来，通常开发使用的**

### 2.6 消息队列

让消息别挤，排队方式处理



### 2.6.2.2 订阅者监听频道

群发消息，比如wechat 都是通过这方式处理