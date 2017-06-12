//
//  Header.h
//  AudioUnit
//
//  Created by Period 2 on 5/26/17.
//  Copyright © 2017 Period 2. All rights reserved.
//
#import <Cocoa/Cocoa.h>

@class piano;

@protocol FilterViewDelegate <NSObject>
-(void) filterViewDidChange:(FilterView *)sender frequency:(double) frequency;
-(void) filterViewDidChange:(FilterView *)sender resonance:(double) resonance;
-(void) filterViewDataDidChange:(FilterView *)sender;
@end

@interface FilterView : NSView
@property (nonatomic) float resonance;
@property (nonatomic) float frequency;
@property (weak)NSObject<FilterViewDelegate> *delegate;

-(NSArray<NSNumber*>*)frequencyDataForDrawing;
-(void)setMagnitudes:(NSArray<NSNumber*>*) magnitudes;

@end
