xquery version "1.0-ml";

module namespace ex1="﻿http://example.org/mine/";

declare namespace rxq="﻿http://exquery.org/ns/restxq";

declare function ex1:raw1(){
()
};



declare %rxq:content-type('text/html') %rxq:GET %rxq:path('/test/a/') function ex1:b($test) {
<html>
<body>
<h1>Function b</h1>
test: {$test}
</body>
</html>
};


declare %rxq:content-type('text/html') %rxq:GET %rxq:path('/test/(.+)/') function ex1:a($test) {
<html>
<body>
<h1>Function a</h1>
test: {$test}
</body>
</html>
};


declare %rxq:content-type('text/html') %rxq:GET %rxq:path('/home/(.*)/(\d{4,7})/') function ex1:homepage($test1, $test2) {
<html>
<body>
<h1>homepage</h1>
test1: {$test1}<br/>
test2: {$test2}<br/>
</body>
</html>
};

declare %rxq:content-type('text/html') %rxq:GET %rxq:path('/') function ex1:allwebpages() {
<html>
<body>
<h1>All web pages</h1>
</body>
</html>
};