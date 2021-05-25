# Example using Jupiter notebook:
# Steps: import Psycopg2, establish a connection, create the cursor & then execute sql queries. 

import psycopg2 as pg2
conn = pg2.connect(database='dvdrental', user='postgres', password='soniadumitru')
cur = conn.cursor()
cur.execute('SELECT * FROM payment')
cur.fetchone()
# (17503,
#  341,
#  2,
#  1520,
#  Decimal('7.99'),
#  datetime.datetime(2007, 2, 15, 22, 25, 46, 996577))
cur.fetchmany()
# [(17504,
#   341,
#   1,
#   1778,
#   Decimal('1.99'),
#   datetime.datetime(2007, 2, 16, 17, 23, 14, 996577))]
  data = cur.fetchmany(3)
  data[0]
#   (17515,
#  343,
#  2,
#  1922,
#  Decimal('0.99'),
#  datetime.datetime(2007, 2, 17, 4, 32, 51, 996577))
data[0][4]
# Decimal('0.99')