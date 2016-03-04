# we need the correct path, is there a better way to find it?
if [ -d "/lib/i386-linux-gnu" ]; then
    LIBPATH="/lib/i386-linux-gnu/"
else
    LIBPATH="/lib/x86_64-linux-gnu/"

    # fix problem with imap http://bit.ly/1WZcTWD
    ln -s /usr/lib/libc-client.a /usr/lib/x86_64-linux-gnu/libc-client.a
fi


configoptions="$configoptions \
    --enable-fastcgi \
    --enable-gd-native-ttf \
    --enable-intl \
    --with-ldap \
    --with-ldap-sasl \
    --with-bz2 \
    --with-curl \
    --with-imap \
    --with-imap-ssl \
    --with-gd \
    --with-jpeg-dir=/usr/lib \
    --with-kerberos \
    --with-libdir=$LIBPATH \
    --with-mcrypt \
    --with-mhash \
    --with-mysql=/usr \
    --with-mysqli=/usr/bin/mysql_config \
    --with-openssl \
    --with-pdo-mysql \
    --with-png-dir=/usr/lib \
    --with-pgsql \
    --with-ttf \
    --with-xsl=/usr \
"

echo $configoptions
