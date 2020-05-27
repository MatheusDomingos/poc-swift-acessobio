//
//  TestAcessoBioVew.swift
//  PocAcessoBioSwift
//
//  Created by Matheus Domingos on 26/05/20.
//  Copyright © 2020 Acesso Digital. All rights reserved.
//

import UIKit

class TestAcessoBioVew: UIViewController, AcessoBioDelegate {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let acessoBioManager: AcessoBioManager = AcessoBioManager(viewController: self, url: "https://crediariohomolog.acesso.io/Treinamento", apikey: "", token: "");
        acessoBioManager.openLivenessX();
        
    }
    
    func onSuccesLivenessX(_ result: LivenessXResult!) {
        let isLiveness = result.isLiveness;
        let base64 = result.base64;
        NSLog("%lu", isLiveness);
        NSLog("%lu", base64);
    }
    
    func onErrorLivenessX(_ error: String!) {
        NSLog("%@", error);
    }
    
    func onSuccesCameraFace(_ result: CameraFaceResult!) {
        NSLog("%@", result.base64);
    }
    
    func onErrorCameraFace(_ error: String!) {
        NSLog("%@", error);
    }
    
}
