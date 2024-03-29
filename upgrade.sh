apt-get install python3

#if no 

apt-get remove python3
apt-get purge python3

cd /mnt/sdf/PY3
root@scylladb:/mnt/sdf/PY3# mkdir ENV
root@scylladb:/mnt/sdf/PY3# mkdir PROJ
root@scylladb:/mnt/sdf/PY3# cd ENV
root@scylladb:/mnt/sdf/PY3/ENV# wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz

apt-get install zlib1g-dev
apt-get install libffi-dev
apt-get install libssl-dev


tar -zxf Python-3.7.4.tgz
mv Python-3.7.4 PY374
rm Python-3.7.4.tgz
cd PY374
./configure --with-ssl
make
make install



#check

root@scylladb:/mnt/sdf/PY3/ENV/PY374# which python3
/usr/local/bin/python3


/usr/local/bin/python3
Python 3.7.4 (default, Sep  2 2019, 09:54:27)
[GCC 7.4.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>>



root@scylladb:/mnt/sdf/PY3/ENV/PY374# which pip3
/usr/local/bin/pip3
root@scylladb:/mnt/sdf/PY3/ENV/PY374#root@scylladb:/mnt/sdf/PY3/ENV/PY374# pip3 --version
pip 19.0.3 from /usr/local/lib/python3.7/site-packages/pip (python 3.7)



#check 

root@scylladb:~# which python3
/usr/local/bin/python3
root@scylladb:~# which python3.6
/usr/bin/python3.6
root@scylladb:~# which python3.6m
/usr/bin/python3.6m
root@scylladb:~#
root@scylladb:~# which python3.7
/usr/local/bin/python3.7
root@scylladb:~# which python3.7m
/usr/local/bin/python3.7m
root@scylladb:~#
root@scylladb:~# ls -l /usr/local/bin/ | egrep python3
lrwxrwxrwx 1 root root        9 Sep  2 10:06 python3 -> python3.7
-rwxr-xr-x 2 root root 14760168 Sep  2 10:05 python3.7
lrwxrwxrwx 1 root root       17 Sep  2 10:06 python3.7-config -> python3.7m-config
-rwxr-xr-x 2 root root 14760168 Sep  2 10:05 python3.7m
-rwxr-xr-x 1 root root     2902 Sep  2 10:06 python3.7m-config
lrwxrwxrwx 1 root root       16 Sep  2 10:06 python3-config -> python3.7-config
root@scylladb:~#
root@scylladb:~# ls -l /usr/bin/ | egrep python3
lrwxrwxrwx 1 root   root          31 Oct 25  2018 py3versions -> ../share/python3/py3versions.py
lrwxrwxrwx 1 root   root           9 Oct 25  2018 python3 -> python3.6
-rwxr-xr-x 2 root   root     4571576 Jan 14  2019 python3.6
-rwxr-xr-x 2 root   root     4571576 Jan 14  2019 python3.6m
lrwxrwxrwx 1 root   root          10 Oct 25  2018 python3m -> python3.6m
lrwxrwxrwx 1 root   root          34 Jan 14  2019 x86_64-linux-gnu-python3.6-config -> x86_64-li                                       nux-gnu-python3.6m-config
-rwxr-xr-x 1 root   root        3283 Jan 14  2019 x86_64-linux-gnu-python3.6m-config
lrwxrwxrwx 1 root   root          33 Oct 25  2018 x86_64-linux-gnu-python3-config -> x86_64-linu                                       x-gnu-python3.6-config
lrwxrwxrwx 1 root   root          34 Oct 25  2018 x86_64-linux-gnu-python3m-config -> x86_64-lin                                       ux-gnu-python3.6m-config
root@scylladb:~#


root@scylladb:~# ls -l /usr/local/bin/ | egrep pip
-rwxr-xr-x 1 root root      223 Sep  2 10:07 pip3
-rwxr-xr-x 1 root root      223 Sep  2 10:07 pip3.7
root@scylladb:~#

root@scylladb:~# cat /usr/local/bin/pip3
#!/usr/local/bin/python3.7
# -*- coding: utf-8 -*-
import re
import sys

from pip._internal import main

if __name__ == '__main__':
    sys.argv[0] = re.sub(r'(-script\.pyw?|\.exe)?$', '', sys.argv[0])
    sys.exit(main())
root@scylladb:~#
root@scylladb:~#
root@scylladb:~# cat /usr/local/bin/pip3.7
#!/usr/local/bin/python3.7
# -*- coding: utf-8 -*-
import re
import sys

from pip._internal import main

if __name__ == '__main__':
    sys.argv[0] = re.sub(r'(-script\.pyw?|\.exe)?$', '', sys.argv[0])
    sys.exit(main())
root@scylladb:~#





root@scylladb:~# cat /usr/local/bin/pip3
#!/usr/local/bin/python3.7
# -*- coding: utf-8 -*-
import re
import sys

from pip._internal import main

if __name__ == '__main__':
    sys.argv[0] = re.sub(r'(-script\.pyw?|\.exe)?$', '', sys.argv[0])
    sys.exit(main())
root@scylladb:~#
root@scylladb:~#
root@scylladb:~# cat /usr/local/bin/pip3.7
#!/usr/local/bin/python3.7
# -*- coding: utf-8 -*-
import re
import sys

from pip._internal import main

if __name__ == '__main__':
    sys.argv[0] = re.sub(r'(-script\.pyw?|\.exe)?$', '', sys.argv[0])
    sys.exit(main())
root@scylladb:~#


root@scylladb:~# $PATH
-bash: /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin: No such file or directory
root@scylladb:~#
root@scylladb:~# which python3.6
/usr/bin/python3.6
root@scylladb:~#
root@scylladb:~# which python3.7
/usr/local/bin/python3.7
root@scylladb:~#


#check 

root@scylladb:~# python3
Python 3.7.4 (default, Sep  2 2019, 09:54:27)
[GCC 7.4.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import elist
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ModuleNotFoundError: No module named 'elist'
>>> exit()
root@scylladb:~#
root@scylladb:~#
root@scylladb:~# python3.6
Python 3.6.8 (default, Jan 14 2019, 11:02:34)
[GCC 8.0.1 20180414 (experimental) [trunk revision 259383]] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import elist
>>> exit()
root@scylladb:~#


dpkg -S python3.6
dpkg -S python3

root@scylladb:~# whereis python3
python3: /usr/bin/python3.6 /usr/bin/python3 /usr/bin/python3.6m 
/usr/lib/python3.6 /usr/lib/python3 /etc/python3.6 
/usr/local/bin/python3 /usr/local/bin/python3.7 
/usr/local/bin/python3.7m-config 
/usr/local/bin/python3.7m 
/usr/local/bin/python3.7-config 
/usr/local/lib/python3.6 /usr/local/lib/python3.7 /usr/include/python3.6 /usr/include/python3.6m 
/usr/share/python3 /usr/share/man/man1/python3.1.gz

root@scylladb:~# type -a python3
python3 is /usr/local/bin/python3
python3 is /usr/bin/python3
root@scylladb:~#

root@scylladb:~# echo $PYTHONPATH
:/mnt/sdf/PY3
root@scylladb:~# echo $PYTHONSTARTUP

root@scylladb:~# echo $PYTHONCASEOK

root@scylladb:~# echo $PYTHONHOME



#############################

pip3 install --upgrade pip
pip3 install elist


###############################

#####how to change install path

root@scylladb:~# whereis python3 | sed 's/ /\n/g'
python3:
/usr/bin/python3.6
/usr/bin/python3
/usr/bin/python3.6m
/usr/lib/python3.6
/usr/lib/python3
/etc/python3.6
/usr/local/bin/python3
/usr/local/bin/python3.7
/usr/local/bin/python3.7m-config
/usr/local/bin/python3.7m
/usr/local/bin/python3.7-config
/usr/local/lib/python3.6
/usr/local/lib/python3.7
/usr/include/python3.6
/usr/include/python3.6m
/usr/share/python3
/usr/share/man/man1/python3.1.gz

root@scylladb:~# cat  /etc/python3.6/sitecustomize.py
# install the apport exception handler if available
try:
    import apport_python_hook
except ImportError:
    pass
else:
    apport_python_hook.install()
root@scylladb:~#


ls -l /usr/local/lib/python3.6/dist-packages/

root@scylladb:~# python3.6
Python 3.6.8 (default, Jan 14 2019, 11:02:34)
[GCC 8.0.1 20180414 (experimental) [trunk revision 259383]] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import sys
>>> sys.path
['', '/usr/lib/python36.zip', '/usr/lib/python3.6', '/usr/lib/python3.6/lib-dynload', '/usr/local/lib/python3.6/dist-packages', '/usr/lib/python3/dist-packages']
>>>
>>>





root@scylladb:~# ls -l /usr/local/lib/python3.7/dist-packages/
ls: cannot access '/usr/local/lib/python3.7/dist-packages/': No such file or directory
root@scylladb:~#
root@scylladb:~#
root@scylladb:~# python3
Python 3.7.4 (default, Sep  2 2019, 10:40:34)
[GCC 7.4.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import elist
>>> import sys
>>> sys.path
['', '/usr/local/lib/python37.zip', '/usr/local/lib/python3.7', '/usr/local/lib/python3.7/lib-dynload', '/usr/local/lib/python3.7/site-packages']
>>>
root@scylladb:~# ls -l /usr/local/lib/python3.7/site-packages
total 40
-rw-r--r-- 1 root root  126 Sep  2 10:06 easy_install.py
drwxr-xr-x 3 root root 4096 Sep  2 10:49 elist
drwxr-xr-x 2 root root 4096 Sep  2 10:49 elist-0.4.39-py3.7.egg-info
drwxr-xr-x 5 root root 4096 Sep  2 10:50 pip
drwxr-xr-x 2 root root 4096 Sep  2 10:50 pip-19.2.3.dist-info
drwxr-xr-x 5 root root 4096 Sep  2 10:07 pkg_resources
drwxr-xr-x 2 root root 4096 Sep  2 10:45 __pycache__
-rw-r--r-- 1 root root  119 Sep  2 10:43 README.txt
drwxr-xr-x 6 root root 4096 Sep  2 10:07 setuptools
drwxr-xr-x 2 root root 4096 Sep  2 10:07 setuptools-40.8.0.dist-info


############################3



###remove python3.6

# dpkg -r python3.6
# apt-get remove python3.6

root@scylladb:~# whereis python3
python3: /usr/bin/python3.6 /usr/bin/python3 /usr/bin/python3.6m /usr/lib/python3.6 /usr/lib/python3 /etc/python3.6 /usr/local/bin/python3 /usr/local/bin/python3.7 /usr/local/bin/python3.7m-config /usr/local/bin/python3.7m /usr/local/bin/python3.7-config /usr/local/lib/python3.6 /usr/local/lib/python3.7 /usr/include/python3.6 /usr/include/python3.6m /usr/share/python3 /usr/share/man/man1/python3.1.gz
root@scylladb:~#
root@scylladb:~# rm /usr/bin/python3.6
root@scylladb:~# rm /usr/bin/python3.6m
root@scylladb:~# rm /usr/lib/python3.6
rm: cannot remove '/usr/lib/python3.6': Is a directory
root@scylladb:~# rm -r /usr/lib/python3.6
root@scylladb:~# whereis python3 | sed 's/ /\n/g'
python3:
/usr/bin/python3
/usr/lib/python3
/etc/python3.6
/usr/local/bin/python3
/usr/local/bin/python3.7
/usr/local/bin/python3.7m-config
/usr/local/bin/python3.7m
/usr/local/bin/python3.7-config
/usr/local/lib/python3.6
/usr/local/lib/python3.7
/usr/include/python3.6
/usr/include/python3.6m
/usr/share/python3
/usr/share/man/man1/python3.1.gz
root@scylladb:~# rm /etc/python3.6
rm: cannot remove '/etc/python3.6': Is a directory
root@scylladb:~# rm -r /etc/python3.6
root@scylladb:~# rm -r /usr/local/lib/python3.6
root@scylladb:~# rm -r /usr/include/python3.6
root@scylladb:~# rm -r /usr/include/python3.6m
root@scylladb:~#
root@scylladb:~# whereis python3 | sed 's/ /\n/g'
python3:
/usr/bin/python3
/usr/lib/python3
/usr/local/bin/python3
/usr/local/bin/python3.7
/usr/local/bin/python3.7m-config
/usr/local/bin/python3.7m
/usr/local/bin/python3.7-config
/usr/local/lib/python3.7
/usr/share/python3
/usr/share/man/man1/python3.1.gz
root@scylladb:~#

########################################


#####install modules####
apt-get install libncurses.dev
pip3 install gnureadline
pip3 install  numpy
pip3 install  pandas
pip3 install xdict
pip3 install elist
pip3 install edict
pip3 install dlist
pip3 install tlist
pip3 install ltdict
pip3 install estring
pip3 install spaint
pip3 install rblk
pip3 install sldghmmr4nut
pip3 install qtable
pip3 install efdir
pip3 install navegador5
pip3 install nvhtml
pip3 install xxurl
pip3 install tytycss
pip3 install kukibanshee
pip3 install nvhead
pip3 install minidoc
pip3 install conjugar


##########



###dpkg remove 




####change the python  dir 
./configure --prefix=/your/custom/installation/path

####change package dir
python3 setup.py install --prefix
 
