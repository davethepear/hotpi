#!/bin/bash
tc=$(</sys/class/thermal/thermal_zone0/temp) # Most Pi CPU temp is located here
tf=$(echo "scale=2;((9/5) * ($tc/1000)) + 32" |bc) # I know some C units, but I'm familiar with F.
tx=$(echo "scale=2;($tc/1000)" |bc) # This was for something else I meant to add... you can delete it.
# I set mine to whine when it's over 50°C, change if needed.
if [ "$tc" -gt "50000" ]; then
    echo "It's hot in here!" | mail -s "I am dying! $tf° F" myemail@host.com.net
fi
