//XYscope by Ted Davis, 2018.
import xyscope.*;
import ddf.minim.*; 

XYscope xy;

void setupXYscope() {
  xy = new XYscope(this);
}


void updateXYscope() {
  xy.buildWaves();

}
