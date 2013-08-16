TARGET   = inc.exe
CXXFLAGS = -std=c++11
LDFLAGS  = -static -s

all: $(TARGET)

inc.exe: PELib.o inc.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $^

PELib.o: PELib.cpp PELib.h
inc.o: inc.cpp PELib.h

.cpp.o:
	$(CXX) $(CXXFLAGS) -c -o $@ $<

clean:
	rm -f *.o $(TARGET)
