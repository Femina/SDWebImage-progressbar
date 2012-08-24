SDWebImage
=========

Check out the original repo for more information on how to install this.

Progressbar used: https://github.com/ddeville/DDProgressView

Purpose
----------
This repo is done to implement a progressbar directly in the SDWebImage component. 


Installation
----------
Follow these instructions (original repo): https://github.com/rs/SDWebImage  


How to use
----------
You can use this component without specifying any parameters for the progressbar and it will show as in the screenshot. However if you want to modify the looks of the progressbar you need to send in a progressbarinfo object to any of these methods:

###UIImage
	- (void)setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options progressBarInfo:(ProgressBarInfo *)progressBarInfo;
	- (void)setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options success:(void (^)(UIImage *image))success failure:(void (^)(NSError *error))failure progressBarInfo:(ProgressBarInfo *)progressBarInfo;

###UIButton
	- (void)setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options progressBarInfo:(ProgressBarInfo *)progressBarInfo;
	- (void)setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options success:(void (^)(UIImage *image))success failure:(void (^)(NSError *error))failure progressBarInfo:(ProgressBarInfo *)progressBarInfo;
	- (void)setBackgroundImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options progressBarInfo:(ProgressBarInfo *)progressBarInfo;
	- (void)setBackgroundImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options success:(void (^)(UIImage *image))success failure:(void (^)(NSError *error))failure progressBarInfo:(ProgressBarInfo *)progressBarInfo;

###An example of how to use this:

	#import <SDWebImage/ProgressBarInfo.h>

	ProgressBarInfo *pbInfo = [[ProgressBarInfo alloc] init];
    pbInfo.innerColor = [UIColor greenColor];

    [cell.pic setImageWithURL:[NSURL URLWithString:@"http://url"];
                     placeholderImage:[UIImage imageNamed:@"placeholder_image.png"]
                          options:0
                          success:^(UIImage *image) {}
                          failure:^(NSError *error) {
                              NSLog(@"Couldn't download the image, Error: %@", error.localizedDescription);
                          }
                          progressBarInfo:pbInfo];

Screenshot
----------
![Screenshot of SDWebImage loading picture](https://raw.github.com/kozze89/SDWebImage-progressbar/master/Screenshot.png)
