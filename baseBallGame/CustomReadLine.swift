//
//  CustomReadLine.swift
//  baseBallGame
//
//  Created by 전성진 on 6/13/24.
//
class CustomReadLine { //readLine
    func customReadLine(_ msg: String) -> [Int] {
        print(msg)
        if let str = readLine(), str.count == 3 {
            let setArr: Set = Set(str)
            if setArr.count != 3 {
                return customReadLine("중복된 숫자는 입력할수 없습니다.")
            }
            
            var arr: [Int] = []
            for i in str {
                if let num = Int(String(i)) {
                    arr.append(num)
                } else {
                    return customReadLine("숫자만 입력해 주세요.")
                }
            }
            
            return arr
        } else {
            return customReadLine("3자리 숫자를 입력해 주세요.")
        }
    }
}
