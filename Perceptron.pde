class Perceptron {
  float[] weights = new float[2];
  float learningRate = 0.1;
  Perceptron() {
    for (int i=0; i<weights.length; i++)
      weights[i] = random(-1, 1);
  }

  //activation function
  int sign(float n) {
    return (n>=0)? 1 : -1;
  }

  int guess(float[] inputs) {
    float sum = 0;
    for (int i=0; i<weights.length; i++)
      sum+= inputs[i]*weights[i];
    return sign(sum);
  }
  
  void train(float[] inputs , int target){
    int guess = guess(inputs);
    int error = guess - target;
    
    for(int i=0; i<weights.length; i++)
     weights[i] += (error*-1)*inputs[i] * learningRate;
    
  }
}
