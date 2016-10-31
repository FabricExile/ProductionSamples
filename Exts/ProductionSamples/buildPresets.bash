#!/bin/sh

rm -rfv ./Multipede/DFG/MultipedeSegment/*.canvas
rm -rfv ./Multipede/DFG/MultipedeSegment/Core
rm -rfv ./Multipede/DFG/MultipedeSegment/Getters
rm -rfv ./Multipede/DFG/MultipedeSegment/Setters
mkdir   ./Multipede/DFG/MultipedeSegment/Core
mkdir   ./Multipede/DFG/MultipedeSegment/Core/Constants
mkdir   ./Multipede/DFG/MultipedeSegment/Getters
mkdir   ./Multipede/DFG/MultipedeSegment/Setters

rm -rfv ./Multipede/DFG/Multipede/*.canvas
rm -rfv ./Multipede/DFG/Multipede/Core
mkdir   ./Multipede/DFG/Multipede/Core
mkdir   ./Multipede/DFG/Multipede/Core/Constants

cd Multipede
kl2dfg Multipede.fpm.json  ./DFG
cd ..

rm ./Multipede/DFG/kl2dfg.log -fv

