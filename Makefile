CXX = g++
CXXFLAGS = -std=c++17 -Wall -c
LXXFLAGS = -std=c++17

OBJECTS = main.o
TARGET = exe

$(TARGET) : $(OBJECTS)
	$(CXX) $(LXXFLAGS) $(OBJECTS) -o $(TARGET)
	
main.o: main.cpp
	$(CXX) $(CXXFLAGS) main.cpp

clean:
	rm -f $(TARGET) $(OBJECTS)


test: $(TARGET)
	bash ./run_the_app
