# 打包解包

## 解包 rpm
rpm2cpio xxx.rpm | cpio -div

### Deb Package
- ubuntu 21.10 支持 zst 
- ubuntu 21.04 支持 依然是 xz
- debian 11 不支持 zst 格式