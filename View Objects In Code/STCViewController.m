//
//  STCViewController.m
//  View Objects In Code

#import "STCViewController.h"

@interface STCViewController ()
@property (strong, nonatomic) UILabel *myLabel;
@property (strong, nonatomic) UITextField *myTextField;

@end

@implementation STCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.myLabel = [[UILabel alloc] init];
    self.myLabel.frame = CGRectMake(20, 60, 280, 22);
    [self.view addSubview:self.myLabel];
    
    self.myLabel.textColor = [UIColor blueColor];
    self.myLabel.text = @"placeholder";
    
    self.myTextField = [[UITextField alloc]init];
    self.myTextField.frame = CGRectMake(20, 110, 280, 30);
    self.myTextField.placeholder = @"Type text here";
    self.myTextField.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.myTextField];
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [myButton addTarget:self action:@selector(myButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [myButton setTitle:@"press me!" forState:UIControlStateNormal];
    myButton.frame = CGRectMake(20, 160, 280, 30);
    [self.view addSubview:myButton];
}

- (void)myButtonPressed:(UIButton *)sender
{
    self.myLabel.text = self.myTextField.text;
    [self.myTextField resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
