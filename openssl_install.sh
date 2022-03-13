# 2022年3月13日11点12分 更新

# 简单自用，不保证所有人可用
# 环境 centos 7.9

# openssl-1.1.1m.tar.gz

wget https://www.openssl.org/source/openssl-1.1.1m.tar.gz
tar -xzvf openssl-1.1.1m.tar.gz
cd  openssl-1.1.1m
./config --prefix=/usr/local/openssl
./config -t
make
make install
./config shared --prefix=/usr/local/openssl
make clean
make
make install
cd /usr/local
ldd /usr/local/openssl/bin/openssl
echo "/usr/local/openssl/lib" >> /etc/ld.so.conf
ldconfig /etc/ld.so.conf
mv /usr/bin/openssl /usr/bin/openssl.bk
cp /usr/local/openssl/bin/openssl /usr/bin/openssl

which openssl
openssl version
