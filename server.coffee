app = require('express')()
server = require('http').createServer(app)
io = require('socket.io').listen(server)
io.set 'log level', 1

server.listen 5000

app.get '/', (req, res) ->
  res.sendfile __dirname + '/index.html'

for f in ['avos_logo.png', 'coffee-script.js', 'jquery-1.9.0.min.js', 'lodash.min.js', 'raphael-min.js']
  do (f) -> app.get '/'+f, (req, res) ->
    res.sendfile __dirname + '/' + f

io.sockets.on 'connection', (socket) ->
  socket.on 'dot', (data) ->
    socket.broadcast.emit 'dot', data
