//
//  ViewController.swift
//  ProjEsc
//
//  Created by Keshav Raj Kashyap on 07/12/21.
//

import UIKit

class ViewController: UIViewController {

    typealias compleatuionhandler = ([String])->Void

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //first example
        //takeCompleationHandler(compleationHandler: simpleCompleationHandler)
        //second
       // downlaod(sucess: true, compleationHandler: compleationhandler)
        //3rd
        /*downlaod(sucess: true, compleationHandler: {(sucess)->Void
            in
            if sucess {
                print("download Complete")
            } else {
                print("Error")
            }
        })*/
        //4th
       /* downlaod(sucess: true, compleationHandler: {
            if $0 {
                print("download Complete")
            } else {
                print("Error")
            }
        })*/
        //5th
      /*  downlaod(sucess: true) {
          if $0 {
            print("download Complete")
            } else {
                print("Error")
            }
        }*/
        //another
       /* passingData { (task) in
            print("Finish\(task[0])")
        }*/
        ///trailing closure
        //passingData {print("passed data \($0[0])")}
//typealias
        let myArray = ["complete compleation handler","trilling closure","swift"]
        task(array: myArray) {
           print("work done of \($0[0])")
        }
        
    }
    
    //first example
    let simpleCompleationHandler:()->Void =  {
        print("From The Compleation handler!")
    }
    func takeCompleationHandler(compleationHandler:()->Void) {
        print("From the function Body")
        compleationHandler()
    }
    //another example
    func downlaod(sucess:Bool,compleationHandler:(Bool)->Void) {
       for _ in 0...100 {
         print("downloading data from sarver....")
        }
        
        compleationHandler(sucess)
    }
    
    let compleationhandler:(Bool)->Void = { (sucess) in
        if sucess {
        print("Complete download data ")
        } else {
            print("Error")
        }
        
    }
    //third example
    func passingData(Compleationhandler:([String])->Void) {
        for _ in 1...10 {
            print("Do Some work")
        }
        Compleationhandler(["Daily Swift","Making List","The Dreammer"])
    }
    //Using typealias :

    func task(array:[String],callback:compleatuionhandler) {
        for _ in 0...10 {
            print("downloading file ")
            
        }
        callback(array)
    }
    
    
}

