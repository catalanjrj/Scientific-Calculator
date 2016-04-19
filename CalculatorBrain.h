//
//  CalculatorBrain.h
//  Scientific
//
//  Created by Jorge Catalan on 4/19/16.
//  Copyright © 2016 Jorge Catalan. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CalculatorBrain : NSObject

typedef enum
{
    OperatorTypeNone,
    OperatorTypeAddition,
    OperatorTypeSubtraction,
    OperatorTypeMultiplication,
    OperatorTypeDivision
} OperatorType;

@property(strong,nonatomic)NSMutableString *operand1String;
@property(strong,nonatomic)NSMutableString *operand2String;

@property(assign) float operand1;
@property(assign) float operand2;
@property(assign) OperatorType operatorType;
@property(assign) BOOL userIsTypingNumber;


-(NSString*)executeOperationOnOperands;
@end


//AC = reset
//0...9 = make bigger number
//. = decimal
// +,-,x,÷ = store contens of Lable set operator type clear contents of Label
//= = run the operations set contens of Label


