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

# Analyze format.
check-format:
	@clang-format --dry-run --Werror $$(find . -name '*.cpp') $$(find . -name '*.h')

# Format all .cpp and .h files in the repo.
format:
	@clang-format -i $$(find . -name '*.cpp') $$(find . -name '*.h')