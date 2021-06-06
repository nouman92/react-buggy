var webpack = require('webpack');
var WebpackDevServer = require('webpack-dev-server');
var config = require('./webpack.config');
const app = express();
const port = process.env.PORT || 3000;
new WebpackDevServer(webpack(config), {
  publicPath: config.output.publicPath,
  hot: true,
  historyApiFallback: true
}).listen(3000, '0.0.0.0', function (err, result) {
  if (err) {
    return console.log(err);
  }
  
  console.log('Listening at 0.0.0.0');
});

app.listen(3000, () => {
  console.log('Hello world listening on port', port);
});