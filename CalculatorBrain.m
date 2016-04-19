//
//  CalculatorBrain.m
//  Scientific
//
//  Created by Jorge Catalan on 4/19/16.
//  Copyright © 2016 Jorge Catalan. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

-(NSString*)executeOperationOnOperands{
    if ((![self.operand1String isEqualToString:@""]) &&(![self.operand2String isEqualToString:@""]) && (self.operatorType != OperatorTypeNone)){
        float result;
        switch(_operatorType){
            case OperatorTypeAddition:
                result = self.operand1 + self.operand2;
                break;
                
                case OperatorTypeDivision:
               result= self.operand1/self.operand2;
                break;
                
            case OperatorTypeSubtraction:
                result = self.operand1 - self.operand2;
                
                break;
                
            case OperatorTypeMultiplication:
                result= self.operand1 * self.operand2;
                
                break;
                
                default:
                NSLog(@"someone has hacked our calculator!");
                return @"Hacker!";
                break;
                
        }
        return [NSString stringWithFormat:@"%f",result ];
}
    return@"Invalid";
}

@end
