//
//  ViewController.m
//  BtapArray2
//
//  Created by Do Minh Hai on 8/19/15.
//  Copyright (c) 2015 Do Minh Hai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSMutableString* Kieuchu[5];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Thongtinkieuchu+= "khong " ;
    int hangnghin, hangtram , hangchuc, hangdonvi;
    int sothu[5]={5, 10, 17, 1003, 1100};
    for (int i=0 ; i<5; i++)
    {
        Kieuchu[i] = [NSMutableString stringWithString:@""];
    }
    for (int i =0; i <5; i++)
    {
        if (sothu[i]/1000>=1)
        {
            hangnghin=sothu[i]/1000;
            [self Chuyen:hangnghin and:i];
            [Kieuchu[i] appendString:@" nghin "];
            //printf(" nghin ");
        }
        if (sothu[i]/100>=1) {
            hangnghin=sothu[i]/1000;
            if ((sothu[i]-hangnghin*1000)!=0)
            {
                hangtram=(sothu[i]- hangnghin*1000)/100;
                [self Chuyen:hangtram and:i];
                [Kieuchu[i] appendString:@" tram "];
                //printf(" tram ");
            }
        }
        if (sothu[i]/10>1) {
            hangtram=sothu[i]/100;
            if ((sothu[i]-hangtram*100)!=0)
            {
                hangchuc=(sothu[i]-hangtram*100)/10;
                if (hangchuc%10!=0)
                {
                    [self Chuyen:hangchuc and:i];
                    [Kieuchu[i] appendString:@" muoi "];
                    //printf(" muoi ");
                }else
                    {
                        [Kieuchu[i] appendString:@" linh "];
                        //printf(" linh ");
                    }
            }
            
        }
        if (sothu[i]/10==1)
        {
            [Kieuchu[i] appendString:@" muoi "];
            //printf("muoi ");
        }
        if (sothu[i]>=0 && (sothu[i]-10)!=0)
        {
            hangchuc=sothu[i]/10;
            if ((sothu[i]-hangchuc*10)!=0)
            {
                hangdonvi=sothu[i]- hangchuc*10;
                [self Chuyen:hangdonvi and:i];
            }
        }
            }
    for (int i=0; i<5; i++)
    {
        NSLog(@"%d : %@",sothu[i],Kieuchu[i]);
    }
  }

-(void) Chuyen : (int) n and: (int) m
{
    switch (n) {
        case 1:
            [Kieuchu[m] appendString:@" mot "];
           // printf("mot");
            break;
        case 2:
            [Kieuchu[m] appendString:@" hai "];
           // printf("hai");
            break;
        case 3:
            [Kieuchu[m] appendString:@" ba "];
          //  printf("ba");
            break;
        case 4:
            [Kieuchu[m] appendString:@" bon "];
            //  printf("bon");
            break;
        case 5:
            [Kieuchu[m] appendString:@" nam "];
            // printf("nam");
            break;
        case 6:
            [Kieuchu[m] appendString:@" sau "];
            //  printf("sau");
            break;
        case 7:
            [Kieuchu[m] appendString:@" bay "];
            // printf("bay");
            break;
        case 8:
            [Kieuchu[m] appendString:@" tam "];
            //  printf("tam");
            break;
        case 9:
            [Kieuchu[m] appendString:@" chin "];
            //  printf("chin");
            break;
        case 0:
            [Kieuchu[m] appendString:@" khong "];
            //  printf("khong");
            break;
        default:
            break;
    }
}

@end
