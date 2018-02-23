var gulp = require('gulp')
    ,clean = require('gulp-clean')
    ,imagemin = require('gulp-imagemin')
    ,minify = require('gulp-minify')
    ,cssmin = require('gulp-cssmin')
    ,rename = require('gulp-rename');

gulp.task('default', ['compressJS'], function(){
    gulp.start('build-img');
    console.log('SUCCESS!');
});

gulp.task('compressJS',['compressCSS'], function() {
    return gulp.src('dist/js/**/*.js')
        .pipe(minify({
            ext:{
                src:'-debug.js',
                min:'.js'
            }
        }))
        .pipe(gulp.dest('dist/js'));
});

gulp.task('compressCSS',['copy'], function() {
    return gulp.src('dist/css/**/*.css')
    .pipe(cssmin())
    .pipe(rename({suffix: '.min'}))
    .pipe(gulp.dest('dist/css'));
});

gulp.task('copy',['clean'], function() {
    return gulp.src('assets/**/*')
        .pipe(gulp.dest('dist'));
});

gulp.task('clean', function(){
    return gulp.src('dist')
        .pipe(clean());    
});

gulp.task('build-img', function(){
    gulp.src('dist/images/**/*')
        .pipe(imagemin())
        .pipe(gulp.dest('dist/images'));
});