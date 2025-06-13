CXX = g++
CXXFLAGS = -std=c++11 -I"D:/Libraries/vcpkg/installed/x64-windows/include"
LDFLAGS = -L"D:/Libraries/vcpkg/installed/x64-windows/lib" -lraylib -lopengl32 -lgdi32 -lwinmm
TARGET = main

all: $(TARGET)

$(TARGET): main.cpp
	$(CXX) $(CXXFLAGS) $^ $(LDFLAGS) -o $@

clean:
	rm -f $(TARGET).exe
