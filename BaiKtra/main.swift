//
//  main.swift
//  BaiKtra
//
//  Created by Nguyễn Đình Việt on 03/12/2021.
//

import Foundation

func bai1(){
    print("Chương trình minigame random")
    print()
    let random = Int.random(in: 1...100)
    
    var n:Int
    repeat{
        print("Nhập số bất kì từ 1 đến 100: ", terminator: "")
        let number = Int(readLine() ?? "") ?? 0
        n = number
    }while(n < 0 || n > 100)
    print("Số random của chương trình là: ", terminator: "")
    print(random)
    if(n == random){
        print("Chúc mừng bạn bạn quá giỏi, quá chính xác")
    }
    if(n > random){
        print("Bạn thiếu chút may mắn mất rồi, số bạn đưa ra quá lớn")
    }
    if(n < random){
        print("May mắn đã không đứng về phía bạn mất rồi, số bạn đưa ra quá nhỏ")
    }
}

bai1()

func bai2(){
    print("Nhập số km mà bạn thích đi, bao nhiêu cũng được: ", terminator: "")
    let x = Float(readLine() ?? "") ?? 0
    var soTien: Float = 0
    if(x == 1){
        soTien = 5000
        print("Số tiền bạn phải thanh toán là \(soTien) đồng")
    }
    if(x > 1 && x <= 31){
        soTien = 5000 + (x-1)*4000
        print("Số tiền bạn phải thanh toán là \(soTien) đồng")
    }
    if(x > 31){
        soTien = 5000 + 30*4000 + (x-31)*3000
        print("Số tiền bạn phải thanh toán là \(soTien) đồng")
    }
}

bai2()

func bai3(){
    
    var nam: Int
    var thang: Int
    repeat{
        print("Nhập năm mà bạn yêu thích nhất, nhiều kỉ niệm nhất: ", terminator: "")
        let y = Int(readLine() ?? "") ?? 0
        print("Nhập tháng mà bạn ghét nhất: ", terminator: "")
        let x = Int(readLine() ?? "") ?? 0
        nam = y
        thang = x
    }while(thang < 1 || thang > 12 || nam < 0)
    
    if(thang==1 || thang==3 || thang==5 || thang==7 || thang==8 || thang==10 || thang==12)
    {
        print("Tháng \(thang) có 31 ngày")
    }
    if(thang==4 || thang==6 || thang==9 || thang==11)
    {
        print("Tháng \(thang) có 30 ngày")
    }
    if((nam % 4 == 0 && nam % 100 != 0) || nam % 400 == 0 )
    {
        if(thang == 2)
        {
            print("Tháng 2 có 29 ngày")
        }
    }
    if(nam % 4 != 0){
        if(thang == 2){
            print("Tháng 2 có 28 ngày")
        }
    }
}

bai3()

func bai4(){
var Numbers = [4,5,-8,10,20,9,18,100]
    for i in 0..<Numbers.count{
        for j in i+1..<Numbers.count{
            if(Numbers[i]<Numbers[j]){
                let tg = Numbers[i]
                Numbers[i] = Numbers[j]
                Numbers[j] = tg
            }
        }
    }
    print("Mảng sau khi sắp xếp giảm dần là: ")
    for i in 0..<Numbers.count{
        print(Numbers[i])
    }
}

bai4()
