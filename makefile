all:
	java -jar ../antlr-3.5.2-complete-no-st3.jar mylexer.g
	javac -cp ../antlr-3.5.2-complete-no-st3.jar:. *.java
	java -cp ../antlr-3.5.2-complete-no-st3.jar:. testLexer sample1.c
