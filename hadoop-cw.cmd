@echo off

echo [*] Copiando input.txt a Hadoop
echo dfs -copyFromLocal -f input.txt /inputWC5
cmd /C hdfs dfs -copyFromLocal -f input.txt /inputWC5

echo [*] Mostrando archivo copiado
echo hdfs dfs -ls /inputWC5
cmd /C hdfs dfs -ls /inputWC5

echo [*] Ejecutando CounterWords.jar
echo hadoop jar HadoopCounterWords.jar CounterWords /inputWC5 /outputWC5
cmd /C hadoop jar HadoopCounterWords.jar CounterWords /inputWC5 /outputWC5

echo [*] Resultado
echo hdfs dfs -cat /outputWC5
cmd /C hdfs dfs -cat /outputWC5/*

echo [*] Guardando resultado localmente (output.txt)
cmd /C hdfs dfs -cat /outputWC5/* > output.txt

echo [*] Limpiando output
echo hadoop fs -rm -r /outputWC5
hadoop fs -rm -r /outputWC5
