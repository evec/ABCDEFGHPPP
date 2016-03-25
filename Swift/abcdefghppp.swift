//: Tested on Xcode 7.3 Playground

import Cocoa


var p = 1;

// g start from 1 because no 0 and p=1
for g in 2...9{
    for h in 0...9{
        if h==p||g==h{
            continue}
        // ef = 111-gh
            var ef = (p*100+p*10+p)-(g*10+h)
            var e = ef/10
            var f = ef%10
           if e==f{
            continue
        }
        
        //ef + cd = ab
            for c in 1...9{
                for d in 0...9{
                    if c==p||d==p||c==e||d==e||c==f||d==f||c==g||d==g||c==h||d==h||c==d{
                        continue}
                        var ab = ef+c*10+d
                        if ab>99{
                            break}
                    
                            var a = ab/10
                            var b = ab%10
                                if a==p||b==p||a==e||b==e||a==f||b==f||a==g||b==g||a==h||b==h||a==c||b==c||a==d||a==d||a==b{
                                    continue}
                                print("AB \(a)\(b)- CD \(c)\(d) = EF \(e)\(f) +GH \(g)\(h) = \(p)\(p)\(p)")
                    
                }
            }
        
    }
}
