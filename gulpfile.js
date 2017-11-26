var gulp         = require('gulp'),
		sass         = require('gulp-sass'),
		autoprefixer = require('gulp-autoprefixer'),
		cleanCSS    = require('gulp-clean-css'),
		rename       = require('gulp-rename'),
		browserSync  = require('browser-sync').create(),
		concat       = require('gulp-concat'),
		uglify       = require('gulp-uglify');

gulp.task('browser-sync', ['styles', 'style', 'scripts'], function() {
		browserSync.init({	
				proxy: "cr.loc/glavnaya",
				notify: false
		});
});

gulp.task('styles', function () {
	return gulp.src('sass/*.sass')
	.pipe(sass({
		includePaths: require('node-bourbon').includePaths
	}).on('error', sass.logError))
	.pipe(rename({suffix: '.min', prefix : ''}))
	.pipe(autoprefixer({browsers: ['last 15 versions'], cascade: false}))
	.pipe(cleanCSS())
	.pipe(gulp.dest('app/wp-content/themes/main-theme/css'))
	.pipe(browserSync.stream());
});

gulp.task('style', function () {
	return gulp.src('sass/main-style/style.sass')
	.pipe(sass({
		includePaths: require('node-bourbon').includePaths
	}).on('error', sass.logError))
	//.pipe(rename({suffix: '.min', prefix : ''}))
	.pipe(autoprefixer({browsers: ['last 15 versions'], cascade: false}))
	//.pipe(cleanCSS())
	.pipe(gulp.dest('app/wp-content/themes/main-theme'))
	.pipe(browserSync.stream());
});

gulp.task('scripts', function() {
	return gulp.src([
		'./app/wp-content/themes/main-theme/libs/modernizr/modernizr.js',
		'./app/wp-content/themes/main-theme/libs/jquery/jquery-1.11.2.min.js',
		'./app/wp-content/themes/main-theme/libs/waypoints/waypoints.min.js',
		'./app/wp-content/themes/main-theme/libs/animate/animate-css.js',
		])
		.pipe(concat('libs.js'))
		// .pipe(uglify()) //Minify libs.js
		.pipe(gulp.dest('./app/wp-content/themes/main-theme/js/'));
});

gulp.task('watch', function () {
	gulp.watch('sass/**/*.sass', ['styles', 'style']);
	gulp.watch('app/wp-content/themes/main-theme/libs/**/*.js', ['scripts']);
	gulp.watch('app/wp-content/themes/main-theme/js/*.js').on("change", browserSync.reload);
	gulp.watch('app/wp-content/themes/main-theme/*.html').on('change', browserSync.reload);
	gulp.watch('app/wp-content/themes/main-theme/**/*.php').on('change', browserSync.reload);

});

gulp.task('default', ['browser-sync', 'watch']);
