boolean circleOver = false;
int circleX, circleY;
int circleSize=100;
color baseColor, currentColor;

void setup() {
  size(600, 600);
  circleX=width/2;
  circleY=height/2;
  baseColor=1;
  currentColor=baseColor;
  noStroke();
}

void draw() {
  update(mouseX, mouseY);
  background(currentColor);
  ellipse(circleX, circleY, circleSize, circleSize);
  fill(#FF0000);
}

void update(int x, int y) {
  if (overCircle(circleX, circleY, circleSize)) {
    circleOver=true;
  } else {
    circleOver=false;
  }
}

void mousePressed() {
  if (circleOver) {
    currentColor=color(random(255), random(255), random(255));
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x-mouseX;
  float disY = y-mouseY;
  if (sqrt(sq(disX)+sq(disY)) < diameter/2) {
    return true;
  } else {
    return false;
  }
}

