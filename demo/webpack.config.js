const path = require('path');

module.exports = {

  entry: './src/js/App.js',
  output: {
    path: path.resolve(__dirname, './dist/js'),
    filename: "[name]-packed.js",
  },
  mode: 'development',
  devtool: 'source-map',

  resolve: {
    alias: {
      'substance-texture$': path.resolve(__dirname, 'node_modules/substance-texture/dist/texture.js'),
    }
  }
};

