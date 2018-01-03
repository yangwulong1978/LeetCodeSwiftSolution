class Solution {
    func longestPalindrome(_ s: String) -> String {
        
        // var y = s.count - 1
        var maxLength = 0
        let index = s.index(s.startIndex, offsetBy: 0)
        
        var longestParlindromStr:String =  String(s[index])
        
        
        
        
        
        for i in 0..<s.count
        {
            var y = s.count - 1
            repeat
            {
                let startIndex = s.index(s.startIndex, offsetBy: i)
                let endIndex = s.index(s.startIndex, offsetBy: y )
                let startStr = String(s[startIndex])
                let endStr =  String(s[endIndex])
                // print(s[startIndex...endIndex])
                var subStr = String(s[startIndex...endIndex])
                y -= 1
                
              
                    
                    
                    var (isParlindrom, length) =  validateIfparlindrome(s: subStr)
                    
                    if isParlindrom == true
                    {
                        if maxLength < length
                        {
                            maxLength = length
                            longestParlindromStr = subStr
                        }
                    }
                
            }
                while i <= y
        }
        return longestParlindromStr
    }

    func validateIfparlindrome(s :String) -> (Bool ,Int)
    {
        var isParlindome = false
        
        if s.count == 1
        {
            
        }
        else {
            
            if s.count % 2 == 0
            {
                var count = s.count
                
                let startIndex1 = s.index(s.startIndex, offsetBy: 0)
                let endIndex1 = s.index(s.startIndex, offsetBy: count/2 - 1 )
                // let startStr = String(s[startIndex1])
                var firstStr = String(s[startIndex1...endIndex1])
                
                let startIndex2 = s.index(s.startIndex, offsetBy: count/2)
                let endIndex2 = s.index(s.startIndex, offsetBy: count - 1 )
                //let startStr = String(s[startIndex1])
                var secondStr = String(s[startIndex2...endIndex2])
                
                if firstStr == String(secondStr.reversed())
                {
                    
                    isParlindome = true
                }
            }
            else{
                //  print("s \(s)")
                var count = s.count
                
                var j = count/2 - 1
                var k = j >= 0 ? j : 0
                let startIndex1 = s.index(s.startIndex, offsetBy: 0)
                let endIndex1 = s.index(s.startIndex, offsetBy: k)
                // let startStr = String(s[startIndex1])
                var firstStr = String(s[startIndex1...endIndex1])
                
                let startIndex2 = s.index(s.startIndex, offsetBy: count/2 + 1)
                let endIndex2 = s.index(s.startIndex, offsetBy: count - 1 )
                //let startStr = String(s[startIndex1])
                var secondStr = String(s[startIndex2...endIndex2])
                
                if firstStr == String(secondStr.reversed())
                {
                    
                    isParlindome = true
                }
                
            }
        }
        return (isParlindome ,s.count)
        
    }
    
}

