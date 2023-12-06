{"vars":[{"line":7,"name":"strict","containerName":"","kind":2},{"containerName":"","kind":2,"line":8,"name":"warnings"},{"kind":2,"containerName":"Config","name":"Tiny","line":9},{"name":"Path","line":10,"kind":2,"containerName":"File"},{"range":{"start":{"line":20,"character":0},"end":{"character":9999,"line":25}},"children":[{"kind":13,"localvar":"my","containerName":"new","line":21,"definition":"my","name":"$class"},{"name":"$iniPath","line":21,"kind":13,"containerName":"new"},{"kind":13,"localvar":"my","containerName":"new","line":22,"definition":"my","name":"$self"},{"line":22,"name":"$iniPath","containerName":"new","kind":13},{"line":23,"name":"$self","containerName":"new","kind":13},{"kind":13,"containerName":"new","name":"$class","line":23},{"name":"$self","line":24,"kind":13,"containerName":"new"}],"kind":12,"definition":"sub","line":20,"detail":"($class,$iniPath)","name":"new","signature":{"label":"new($class,$iniPath)","parameters":[{"label":"$class"},{"label":"$iniPath"}],"documentation":" Remove separators\n sub trim {\n     my ($string) = @_;\n     $string =~ s/^\\s+//;\n     $string =~ s/\\s+$//;\n     return $string;\n }"},"containerName":"main::"},{"kind":12,"name":"iniPath","line":22},{"range":{"end":{"line":38,"character":9999},"start":{"line":27,"character":0}},"kind":12,"children":[{"name":"$self","line":28,"definition":"my","containerName":"checkINI","localvar":"my","kind":13},{"containerName":"checkINI","line":29,"definition":"my","name":"$watchConfig","kind":13,"localvar":"my"},{"name":"read","line":29,"kind":12,"containerName":"checkINI"},{"kind":13,"containerName":"checkINI","name":"$self","line":29},{"containerName":"checkINI","kind":13,"line":31,"name":"$watchConfig"},{"kind":13,"containerName":"checkINI","name":"$watchConfig","line":32},{"line":36,"name":"errstr","containerName":"checkINI","kind":12},{"containerName":"checkINI","kind":13,"line":36,"name":"$watchConfig"}],"detail":"($self)","name":"checkINI","line":27,"definition":"sub","containerName":"main::","signature":{"label":"checkINI($self)","documentation":"","parameters":[{"label":"$self"}]}},{"kind":12,"containerName":"Tiny","name":"Config","line":29},{"kind":12,"line":29,"name":"iniPath"},{"kind":12,"containerName":"Tiny","name":"Config","line":35},{"kind":12,"children":[{"containerName":"getLogPath","definition":"my","line":41,"name":"$self","kind":13,"localvar":"my"},{"containerName":"getLogPath","line":42,"definition":"my","name":"$watchConfig","kind":13,"localvar":"my"},{"kind":13,"containerName":"getLogPath","name":"$self","line":42},{"line":42,"name":"checkINI","containerName":"getLogPath","kind":12},{"kind":13,"containerName":"getLogPath","name":"$watchConfig","line":43},{"name":"$watchConfig","line":44,"kind":13,"containerName":"getLogPath"},{"name":"$watchConfig","line":45,"kind":13,"containerName":"getLogPath"},{"kind":13,"containerName":"getLogPath","name":"$self","line":51},{"line":55,"name":"$watchConfig","containerName":"getLogPath","kind":13},{"name":"$watchConfig","line":56,"kind":13,"containerName":"getLogPath"},{"kind":13,"containerName":"getLogPath","name":"$watchConfig","line":57},{"name":"$self","line":63,"kind":13,"containerName":"getLogPath"},{"kind":13,"containerName":"getLogPath","name":"$watchConfig","line":66}],"range":{"end":{"line":67,"character":9999},"start":{"character":0,"line":40}},"signature":{"label":"getLogPath($self)","documentation":"","parameters":[{"label":"$self"}]},"containerName":"main::","name":"getLogPath","detail":"($self)","line":40,"definition":"sub"},{"kind":12,"line":42,"name":"system"},{"kind":12,"name":"make_path","line":45},{"name":"iniPath","line":51,"kind":12},{"kind":12,"line":57,"name":"make_path"},{"line":63,"name":"iniPath","kind":12},{"children":[{"containerName":"getDBConfig","name":"$self","definition":"my","line":71,"kind":13,"localvar":"my"},{"line":72,"definition":"my","name":"$getConfig","containerName":"getDBConfig","localvar":"my","kind":13},{"kind":13,"containerName":"getDBConfig","name":"$self","line":72},{"name":"checkINI","line":72,"kind":12,"containerName":"getDBConfig"},{"kind":13,"containerName":"getDBConfig","name":"$getConfig","line":73},{"name":"$getConfig","line":74,"kind":13,"containerName":"getDBConfig"},{"kind":13,"containerName":"getDBConfig","name":"$getConfig","line":75},{"line":76,"name":"$getConfig","containerName":"getDBConfig","kind":13},{"line":78,"name":"$getConfig","containerName":"getDBConfig","kind":13}],"kind":12,"range":{"start":{"line":69,"character":0},"end":{"line":84,"character":9999}},"signature":{"label":"getDBConfig($self)","parameters":[{"label":"$self"}],"documentation":""},"containerName":"main::","line":69,"definition":"sub","detail":"($self)","name":"getDBConfig"},{"kind":12,"line":72,"name":"DB"}],"version":5}