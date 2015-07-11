all: mavlink_control
FLAG=-fPIC -shared
LIBPATH=/home/px4/test-gokit/gokit-edison-GAgent/product/linux
mavlink_control: mavlink_control.cpp
	g++ -I mavlink/include/mavlink/v1.0 mavlink_control.cpp serial_port.cpp autopilot_interface.cpp $(FLAG) -o $(LIBPATH)/mavlink_control.so -lpthread

clean:
	 rm -rf *o mavlink_control
