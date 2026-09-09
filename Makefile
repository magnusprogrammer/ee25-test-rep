# Application target.
TARGET := firmware

# C++ compiler.
CXX := g++

# C++ compiler flags.
CXXFLAGS := -Wall -Werror -std=c++17 -Iinclude

# Source files.
SRC_FILES := main.cpp \

# Build and run the target by default.
default: build run

# Build the target.
build:
	@g++ $(SRC_FILES) -o $(TARGET) $(CXXFLAGS)

# Run the target.
run: build
	@./$(TARGET)
# Clean the build(Using the windows powershell command to remove the target file).
clean:
	@powershell -Command "Remove-Item -Path $(TARGET).exe -Force"