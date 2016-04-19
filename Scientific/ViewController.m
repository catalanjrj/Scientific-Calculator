//
//  ViewController.m
//  Scientific
//
//  Created by Jorge Catalan on 4/18/16.
//  Copyright © 2016 Jorge Catalan. All rights reserved.
//

#import "ViewController.h"
#import "CalculatorBrain.h"

@interface ViewController ()
{
    CalculatorBrain *brain;
}

@property (weak,nonatomic) IBOutlet UILabel *displayLabel;

-(IBAction)operandTapped:(UIButton*)sender;
-(IBAction)additionTapped:(UIButton*)sender;
-(IBAction)subtractionTapped:(UIButton*)sender;
-(IBAction)multiplicationTapped:(UIButton*)sender;
-(IBAction)divisionTapped:(UIButton*)sender;
-(IBAction)equalTapped:(UIButton*)sender;
-(IBAction)allclearTaped:(UIButton*)sender;




@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)operandTapped:(UIButton*)sender{
    
    if ([self.displayLabel.text isEqualToString:@"0"]){
        self.displayLabel.text = sender.titleLabel.text;
    }else{
        
        if([sender.titleLabel.text isEqualToString:@"."] && [self.displayLabel.text
           containsString:@"."]){
            
        }else{
        
        self.displayLabel.text =[self.displayLabel.text
                                 stringByAppendingString:sender.titleLabel.text];
        
     
    
        
        
        }
    
    }
    //self.displayLabel.text = [self.displayLabel.text integerValue] + [sender.titleLabel.text integerValue];

}
-(IBAction)additionTapped:(UIButton*)sender{
    if (!brain){ {brain = [[CalculatorBrain alloc] init];
    }
    brain.operatorType = OperatorTypeDivision;
    brain.operand1String = [self.displayLabel.text mutableCopy];
        brain.operand1 = [brain.operand1String floatValue];
         self.displayLabel.text = @"0";
   
    }
}
-(IBAction)subtractionTapped:(UIButton*)sender{
    brain.operatorType = OperatorTypeSubtraction;
    brain.operand1String = [self.displayLabel.text mutableCopy];
    brain.operand1 = [brain.operand1String floatValue];
     self.displayLabel.text = @"0";
    


}
-(IBAction)multiplicationTapped:(UIButton*)sender{
    brain.operatorType = OperatorTypeMultiplication;
    brain.operand1String = [self.displayLabel.text mutableCopy];
    brain.operand1 = [brain.operand1String floatValue];
     self.displayLabel.text = @"0";
    

}
-(IBAction)divisionTapped:(UIButton*)sender{
    brain.operatorType = OperatorTypeDivision;
    brain.operand1String = [self.displayLabel.text mutableCopy];
    brain.operand1 = [brain.operand1String floatValue];
     self.displayLabel.text = @"0";

}
-(IBAction)equalTapped:(UIButton*)sender{
    brain.operand2String = [self.displayLabel.text mutableCopy];
    brain.operand2 =[brain.operand2String floatValue];
    self.displayLabel.text = [brain executeOperationOnOperands];
    brain = [[CalculatorBrain alloc]init];
   //run operation
  //set the label to be the resuld
                     //get a new brain
                            
}

-(IBAction)allclearTaped:(UIButton*)sender{
    self.displayLabel.text = @"0";
    //reset the brain!!



}


@end
