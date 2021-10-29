INCLUDES = -I /usr/lib/jvm/java-11-openjdk-amd64/include/ -I /usr/lib/jvm/java-11-openjdk-amd64/include/linux
LIBS = -L /usr/lib/jvm/java-11-openjdk-amd64/lib/jli/ -L /usr/lib/jvm/java-11-openjdk-amd64/lib/server/

all:
	g++ $(INCLUDES) $(LIBS) main.c -ljli -ljvm
	javac *.java

run:
	 LD_LIBRARY_PATH=.:/usr/lib/jvm/java-1.11.0-openjdk-amd64/lib/jli/:/usr/lib/jvm/java-11-openjdk-amd64/lib/server/ ./a.out

clean:
	rm -f *.so *.class *.o CallNative.h .main *.out
