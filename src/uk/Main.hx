package uk;
import js.Browser;
import htmlHelper.tools.DivertTrace;
import htmlHelper.canvas.CanvasWrapper;
import htmlHelper.canvas.Surface;
import uk.UK;
import uk.CanvasUK;
class Main {
    var canvasWrapper:  CanvasWrapper;
    var surface:        Surface;
    var divertTrace:    DivertTrace;
    public static function main(){
        new Main();
    }
    public function new(){
        divertTrace = new DivertTrace();
        var canvas = new CanvasWrapper();
        canvas.width  = 1024;
        canvas.height = 768;
        Browser.document.body.appendChild( cast canvas );
        surface = new Surface({ x: 10, y: 10, me: canvas.getContext2d() });
        var uk = new CanvasUK( surface );
        uk.draw();
    }
}