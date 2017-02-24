all: build/Symbol/SymbolUTF8.o build/Symbol/SomeUTF8Symbols.o build/Symbol/Symbol.o build/ANSILinux/TIOAL_PropANSI_SymbolUTF8.o build/ANSILinux/WSL_SymbolUTF8.o build/main.o build/Laser.o
	clang -lstdc++ --std=c++11 build/Symbol/SymbolUTF8.o \
	build/Symbol/SomeUTF8Symbols.o \
	build/Symbol/Symbol.o \
	build/ANSILinux/TIOAL_PropANSI_SymbolUTF8.o \
	build/ANSILinux/WSL_SymbolUTF8.o \
	build/main.o \
	build/Laser.o \
	-o work
build/Symbol/SymbolUTF8.o: \
 /home/shkiper/Код/Blessings/Symbol/SymbolUTF8.cpp \
 /home/shkiper/Код/Blessings/Symbol/Symbol.hpp \
 /home/shkiper/Код/Blessings/Symbol/../Error.hpp \
 /home/shkiper/Код/Blessings/Symbol/SymbolUTF8.hpp
	mkdir -p build/Symbol/
	clang --std=c++11 -c Symbol/SymbolUTF8.cpp -o build/Symbol/SymbolUTF8.o
build/Symbol/SomeUTF8Symbols.o: \
 /home/shkiper/Код/Blessings/Symbol/SomeUTF8Symbols.cpp \
 /home/shkiper/Код/Blessings/Symbol/SymbolUTF8.hpp \
 /home/shkiper/Код/Blessings/Symbol/Symbol.hpp \
 /home/shkiper/Код/Blessings/Symbol/../Error.hpp \
 /home/shkiper/Код/Blessings/Symbol/SomeUTF8Symbols.hpp
	mkdir -p build/Symbol/
	clang --std=c++11 -c Symbol/SomeUTF8Symbols.cpp -o build/Symbol/SomeUTF8Symbols.o
build/Symbol/Symbol.o: /home/shkiper/Код/Blessings/Symbol/Symbol.cpp \
 /home/shkiper/Код/Blessings/Symbol/Symbol.hpp \
 /home/shkiper/Код/Blessings/Symbol/../Error.hpp
	mkdir -p build/Symbol/
	clang --std=c++11 -c Symbol/Symbol.cpp -o build/Symbol/Symbol.o
build/ANSILinux/TIOAL_PropANSI_SymbolUTF8.o: \
 /home/shkiper/Код/Blessings/ANSILinux/TIOAL_PropANSI_SymbolUTF8.cpp \
 /home/shkiper/Код/Blessings/ANSILinux/TIOAL_PropANSI_impl.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../Symbol/SomeUTF8Symbols.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../Symbol/SymbolUTF8.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../Symbol/Symbol.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../Symbol/../Error.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/TIOAL_PropANSI.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../WriteStream.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../ReadStream.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../AdditionalStructs.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/TerminalIOANSILinux.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../TerminalIO.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/WriteStreamLinux.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/WSL_SymbolUTF8.hpp
	mkdir -p build/ANSILinux/
	clang --std=c++11 -c ANSILinux/TIOAL_PropANSI_SymbolUTF8.cpp -o build/ANSILinux/TIOAL_PropANSI_SymbolUTF8.o
build/ANSILinux/WSL_SymbolUTF8.o: \
 /home/shkiper/Код/Blessings/ANSILinux/WSL_SymbolUTF8.cpp \
 /home/shkiper/Код/Blessings/ANSILinux/WSL_SymbolUTF8.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../Symbol/SymbolUTF8.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../Symbol/Symbol.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../Symbol/../Error.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../WriteStream.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/WriteStreamLinux.hpp
	mkdir -p build/ANSILinux/
	clang --std=c++11 -c ANSILinux/WSL_SymbolUTF8.cpp -o build/ANSILinux/WSL_SymbolUTF8.o
build/main.o: /home/shkiper/Код/Blessings/main.cpp \
 /home/shkiper/Код/Blessings/Symbol/SymbolUTF8.hpp \
 /home/shkiper/Код/Blessings/Symbol/Symbol.hpp \
 /home/shkiper/Код/Blessings/Symbol/../Error.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/TerminalIOANSILinux.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/TIOAL_PropANSI.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../WriteStream.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../ReadStream.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../AdditionalStructs.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../TerminalIO.hpp \
 /home/shkiper/Код/Blessings/Demos.hpp
	mkdir -p build/
	clang --std=c++11 -c main.cpp -o build/main.o
build/Laser.o: /home/shkiper/Код/Blessings/Laser.cpp \
 /home/shkiper/Код/Blessings/Symbol/SymbolUTF8.hpp \
 /home/shkiper/Код/Blessings/Symbol/Symbol.hpp \
 /home/shkiper/Код/Blessings/Symbol/../Error.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/TerminalIOANSILinux.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/TIOAL_PropANSI.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../WriteStream.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../ReadStream.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../AdditionalStructs.hpp \
 /home/shkiper/Код/Blessings/ANSILinux/../TerminalIO.hpp \
 /home/shkiper/Код/Blessings/Demos.hpp
	mkdir -p build/
	clang --std=c++11 -c Laser.cpp -o build/Laser.o
clean:
	rm -rf build
	rm -f work