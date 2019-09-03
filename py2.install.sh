cd /mnt/sdf/PY2/ENV
wget https://www.python.org/ftp/python/2.7.16/Python-2.7.16.tgz
tar xzf Python-2.7.16.tgz
mv Python-2.7.16 PY2.7.16-SRC
mkdir PY2.7.16-INSTALLED
cd PY2.7.16
./configure --prefix=/mnt/sdf/PY2/ENV/PY2.7.16-INSTALLED 
make 
make install

ln -sf /mnt/sdf/PY2/ENV/PY2.7.16-INSTALLED/bin/python2 /usr/local/bin/python2
ln -sf /mnt/sdf/PY2/ENV/PY2.7.16-INSTALLED/bin/python2.7 /usr/local/bin/python2.7
ln -sf /mnt/sdf/PY2/ENV/PY2.7.16-INSTALLED/bin/python2.7 /usr/local/bin/python2.7.16


mkdir PIP2.7.16
cd PIP2.7.16/

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python2.7 get-pip.py

touch pip2.7.16

vim pip2.7.16

############################################################################################

#!/usr/local/bin/python2.7.16
# -*- coding: utf-8 -*-
import re
import sys

from pip._internal import main

if __name__ == '__main__':
    sys.argv[0] = re.sub(r'(-script\.pyw?|\.exe)?$', '', sys.argv[0])
    sys.exit(main())

##############################################################################################

ln -sf /mnt/sdf/PY2/ENV/PIP2.7.16/pip2.7.16 /usr/local/bin/pip2.7

chmod 777 pip2.7.16

pip2.7 install readline
