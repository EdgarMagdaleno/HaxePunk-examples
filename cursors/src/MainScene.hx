import com.haxepunk.Scene;
import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;
import com.haxepunk.HXP;
import com.haxepunk.utils.Cursor;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;
import com.haxepunk.screen.ScaleMode;

class MainScene extends Scene
{
	public override function begin()
	{
		enableScale();

		var blueBox = new Entity(114, 194, new Image("graphics/blueBox.png"));
		blueBox.setHitbox(92, 92);
		blueBox.type = "blueBox";
		add(blueBox);

		var redBox = new Entity(434, 194, new Image("graphics/redBox.png"));
		redBox.setHitbox(92, 92);
		redBox.type = "redBox";
		add(redBox);

		var blackBox = new Entity(274, 194, new Image("graphics/blackBox.png"));
		blackBox.setHitbox(92, 92);
		blackBox.type = "blackBox";
		add(blackBox);

		HXP.cursor = new MyCursor();
		Input.showCursor();
	}

	function enableScale() {
		HXP.screen.scaleMode = new ScaleMode();
		HXP.screen.scaleMode.setBaseSize(640, 480);
		HXP.resize(HXP.windowWidth, HXP.windowHeight);
	}
}