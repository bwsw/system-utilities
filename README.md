# Random Monitoring Utilities

Repository includes set of scripts (cron, direct invocation) which we use to monitor servers.
Righ now there are 
- storage integirity and performance for linux servers which run Adaptec Raid and MDADM, LVM with SAS/SATA and SSD storages.
- domain expiration checkers
- certificate expiration checkers
- Zookeeper Integrity
- Elasticsearch Status
- Logstash Status

All scripts and configuration items are located in proper folders under zabbix/ directory. Use subdirectories to move to root fs, e.g. zabbix/opt -> /opt, etc.

## Zabbix Items

### Storage Integrity

* Rebuildstat[md131] - rebuild progress (progress)
* Degradedstat[md131] - degraded information (which device)
* AdaptecRaidstat - Adaptec RAID arrays health information (overall)
* LsiRaidstat - LSI RAID arrays health information (overall)
* SoftRaidstat - MDADM RAID arrays health information (overall)

### Zookeeper Cluster Integrity

* ZkClusterEnsemble (amount of leader, follower nodes in cluster)

### Elasticsearch

* ElasticsearchStatus (cluster status: green, yellow, red)

### Logstash

* LogstashStatus (cluster status: ok, failure)

### Storage Performance

* custom.vfs.dev.read.sectors[md131] (Use custom multiplier 512)
* custom.vfs.dev.read.ops[md131]
* custom.vfs.dev.write.sectors[md131] (Use custom multiplier 512)
* custom.vfs.dev.write.ops[md131]

### SSD related

* Wearout - current level of wearout

### LVM related stuff

* Snapstat[vgname/volname] (only single snapshot at a time supported)

### Certificate Expiration

* certificate.expires[bitworks.software] (in days)

### Domain Expiration

* domain.expires[bitworks.software] (in days)
