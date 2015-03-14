OBJS := hand.o
TARGET := hand
CFLAGS := -Wall
LDFLAGS := -lopencv_core -lopencv_highgui -lopencv_imgproc -lopencv_video -lm

hand.o: hand.cpp
	$(CXX) -o hand.o hand.cpp $(LDFLAGS)

all: $(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) $(LDFLAGS)

clean:
	rm -f $(OBJS) $(TARGET) video.avi

