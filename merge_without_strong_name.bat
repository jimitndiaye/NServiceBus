xcopy build build\merge /Q /Y
xcopy external-bin build\merge /Q /Y
external-bin\ilmerge /log:build\output.txt /target:library /xmldocs /out:NServiceBus.dll build\merge\NServiceBus.dll build\merge\NServiceBus.Config.dll build\merge\Interop.MSMQ.dll build\merge\
del build\merge\*.* /Q
move NServiceBus.dll external-bin
move NServiceBus.pdb external-bin
move NServiceBus.xml external-bin