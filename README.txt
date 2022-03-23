完成項目：
    ANTLR grammar file(mylexer.g)，subset description file(408410063_subset_description.docx)，A lexer to call lexer(testLexer.java)，Test program(sample1~3.c,lexer.sample.c)

How to compile & execute:
    再終端機呼叫make進行編譯，首先會先呼叫 java -jar ../antlr-3.5.2-complete-no-st3.jar mylexer.g，透過antlr幫我們編譯grammar file，編譯完成會產生java所寫的source code(mylexer.java & mylexer.tokens)
    。之後再透過 javac -cp ../antlr-3.5.2-complete-no-st3.jar:. *.java ，用java的compiler去編譯這兩個檔案（會產生.class的檔案）。最後就是執行的環節，透過 java -cp ../antlr-3.5.2-complete-no-st3.jar:. testLexer sample1.class的檔案）。
    （sample1.c的部份可以改成任何想要執行的input C file），可以看到輸出會將input的程式一個個的分解成我們所訂的token