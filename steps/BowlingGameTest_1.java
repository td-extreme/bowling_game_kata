import junit.framework.TestCase;

public class BowlingGameTest extends TestCase {
  public void testGutterGame() throws Exception {
    Game g = new Game();
    for (int i = 0; i < 20; i++) 
      g.roll(0);
    assertEquals(0, g.score());
  }
}
