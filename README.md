# Raid Monitoring Utilities

## Zabbix Items

### Storage Integrity

* Rebuildstat[md131] - rebuild progress (progress)
* Degradedstat[md131] - degraded information (which device)
* AdaptecRaidstat - Adaptec RAID arrays health information (overall
* SoftRaidstat - MDADM RAID arrays health information (overall)

### Storage Performance
* custom.vfs.dev.read.sectors[md131] (Use custom multiplier 512)
* custom.vfs.dev.read.ops[md131]
* custom.vfs.dev.write.sectors[md131] (Use custom multiplier 512)
* custom.vfs.dev.write.ops[md131]

### SSD related
* Wearout - current level of wearout

### LVM related stuff
* Snapstat[vgname/volname] (only single snapshot at a time supported)
