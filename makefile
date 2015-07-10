all: mavlink_control
FLAG=-fPIC -shared

mavlink_control: mavlink_control.cpp
	g++ -I mavlink/include/mavlink/v1.0 mavlink_control.cpp serial_port.cpp autopilot_interface.cpp $(FLAG) -o mavlink_control.so -lpthread

clean:
	 rm -rf *o mavlink_control
