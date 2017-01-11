//
//  Header.h
//  DevChat
//
//  Created by Paul Hottell on 1/10/17.
//  Copyright © 2017 HSCS. All rights reserved.
//

#ifndef Header_h
#define Header_h

@protocol AAPLCameraVCDelegate <NSObject>

-(void)shouldEnableCameraUI:(BOOL)enable;
-(void)shouldEnableRecordUI:(BOOL)enable;
-(void)canStartRecording;
-(void)recordingHasStarted;
@end
#endif /* Header_h */
