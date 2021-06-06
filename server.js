var webpack = require('webpack');
var WebpackDevServer = require('webpack-dev-server');
var config = require('./webpack.config');

const port = process.env.PORT || 3000;
new WebpackDevServer(webpack(config), {
  publicPath: config.output.publicPath,
  hot: true,
  historyApiFallback: true
}).listen(3000, '127.0.0.1', function (err, result) {
  if (err) {
    return console.log(err);
  }
  console.log('Hello world listening on port', port);
  console.log('Listening at 127.0.0.1');
});