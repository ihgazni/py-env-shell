apt-get install python3

#if no 

apt-get remove python3
apt-get purge python3

cd /mnt/sdf/PY3
root@scylladb:/mnt/sdf/PY3# mkdir ENV
root@scylladb:/mnt/sdf/PY3# mkdir PROJ
root@scylladb:/mnt/sdf/PY3# cd ENV
root@scylladb:/mnt/sdf/PY3/ENV# wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz

root@scylladb:/mnt/sdf/PY3/ENV#mkdir PY374
tar  zxvf Python-3.7.4.tgz ./PY374
