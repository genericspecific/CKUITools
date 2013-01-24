//
//  randomFloat.c
//  Curate
//
//  Created by Constantine Karlis on 13/06/12.
//  Copyright (c) 2012 Constantine Karlis. All rights reserved.
//

#include "stdlib.h"
#include "randomFloat.h"

double randomFloat(void)
{
    return (double)arc4random() / (ARC4RANDOM_MAX+1);
}