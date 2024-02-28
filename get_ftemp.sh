#!/bin/bash

# Copyright and license information
echo "get_ftemp Bash Command © 2024 by William S. Popovici is licensed under CC BY-SA 4.0. To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/"
echo "Thank you for your support."
#echo "The Git repository for this code is available at https://github.com/wispgitgecko9/get_ftemp/"
# Get the temperature in Celsius
temp_c=$(vcgencmd measure_temp | cut -d "=" -f2 | cut -d "'" -f1)

# Check if temperature retrieval was successful
if [ -n "$temp_c" ]; then
    # Convert temperature to Fahrenheit
    temp_f=$(echo "scale=2; ($temp_c * 9/5) + 32" | bc)
    echo "Temperature: $temp_f°F"
else
    echo "Failed to retrieve temperature."
fi

