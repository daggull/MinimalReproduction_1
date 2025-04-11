
import flash.events.Event;
import flash.display.Sprite;
import res.ui.Frame;
import res.ui.Button;
import res.ui.Dialog;
import flash.geom.Rectangle;

class ProblemDemo1 extends Sprite {
    public function new() {
        super();

        var frame:Frame = new Frame();

        frame.gotoAndStop(0);
        frame.scale9Grid = new Rectangle(15, 15, 20, 20);
        frame.x = 10;
        frame.y = 10;
        frame.width = 600;
        frame.height = 300;
        addChild(frame);

        var button:Button;
        var button1:Button;

        button = new Button();
        button.gotoAndStop(0);
        button.scale9Grid = new Rectangle();
        button.x = 40;
        button.y = 40;
        button.width = 20;
        button.height = 20;
        addChild(button);

        button1 = new Button();
        button1.gotoAndStop(0);
        button1.scale9Grid = new Rectangle();
        button1.x = 40;
        button1.y = 90;
        button1.width = 80;
        button1.height = 20;
        addChild(button1);

        var dialog:Dialog;

        dialog = new Dialog();
        dialog.gotoAndStop(0);
        dialog.scale9Grid = new Rectangle();
        dialog.x = 30;
        dialog.y = 200;
        dialog.width = 200;
        dialog.height = 100;
        addChild(dialog);
    }
}
