{"vars":[{"name":"lib","containerName":"","kind":2,"line":7},{"kind":2,"line":8,"containerName":"","name":"LogCreater"},{"line":9,"kind":2,"containerName":"","name":"ReadINI"},{"name":"WriteDB","containerName":"","kind":2,"line":10},{"name":"strict","containerName":"","line":11,"kind":2},{"line":12,"kind":2,"name":"warnings","containerName":""},{"containerName":"Linux","name":"Inotify2","kind":2,"line":13},{"line":15,"definition":"my","localvar":"my","kind":13,"name":"$readINI","containerName":null},{"name":"ReadINI","kind":12,"line":15},{"kind":12,"line":15,"name":"new","containerName":"main::"},{"definition":"my","line":16,"containerName":null,"name":"$logPath","localvar":"my","kind":13},{"name":"$readINI","containerName":null,"kind":13,"line":16},{"containerName":"main::","name":"getLogPath","kind":12,"line":16},{"line":17,"definition":"my","kind":13,"localvar":"my","name":"$logCreater","containerName":null},{"name":"LogCreater","kind":12,"line":17},{"name":"new","containerName":"main::","line":17,"kind":12},{"name":"%logPath","containerName":null,"kind":13,"line":17},{"name":"logs_path","line":17,"kind":12},{"localvar":"my","kind":13,"name":"$inotify","containerName":null,"line":19,"definition":"my"},{"name":"Linux","containerName":"Inotify2","kind":12,"line":19},{"line":19,"kind":12,"containerName":"main::","name":"new"},{"containerName":null,"name":"$inotify","line":21,"kind":13},{"name":"watch","containerName":"main::","line":21,"kind":12},{"line":21,"kind":13,"containerName":null,"name":"%logPath"},{"name":"watch_folder","line":21,"kind":12},{"name":"IN_MODIFY","line":21,"kind":12},{"line":21,"kind":12,"name":"IN_CREATE"},{"kind":12,"line":21,"name":"IN_DELETE"},{"containerName":null,"name":"$dbConfig","kind":13,"localvar":"my","definition":"my","line":24},{"name":"$readINI","containerName":null,"kind":13,"line":24},{"name":"getDBConfig","containerName":"main::","kind":12,"line":24},{"name":"$dbh","containerName":null,"kind":13,"localvar":"my","definition":"my","line":25},{"name":"WriteDB","line":25,"kind":12},{"containerName":"main::","name":"new","kind":12,"line":25},{"name":"$dbConfig","containerName":null,"line":25,"kind":13},{"containerName":null,"name":"$dbConnection","kind":13,"localvar":"my","definition":"my","line":26},{"containerName":null,"name":"$dbh","line":26,"kind":13},{"line":26,"kind":12,"containerName":"main::","name":"connection"},{"localvar":"my","kind":13,"containerName":null,"name":"@events","line":29,"definition":"my"},{"line":29,"kind":13,"name":"$inotify","containerName":null},{"kind":12,"line":29,"containerName":"main::","name":"read"},{"kind":13,"localvar":"my","containerName":null,"name":"$create","line":30,"definition":"my"},{"line":31,"definition":"my","kind":13,"localvar":"my","name":"$eventFullname","containerName":null},{"kind":13,"line":31,"name":"%logPath","containerName":null},{"kind":12,"line":31,"name":"watch_folder"},{"name":"@events","containerName":null,"line":32,"kind":13},{"line":33,"definition":"my","localvar":"my","kind":13,"containerName":null,"name":"$event"},{"line":33,"kind":13,"containerName":null,"name":"@events"},{"line":34,"kind":13,"name":"$event","containerName":null},{"name":"mask","containerName":"main::","kind":12,"line":34},{"kind":12,"line":34,"name":"IN_CREATE"},{"name":"$create","containerName":null,"kind":13,"line":35},{"containerName":null,"name":"$event","kind":13,"line":36},{"line":36,"kind":12,"name":"fullname","containerName":"main::"},{"name":"$logCreater","containerName":null,"kind":13,"line":37},{"name":"writeLog","containerName":"main::","kind":12,"line":37},{"name":"$event","containerName":null,"line":38,"kind":13},{"kind":12,"line":38,"name":"fullname","containerName":"main::"},{"name":"$event","containerName":null,"kind":13,"line":40},{"kind":12,"line":40,"name":"mask","containerName":"main::"},{"name":"IN_DELETE","kind":12,"line":40},{"kind":13,"line":41,"name":"$event","containerName":null},{"name":"fullname","containerName":"main::","line":41,"kind":12},{"containerName":null,"name":"$logCreater","kind":13,"line":42},{"line":42,"kind":12,"name":"writeLog","containerName":"main::"},{"containerName":null,"name":"$event","kind":13,"line":43},{"kind":12,"line":43,"name":"fullname","containerName":"main::"},{"line":45,"kind":13,"containerName":null,"name":"$event"},{"line":45,"kind":12,"name":"mask","containerName":"main::"},{"kind":12,"line":45,"name":"IN_MODIFY"},{"kind":13,"line":46,"name":"$event","containerName":null},{"line":46,"kind":12,"name":"fullname","containerName":"main::"},{"line":47,"kind":13,"name":"$logCreater","containerName":null},{"containerName":"main::","name":"writeLog","line":47,"kind":12},{"name":"$event","containerName":null,"kind":13,"line":48},{"name":"fullname","containerName":"main::","kind":12,"line":48},{"name":"%create","containerName":null,"line":49,"kind":13},{"containerName":null,"name":"$getName","kind":13,"localvar":"my","definition":"my","line":50},{"kind":13,"line":50,"name":"$event","containerName":null},{"line":50,"kind":12,"name":"fullname","containerName":"main::"},{"name":"$getName","containerName":null,"line":51,"kind":13},{"containerName":null,"name":"$eventFullname","line":52,"kind":13},{"name":"$dbh","containerName":null,"kind":13,"line":53},{"kind":12,"line":53,"name":"write","containerName":"main::"},{"name":"$dbConnection","containerName":null,"line":53,"kind":13},{"kind":13,"line":53,"name":"$eventFullname","containerName":null},{"line":54,"kind":13,"name":"$create","containerName":null}],"version":5}