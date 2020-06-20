#!/bin/sh
set -x

# Start smart card middleware
sudo pcscd -d -f | tee /tmp/pcscd.log &

# Start RAC Plugin
cd /usr/local/HiPKILocalSignServerApp && ./start.sh &

# Start plugin for health insurance card
sudo /usr/local/share/NHIICC/mLNHIICC

firefox \
    https://github.com/chihchun/personal-income-tax-docker/blob/master/2019/README.md \
    https://iccert.nhi.gov.tw:7777/ \
    https://efile.tax.nat.gov.tw/irxw/index.jsp \
    https://cloudicweb.nhi.gov.tw/cloudic/system/SMC/webtesting/SampleY.aspx \
