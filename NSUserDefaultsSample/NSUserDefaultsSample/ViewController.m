//
//  ViewController.m
//  NSUserDefaultsSample
//
//  Created by 廣川政樹 on 2013/04/04.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  //キーから値を取得する
  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  NSString *defaultStr = [defaults stringForKey:@"MY_KEY"];
  self.myTextField.text = defaultStr;
}

- (IBAction)inputText:(id)sender {
  //指定したキーに入力された値を保存する
  NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
  [defaults setObject: self.myTextField.text forKey:@"MY_KEY"];
  [defaults synchronize];
}

@end
