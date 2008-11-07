#! /bin/sh
#
# load.sh
#
# Initialize the scheme system with assorted basic definitions.
#

HOST=localhost
PORT=17001

cat type_constructors.scm |netcat $HOST $PORT
cat utilities.scm |netcat $HOST $PORT
cat cgw-wire.scm |netcat $HOST $PORT
cat cgw-simple.scm |netcat $HOST $PORT
cat cgw-fan.scm |netcat $HOST $PORT
cat cgw-filter.scm |netcat $HOST $PORT
cat cgw-bidi.scm |netcat $HOST $PORT
cat cgw-predicate.scm |netcat $HOST $PORT

# Session doesn't work over telnet.
# echo -e "scm\n(use-modules (ice-9 session))\n.\nexit\n"  |netcat $HOST $PORT
