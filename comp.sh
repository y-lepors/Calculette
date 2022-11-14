rm parser.*
rm sym.*
rm Yylex.*
rm CUP*

jflex ma_spec.flex
java -cp "/Users/yanislepors/Documents/ressources/java-cup-v11a.jar"  java_cup.Main ma_spec.cup
javac -classpath "/Users/yanislepors/Documents/ressources/java-cup-v11a.jar"  -nowarn parser.java sym.java Yylex.java

clear

java parser < $1