var webpack = require('webpack');
var WebpackDevServer = require('webpack-dev-server');
var config = require('./webpack.config');

new WebpackDevServer(webpack(config), {
  publicPath: config.output.publicPath,
  hot: true,
  historyApiFallback: true
}).listen(3000, 'localhost', function (err, result) {
  if (err) {
    return console.log(err);
  }
  console.log('Listening at https://react-eop2gprqzq-uc.a.run.app:3000');
});

const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log('Hello world listening on port', port);
});