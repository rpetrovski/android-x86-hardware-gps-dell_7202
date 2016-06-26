Android Serial GPS Driver

How to use:

To set serial port, add a property "ro.kernel.android.gps" and set it equal to your GPS device file.
ie. 
```
ro.kernel.android.gps=ttyO1
```

Default baud rate is 9600, to adjust add a property "ro.kernel.android.gpsttybaud" and set it equal to the needed rate. (4800-115200) ie. 
```
ro.kernel.android.gpsttybaud=9600
```

Additional features:
You can exclude some nmea sentences from being parsed or passed further like so:
```
ro.kernel.android.gpsexclnmea=GPRMC,GNRMC
```
This is useful when debugging, or when downstream software gets confused by the same thing being repeated in many different ways.

Hardware on Dell 7202 would send two separate GSA messages for GSM and GLONASS satellites. The original code could not make much sense of that. Hopefully, this implementation resolves the issue.




