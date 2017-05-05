//
//  ViewController.m
//  MyOpenGl
//
//  Created by Oleh Makhobei on 5/5/17.
//  Copyright © 2017 Oleh Makhobei. All rights reserved.
//

#import "ViewController.h"
#import "RWTBaseEffect.h"
#import "RWTVertex.h"
@interface ViewController ()

@end

@implementation ViewController{
    GLuint _vertexBuffer;
    RWTBaseEffect *shader;
}


- (void)viewDidLoad {
    [super viewDidLoad];

    GLKView *view = (GLKView *) self.view;
    view.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    
    [self setupShader];
    [self setupVertexBuffer];
    
}



-(void) setupVertexBuffer {
    const static RWTVertex vertices[] =  {
        {{-1.0,-1.0,0}},
        {{1.0,-1.0,0}},
        {{0,0,0}},
    };
    
    glGenBuffers(1, &_vertexBuffer);
    glBindBuffer(GL_ARRAY_BUFFER, _vertexBuffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
}

-(void) setupShader{
    shader =  [[RWTBaseEffect alloc]initWithVertexShader:@"RWTSimpleVertex.glsl" fragmentShader:@"RWTSimpleFragment.glsl"];
    

}


-(void) glkView:(GLKView *)view drawInRect:(CGRect)rect{
    glClearColor(1.0, 0, 1.0, 1.0);
    glClear(GL_COLOR_BUFFER_BIT);
    
    
    
    
       }



@end
