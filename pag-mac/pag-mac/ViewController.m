//
//  ViewController.m
//  pag-mac
//
//  Created by kevingpqi on 2023/7/6.
//

#import "ViewController.h"

#import <libpag/PAGView.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    // Do any additional setup after loading the view.
    NSString* path = [[NSBundle mainBundle] pathForResource:@"alpha" ofType:@"pag"];
    PAGFile* pagFile = [PAGFile Load:path];
    if ([pagFile numTexts] > 0) {
        PAGText* textData = [pagFile getTextData:0];
        textData.text = @"hah哈 哈哈哈哈👌하";
        [pagFile replaceText:0 data:textData];
    }

    if ([pagFile numImages] > 0) {
        NSString* filePath = [[NSBundle mainBundle] pathForResource:@"mountain" ofType:@"jpg"];
        PAGImage* pagImage = [PAGImage FromPath:filePath];
        if (pagImage) {
            [pagFile replaceImage:0 data:pagImage];
        }
    }
    
    PAGView *pagView = [[PAGView alloc] initWithFrame:self.view.bounds];
    [pagView setAutoresizingMask:kCALayerWidthSizable|kCALayerHeightSizable];
    [pagView setPath:path];
    [pagView setRepeatCount:-1];
    [pagView play];
    [pagView setComposition:pagFile];
    
    [self.view addSubview:pagView];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
