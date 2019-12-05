// Apex supports multiple interfaces but not multiple inheritance
public abstract class Shape implements Calculatable, Drawable {
  private Integer numberOfSides;

  public Integer getNumberOfSides(){
      return numberOfSides;
  }

  public void setNumberOfSides(Integer numberOfSides) {
      this.numberOfSides = numberOfSides;
  }
}
