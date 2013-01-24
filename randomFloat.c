//
//  randomFloat.c
//  Curate
//
//  Created by Constantine Karlis on 13/06/12.
//

#include "stdlib.h"
#include "randomFloat.h"

double randomFloat(void)
{
    return (double)arc4random() / (ARC4RANDOM_MAX+1);
}