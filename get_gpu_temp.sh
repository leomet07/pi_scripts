gpu=$(vcgencmd measure_temp | cut -c 6-9)
echo $gpu C