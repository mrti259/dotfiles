[Follow instructions](https://www.bencode.net/posts/libxft-bgra/)

```sh
curl -L -o 1.patch https://gitlab.freedesktop.org/xorg/lib/libxft/merge_requests/1.patch

git clone https://gitlab.freedesktop.org/xorg/lib/libxft.git

cd libxft

patch -p1 < ../1.patch

sudo apt install xutils-dev libtool

sudo sh autogen.sh --sysconfdir=/etc --prefix=/usr --mandir=/usr/share/man

sudo make install

cd /usr/lib/x86_64-linux-gnu

sudo rm -f libXft.*

sudo ln -s /usr/lib/libXft.a libXft.a

sudo ln -s /usr/lib/libXft.so.2.3.4 libXft.so

sudo ln -s /usr/lib/libXft.so.2.3.4 libXft.so.2

sudo ln -s /usr/lib/libXft.so.2.3.4 libXft.so.2.3.4

sudo ldconfig
```
