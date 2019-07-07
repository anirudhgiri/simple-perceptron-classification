int trainingIndex = 0;
Perceptron p;
Point[] points = new Point[150];
void setup() {
  size(600,600);
  
  p = new Perceptron();
  
  for(int i = 0; i<points.length; i++)
    points[i] = new Point();
  
}

void draw() {
  background(255);
  
  stroke(0);
  line(0,0,width,height);
  
  for(Point pt : points)
    pt.show();
    
  for(Point pt : points){
    float[] inputs = {pt.x,pt.y};
    int target = pt.label;
    int guess = p.guess(inputs);
    if(target == guess)
      fill(0,255,0);
    else 
      fill(255,0,0);
      
      noStroke();
      ellipse(pt.x,pt.y,6,6);
  }
  
  Point training = points[trainingIndex];
  float[] inputs = {training.x,training.y};
  int target = training.label;
  p.train(inputs,target);
  trainingIndex++;
  if(trainingIndex == points.length)
    trainingIndex = 0;
}
