CXX ?= g++

DEBUG ?= 1
ifeq ($(DEBUG), 1)
	CXXFLAGS += -g
else
	CXXFLAGS += -02

endif

all:server client

server: server.cpp client.cpp
	$(CXX) -o server server.cpp

client: client.cpp
	$(CXX) -o client client.cpp

clean:
	rm -r server client