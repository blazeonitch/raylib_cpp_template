CXX = g++
CXXFLAGS = -std=c++11 -I"D:/Libraries/vcpkg/installed/x64-mingw-dynamic/include" -Wall
LDFLAGS = -L"D:/Libraries/vcpkg/installed/x64-mingw-dynamic/lib" -lraylib -lopengl32 -lgdi32 -lwinmm
TARGET = main

all: $(TARGET)

$(TARGET): main.cpp
	$(CXX) $(CXXFLAGS) $^ $(LDFLAGS) -o $@

clean:
	rm -f $(TARGET).exe
