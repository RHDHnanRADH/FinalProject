// Super abstract class Sequence
import java.util.Arrays;

abstract class Sequence {
  /**
   * The sequence author
   */
  abstract String author();
  
  /**
   * The sequence description
   */
  abstract String description();
  
  /**
   * Computes the nth sequence term
   */
  abstract int compute(int n);
  
  /**
   * Returns the first n seq terms as an array.
   */
  int [] toArray(int n) {
    int[] seq = new int[n];
    for (int i=0; i<n; i++)
      seq[i] = compute(i+1);
    return seq;
  }
  
  /**
   * Returns the first n seq terms as a string.
   * Sequence may then simply be printed as: println(sequence.toString(n))
   */
  String toString(int n) {
    return Arrays.toString(toArray(n));
  }
  
  // All display functions must scale the canvas properly
  
  /**
   * Display n seq terms as you wish
   */
  abstract void display(int n);
   
  /**
   * Display n seq terms as a bar chart: https://en.wikipedia.org/wiki/Bar_chart
   * Warning: Should be implemented here in the super class!
   */
  void barChart(int n) {
    //TODO misssing implementation
  }
  
  /**
   * Display n seq terms as a line chart: https://en.wikipedia.org/wiki/Line_chart
   * Warning: Should be implemented here in the super class!
   */
  void lineChart(int n) {
    //TODO misssing implementation
  }
  
  /**
   * Display n seq terms as a curve firring: https://en.wikipedia.org/wiki/Curve_fitting
   * Hint: refer to the section 'Curves' here: https://processing.org/reference/
   * Warning: Should be implemented here in the super class!
   */
  void curveFitting(int n) {
    //TODO misssing implementation
  }
}