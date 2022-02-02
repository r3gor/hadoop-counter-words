@echo off

SET BASE=%CD%
SET HADOOP_ROOT=%HADOOP_HOME%\..

echo EJECUTAR COMO ADMINISTRADOR
echo Iniciando Hadoop...
echo start-dfs.cmd ^&^& start-yarn.cmd 

%HADOOP_ROOT%\sbin\start-dfs.cmd && ^
%HADOOP_ROOT%\sbin\start-yarn.cmd &&