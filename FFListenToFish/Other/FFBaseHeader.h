//
//  FFBaseHeader.h
//  FFListenToFish
//
//  Created by 石燚 on 2017/12/18.
//  Copyright © 2017年 SingYi. All rights reserved.
//

#ifndef FFBaseHeader_h
#define FFBaseHeader_h


#define kScreen_width ([UIScreen mainScreen].bounds.size.width)
#define kScreen_height ([UIScreen mainScreen].bounds.size.height)
#define kNavigation_height CGRectGetMaxY(self.navigationController.navigationBar.frame)

#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:b / 255.0 alpha:a]
#define RGBCOLOR(r,g,b) RGBACOLOR(r,g,b,1)
#define TABBARCOLOR RGBCOLOR(247,247,247)
#define BOX_GRAYCOLOR RGBCOLOR(230,230,230)
#define NAVGATION_BAR_COLOR RGBCOLOR(250,121,34)
#define BACKGROUND_COLOR RGBCOLOR(239, 240, 241)


#endif /* FFBaseHeader_h */
