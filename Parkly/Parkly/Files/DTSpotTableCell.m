//
//  DTSpotTableCell.m
//  Parkly
//
//  Created by Shelby Vanhooser on 2/25/14.
//  Copyright (c) 2014 DevTeam14. All rights reserved.
//

#import "DTSpotTableCell.h"

@implementation DTSpotTableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)initWithParkingSpot:(DTParkingSpot*)spot
{
  self.price.text = [NSString stringWithFormat:@"$ %.2f", [spot.price floatValue]];
  self.spotDate.text = [NSString stringWithFormat:@"%@", [NSDateFormatter localizedStringFromDate:spot.date dateStyle:NSDateFormatterShortStyle timeStyle:NSDateFormatterNoStyle]];
  self.spotType.text = spot.spotType;
}

@end