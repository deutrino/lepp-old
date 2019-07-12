NGINX PostgreSQL PHP FastCGI Server Configuration - with Adminer
================================================================

`NGINX`_ is a web server, load balancer and reverse proxy with a strong
focus on performance, high concurency (over 10,000 simultaneous
connections), and low memory usage. It powers many of the world's
largest websites. NGINX can deploy dynamic HTTP content such as PHP
scripts using the FastCGI interface.

`PostgreSQL`_ is a fully featured object-relational database with many
enterprise features: ACID transactions, inheritance, unicode and strong
support for the SQL-92 standard including subqueries, views, outer
joins, foreign keys, sequences and triggers. It is also highly
extensible and allows users to define internal functions in C, C++,
Java, Perl, TCL, Python, Ruby, PHP and PL/PgSQL.

In `comparison`_ with MySQL, PostgreSQL is more fully featured and
consistent, and has better support for large multi-processor
environments.

This appliance includes all the standard features in `TurnKey Core`_,
and on top of that:

- NGINX configured to proxy PHP requests to the PHP-FastCGI daemon.
- SSL support out of the box.
- `Adminer`_ administration frontend for PostgreSQL (listening on
  port 12322 - uses SSL).
- PostgreSQL 9.6 is configured to listen on its default port (5432/tcp)
  on local interfaces by default, and accept local connections. In a
  production environment, it is recommended to limit incoming
  connections by configuring *Host* and *User* access in
  */etc/postgresql/9.6/main/pg\_hba.conf*.
- PostgreSQL password encryption enabled by default (security).
- The *postgres* user is trusted when connecting over local unix sockets
  (convenience).
- Postfix MTA (bound to localhost) to allow sending of email (e.g.,
  password recovery).
- Webmin modules for configuring PHP, PostgreSQL and Postfix.
- Includes TurnKey Web Control panel with links to useful
  references and resources (convenience).

Credentials *(passwords set at first boot)*
-------------------------------------------

-  Webmin, SSH: username **root**
-  PostgreSQL: username **postgres**
-  Adminer: username **adminer**

.. _NGINX: http://nginx.org
.. _PostgreSQL: http://www.postgresql.org/
.. _comparison: http://www.wikivs.com/wiki/MySQL_vs_PostgreSQL
.. _TurnKey Core: https://www.turnkeylinux.org/core
.. _Adminer: http://www.adminer.org
