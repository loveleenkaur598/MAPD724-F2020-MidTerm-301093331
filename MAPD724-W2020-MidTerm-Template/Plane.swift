//Plane.swift
//Name: Loveleen Kaur
//Student Id: 301093331

import SpriteKit

class Plane: GameObject
{
    // constructor
    init()
    {
        super.init(imageString: "plane1", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func CheckBounds()
    {
        // right boundary
        if(self.position.y >= 180 - self.halfWidth!)
        {
            self.position.y = 180 - self.halfWidth!
        }
        
        // left boundary
        if(self.position.y <= -180 + self.halfWidth!)
        {
            self.position.y = -180 + self.halfWidth!
        }
    }
    
    override func Reset()
    {
        
    }
    
    override func Start()
    {
        self.zPosition = 2
        let rotate = SKAction.rotate(byAngle: -1.5708, duration: 0)
        self.run(rotate)
    }
    
    override func Update()
    {
        self.CheckBounds()
    }
    
    func TouchMove(newPos: CGPoint)
    {
        self.position = newPos
    }
}
