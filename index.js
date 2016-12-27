var net = require('net');

var server = net.createServer(function(socket) {
	socket.write('hello\r\n');
    socket.on('data',()=>{
	    socket.write('pong\r\n');        
    })
});

server.listen(7777, '127.0.0.1');