var net = require('net');

var server = net.createServer(function(socket) {
	socket.write('hello\r\n');
    socket.on('data',()=>{
	    socket.write('pong\r\n');        
    })
    socket.on('error',()=>{})
});

server.listen(7777);