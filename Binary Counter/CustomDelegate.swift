//
//  CustomDelegate.swift
//  Binary Counter
//
//  Created by Tiange Wang on 9/11/18.
//  Copyright © 2018 Tiange Wang. All rights reserved.
//

protocol CountDelegate: class {
    func tapMinus(_ tag: Int)
    func tapPlus(_ tag: Int)
}
