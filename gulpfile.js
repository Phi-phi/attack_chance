var gulp = require('gulp');
var webpack = require('gulp-webpack');
var webpackConfig = require('./webpack.config.js');

gulp.task('build', function (cb) {
  return gulp.src('app/assets/build.js')
  .pipe(webpack(webpackConfig))
  .pipe(gulp.dest(''));
});
