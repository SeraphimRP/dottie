#!/usr/bin/env bash
#	default color: 178984
oldglyph=#361e3c
newglyph=#470936

#	Front
#	default color: 36d7b7
oldfront=#693c75
newfront=#8f126e

#	Back
#	default color: 1ba39c
oldback=#482950
newback=#620d4b

sed -i "s/#524954/$oldglyph/g" $1
sed -i "s/#9b8aa0/$oldfront/g" $1
sed -i "s/#716475/$oldback/g" $1
sed -i "s/$oldglyph;/$newglyph;/g" $1
sed -i "s/$oldfront;/$newfront;/g" $1
sed -i "s/$oldback;/$newback;/g" $1
