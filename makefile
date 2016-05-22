JFLAGS = -cp .:junit-4.12.jar 
JC = javac
RUNFLAGS = -cp .:junit-4.12.jar:hamcrest-core-1.3.jar org.junit.runner.JUnitCore
JR = java
.SUFFIXES: .java .class
.java.class:
	$(JC) $(JFLAGS) $*.java

CLASSES = \
        Game.java \
        BowlingGameTest.java \

default: classes run

classes: $(CLASSES:.java=.class)

run:
	$(JR) $(RUNFLAGS) BowlingGameTest

restart: clean clear
clean:
	$(RM) *.class

clear:
	$(RM) Game.java
	$(RM) BowlingGameTest.java
	touch Game.java
	touch BowlingGameTest.java

test1:
	cp ./steps/Game_1.java Game.java
	cp ./steps/BowlingGameTest_1.java BowlingGameTest.java

test2:
	cp ./steps/Game_2.java Game.java
	cp ./steps/BowlingGameTest_2.java BowlingGameTest.java

test3:
	cp ./steps/Game_3.java Game.java
	cp ./steps/BowlingGameTest_3.java BowlingGameTest.java
