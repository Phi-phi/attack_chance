var gulp = require('gulp');
var webpack = require('gulp-webpack');
var webpackConfig = require('./webpack.config.js');
var browserSync = require('browser-sync');
var reload = browserSync.reload;

gulp.task('build', function (cb) {
  return gulp.src('app/assets/build.js')
    .pipe(webpack(webpackConfig))
    .pipe(gulp.dest(''));
});

gulp.task('serve', function () {
  browserSync({
    proxy: {
      target: 'http://localhost:3000'  
    },
    port: 8080
  });

  gulp.watch(['./frontend/**/*.js', './frontend/**/*.scss'], ['build', reload]);
});
