//
//  CameraVC.swift
//  DevChat
//
//  Created by Paul Hottell on 1/10/17.
//  Copyright © 2017 HSCS. All rights reserved.
//

import UIKit
import FirebaseAuth

class CameraVC: AAPLCameraViewController, AAPLCameraVCDelegate {

    @IBOutlet weak var cameraBtn: UIButton!
    @IBOutlet weak var recordBtn: UIButton!
    @IBOutlet weak var previewView: AAPLPreviewView!
    
    override func viewDidLoad() {
        
        delegate = self
        _previewView = previewView

        super.viewDidLoad()
    
    }
    
    override func viewDidAppear(_ animated: Bool) {

        guard FIRAuth.auth()?.currentUser != nil else {
            
            performSegue(withIdentifier: "LoginVC", sender: nil)
            return
        }
    }
    
    @IBAction func recordBtnPressed(_ sender: Any) {
        toggleMovieRecording()
    }
    
    @IBAction func changeCamerabtnPressed(_ sender: Any) {
        changeCamera()
    }
    
    func shouldEnableCameraUI(_ enable: Bool) {
        cameraBtn.isEnabled = enable
        print("Should enable camera UI: \(enable)")
    }
    
    func shouldEnableRecordUI(_ enable: Bool) {
        recordBtn.isEnabled = enable
        print("Should enable record UI: \(enable)")
    }
    
    func recordingHasStarted() {
        print("Recording has started")
    }
    
    func canStartRecording() {
        print("Can start recording")
    }
    
}

