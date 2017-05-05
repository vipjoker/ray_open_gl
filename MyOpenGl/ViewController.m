//
//  ViewController.m
//  MyOpenGl
//
//  Created by Oleh Makhobei on 5/5/17.
//  Copyright © 2017 Oleh Makhobei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    GLKView *view = (GLKView *) self.view;
    view.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
}

-(void) glkView:(GLKView *)view drawInRect:(CGRect)rect{
    glClearColor(1.0, 0, 1.0, 1.0);
    glClear(GL_COLOR_BUFFER_BIT);
}



@end
