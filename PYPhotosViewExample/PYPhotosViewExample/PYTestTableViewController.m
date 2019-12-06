//
//  PYTestTableViewController.m
//  PYPhotosViewExample
//
//  Created by MakeHui on 6/12/2019.
//  Copyright © 2019 iphone5solo. All rights reserved.
//

#import "PYTestTableViewController.h"

#import <PYPhotoBrowser/PYPhotoBrowser.h>

@interface PYTestTableViewController ()

@property(nonatomic, strong)PYPhotosPreviewController *photosPreviewController;

@end

@implementation PYTestTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 2) {
        NSMutableArray *imagesM = [NSMutableArray array];
        for (int i = 0; i < 4; i++) {
            UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%02d", i + 1]];
            if (image) {
                [imagesM addObject:image];
            }
        }
        PYPhotosView *publishPhotosView = [PYPhotosView photosView];
        publishPhotosView.frame = CGRectZero;
        [self.view addSubview:publishPhotosView];
        publishPhotosView.images = imagesM;
        PYPhotoView *photoView = (PYPhotoView *)publishPhotosView.subviews[0];
        [photoView imageDidClicked:nil];
    }
}

@end
