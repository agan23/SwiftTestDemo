/**
 * @Name: ViewController.swift
 * @Description:
 * @Author: iBro
 * @Date: 2020/4/7
 * @Copyright: Copyright © 2020  iBrother 李彦兵. All rights reserved.
 */


import UIKit
@_exported import RxSwift
@_exported import RxCocoa

class Fell<E> {
    
}

class Swll<E> {
    func sellAll(obs: Fell<E>) -> String {
        return "Sell"
    }
}

struct FellS<Element> {
    
}

enum Type<E> {
    case bye(E)
    case sell
    case sell2
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        test()
        
        let fe = Fell<Any>()
        let se = Swll().sellAll(obs: fe)
        print(se)
        
//        let ob = Observable.create { (<#AnyObserver<_>#>) -> Disposable in
//            <#code#>
//        }
        
        let a = Type<Any>.bye(1)
        let b = Type<Any>.bye(2)
        let c = Type<Any>.bye("2")
        let d = Type<Any>.sell
        
        findWitchOneIsRight(a)
        findWitchOneIsRight(b)
        findWitchOneIsRight(c)
        findWitchOneIsRight(d)
        
        let f1 = Fell<Any>()
        let f2 = FellS<Any>()
        
//        print(String.init(format: "%p", f1 as! CVarArg))
        print("%p", f1)
        print("%p", f2)
        print("Hello")
//        let ob = Observable<Any>.create { (observer) -> Disposable in
//            observer.onNext([1, 2, 3, 4])
//            observer.onCompleted()
//            return Disposables.create()
//        }
//
//        ob.subscribe(onNext: { (text) in
//            print("订阅到:\(text)")
//        }, onError: { (error) in
//            print("error: \(error)")    //当发生错误时，会回调这里
//        }, onCompleted: {
//            print("完成")
//        }) {
//            print("销毁")
//        }
//
//        let emptySequence = Observable<Int>.empty()
//
//        _ = emptySequence
//            .subscribe { event in
//                print(event)
//        }
//
//        //
//        let error = NSError(domain: "Test", code: -1, userInfo: nil)
//
//        let erroredSequence = Observable<Int>.error(error)
//
//        _ = erroredSequence
//            .subscribe { event in
//                print(event)
//        }
////        //
////        let intervalSequence = Observable<Int>.interval(3, scheduler: MainScheduler.instance)
////        _ =  intervalSequence.subscribe({ (event) in
////            print(event)
////        })
//
//        //
//        let singleElementSequence = Observable.just(32)
//        _ = singleElementSequence.subscribe({ (event) in
//            print(event)
//        })
//        /* : Observable<Int> */
//        let sequenceOfElements = Observable.of(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
//
//        _ = sequenceOfElements
//            .subscribe { event in
//                print(event)
//        }
//
//        //
//        let rangeSequence = Observable.range(start: 1, count: 10)
//
//        _ = rangeSequence.subscribe { event in
//            print(event)
//        }
        
        
        
        //
//        Observable.of(1, 2, 4)
//            .flatMap { self.fetch(i: $0) }
//         .subscribe {
//            print($0)
//        }.disposed(by: DisposeBag())
        let sequenceToSum = Observable.of(0, 1, 2, 3, 4, 5)
//        sequenceToSum
//            .reduce(0) { acum, elem in
//                acum + elem
//            }
//            .subscribe {
//                print($0)
//            }.disposed(by: DisposeBag())
        
//
//        Observable.create(<#T##subscribe: (AnyObserver<_>) -> Disposable##(AnyObserver<_>) -> Disposable#>)
//
//        sequenceToSum
//            .buffer(timeSpan: 5, count: 2, scheduler: MainScheduler.instance)
//            .subscribe {
//                print($0)
//        }.disposed(by: DisposeBag())
        
        //
        //
//        let sequenceFromArray = Observable<Any>.toObservable()
////            [1, 2, 3, 4, 5].toObservable()
//
//        _ = sequenceFromArray
//            .subscribe { event in
//                print(event)
//        }
    }
    
    func fetch(i: Int) -> Observable<Int> {
        return Observable.of(i * 6)
    }

    func findWitchOneIsRight(_ type: Type<Any>) {
        switch type {
        case .bye(let a):
            print(a)
        case .sell:
            print(3)
        case .sell2:
            break
        }
    }
    

    func test() {
        let v = UIView(frame: CGRect(x: 10, y: 100, width: 100, height: 100))
        v.backgroundColor = UIColor.lightGray
        view.addSubview(v)
        self.addShadow(v: v, shadowOpacity: 0.5, shadowColor: UIColor.red, radius: 5)
    }

    /// 添加圆角和阴影 radius:圆角半径 shadowOpacity: 阴影透明度 (0-1) shadowColor: 阴影颜色
    func addShadow(v: UIView, shadowOpacity:Float, shadowColor:UIColor, radius:CGFloat) {
        v.layer.shadowColor = shadowColor.cgColor
        v.layer.shadowOpacity = shadowOpacity
        v.layer.shadowOffset = CGSize(width: 0, height: 5)
        v.layer.shadowRadius = 6
        v.layer.cornerRadius = radius
        // self.layer.masksToBounds = true // 不能使用 不然阴影会被裁剪
    }
}

