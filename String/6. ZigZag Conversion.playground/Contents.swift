
//https://segmentfault.com/a/1190000005751185
class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        var convertedStr: String = ""
        let arrayStr = Array(s)
        let magicNum = 2*numRows - 2
        var initialDistance = magicNum
        if numRows == 1
        {
            return s
        }
        for i in 0..<numRows
        {
            convertedStr.append(fill(start: i, magic: magicNum,  initalDistance: initialDistance, charArray: arrayStr))
            initialDistance = initialDistance - 2
            // print("initialDistance\(initialDistance)")
        }
        return convertedStr
    }
    
    func fill(start: Int,magic:Int,  initalDistance:Int,charArray: [Character]) -> String
    {
        var str = ""
        var _initalDistance : Int = initalDistance
        var _start = start
        
        while  _start < charArray.count
        {
            if _initalDistance == 0
            {
                _initalDistance = magic
            }
            
            str.append(charArray[_start])
            _start = _start + _initalDistance
            _initalDistance = magic - _initalDistance
            
        }
        return str
        
    }
}

