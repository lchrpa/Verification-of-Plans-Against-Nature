CC=g++-11
FLAGS=-Wall -Wextra -pedantic -pthread -std=gnu++17 -O3
INCLUDE=-Iinclude/ -I SAS/include/

default:
	$(CC) $(FLAGS) $(INCLUDE) -g -o waitfor main.cpp utility.cpp downward_driver.cpp verifier.cpp DTG.cpp SAS/src/*.cpp

clean:
	rm waitfor 
