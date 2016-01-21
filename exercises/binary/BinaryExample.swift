// Foundation not needed

// Apple Swift version 2.1

extension Int{
    init(_ value:Binary?){
        if let value = value {
         self = value.toDecimal
        } else {
        self = 0 }
    }
}


struct Binary {
    private var UIntValue:UInt = 0
    private var toDecimal:Int {get {return Int(UIntValue)}}
    private func bi2Uint(input:String) -> UInt?{
        let orderedInput = Array(input.characters.reverse())
        var tempUInt:UInt = 0
        for (inx,each) in orderedInput.enumerate(){
            if each == "1" {
                tempUInt += UInt(0x1 << inx)
            }
            if (each != "0" && each != "1") {
                return nil
            }
        }
        return tempUInt
    }
    
    init?(_ input:String){
        if bi2Uint(input) != nil {
        self.UIntValue = bi2Uint(input)!
        } else {
        return nil
        }
        
    }
}