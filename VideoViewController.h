//
//  VideoViewController.h
//  ASLfish
//
//  Created by Casey Wood on 8/19/15.
//  Copyright (c) 2015 Chris Wood. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>

#import <Foundation/Foundation.h>
#import <CoreMedia/CoreMedia.h>
#import <AVFoundation/AVFoundation.h>

#import <AssetsLibrary/AssetsLibrary.h>

#define CAPTURE_FRAMES_PER_SECOND		20

@interface VideoViewController : ViewController <AVCaptureFileOutputRecordingDelegate> {

    BOOL WeAreRecording;
    
    AVCaptureSession *CaptureSession;
    AVCaptureMovieFileOutput *MovieFileOutput;
    AVCaptureDeviceInput *VideoInputDevice;
}

@property (retain) AVCaptureVideoPreviewLayer *PreviewLayer;

- (void) CameraSetOutputProperties;
- (AVCaptureDevice *) CameraWithPosition:(AVCaptureDevicePosition) Position;
- (IBAction)StartStopButtonPressed:(id)sender;
- (IBAction)CameraToggleButtonPressed:(id)sender;

@end