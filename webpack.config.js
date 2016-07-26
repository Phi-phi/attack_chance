var path = require('path')
var webpack = require('webpack')
var autoprefixer = require('autoprefixer')

var env = process.env.NODE_ENV || 'development'

module.exports = {
  resolve: {
    extensions: ['', '.js', '.jsx']
  },
  sassLoader: {
    includePaths: [
      path.resolve(__dirname, './frontend/stylesheets'),
      path.resolve(__dirname, './node_modules'),
    ]
  },
  entry: {
    attack: './frontend/javascripts/app.js',
  },
  output: {
    filename: 'app/assets/javascripts/build.js',
  },
  module: {
    loaders: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel-loader',
        query: {
          plugins: ["transform-react-jsx"],
          presets: ['es2015']
        }
      },
      {
        test: /.s?css$/,
        loaders: ['style', 'css?modules'],
      },

    ]
  },
}
