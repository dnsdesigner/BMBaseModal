//
//  BMBaseModal.swift
//  estudo Modal
//
//  Created by Dennis de Oliveira on 23/01/15.
//  Copyright (c) 2015 Dennis de Oliveira. All rights reserved.
//

import UIKit

class BMBaseModalOwner {
    let modalOwner: BMBaseModal
    
    init(modalOwner: BMBaseModal) {
        self.modalOwner = modalOwner
        //println("Init BaseModalOwner")
    }
}

class BMBaseModal: UIViewController {
    
    // Crio o arquivo que ficará responsável pelo objeto
    var baseModalOwner: BMBaseModalOwner!
    
    // Propriedades que virão da Xib
    var baseModalContentView: UIView = UIView(frame: CGRectMake(0, 0, 250, 250))
    
    //Propriedades da classe
    var baseModalBackground:UIColor = UIColor.blackColor()
    var baseModalBackgroundAlpha: CGFloat = 0.5
    
    
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    required override init() {
        super.init()
        
        // Adiciona a content view na view principal
        self.view.addSubview(self.baseModalContentView)
        
        // Inicializar Background
        self.view.frame = UIScreen.mainScreen().bounds
        self.view.backgroundColor = self.baseModalBackground.colorWithAlphaComponent(self.baseModalBackgroundAlpha)
        
        // Inicializar Content View
        self.baseModalContentView.center = self.view.center
        self.baseModalContentView.backgroundColor = UIColor.yellowColor()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName:nibNameOrNil, bundle:nibBundleOrNil)
    }
    
    // #pragma mark - Métodos da classe
    
    func showModal() {
        
        // Adiciona a view principal na tela do app
        self.view.alpha = 0
        
        let window = UIApplication.sharedApplication().keyWindow?.subviews.first as UIView
        window.addSubview(self.view)
        //view.frame = rv.bounds
        
        // Delego a propriedade deste objeto para a classe BaseModalViewOwner
        self.baseModalOwner = BMBaseModalOwner(modalOwner: self)
        
        // Adiciono um timer para fechar sozinho para teste
        NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: Selector("hideModal"), userInfo: nil, repeats: false)
        
        // Crio uma animação para apresentar a tela
        UIView.animateWithDuration(0.2, animations: {
                self.view.alpha = 1
            }, completion: { finished in
        })
    }
    
    func hideModal() {
        UIView.animateWithDuration(0.2, animations: {
            self.view.alpha = 0
            }, completion: { finished in
                self.view.removeFromSuperview()
        })
    }
}
