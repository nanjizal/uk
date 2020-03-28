package uk;
import htmlHelper.canvas.Surface;
import uk.UK;
// sorry currently excludes Northern Ireland for my one technical reasons, would be nice to add
class CanvasUK{
    public var dx = 10;
    public var dy = 10;
    public var w = 400;
    public var h = 550;
    public var borderColor = 0x89B1C2;
    public var grassColor  = 0xD3EAB7;
    public var seaColor    = 0xB5E1F7;
    public var scaleX: Float = 1.;
    public var scaleY: Float = 1.;
    var surface:        Surface;
    public function new( surface: Surface ){
        this.surface = surface;
    }
    public function draw(){
        var shapes = [UK.shape1
                     ,UK.shape2
                     ,UK.shape3
                     ,UK.shape4
                     ,UK.shape5
                     ,UK.shape6
                     ,UK.shape7
                     ,UK.shape8
                     ,UK.shape9
                     ,UK.shape10
                     ,UK.shape11
                     ,UK.shape12
                     ,UK.shape13
                     ,UK.shape14
                     ,UK.shape15
                     ,UK.shape16
                     ,UK.shape17
                     ,UK.shape18
                     ,UK.shape19
                     ,UK.shape20
                     ,UK.shape21
                     ,UK.shape22];
        surface.beginFill( seaColor, 1. );
        surface.lineStyle( 1., borderColor, 1. );
        surface.moveTo( dx, dy );
        surface.lineTo( dx + w*scaleX, dy );
        surface.lineTo( dx + w*scaleY, dy + h*scaleY );
        surface.lineTo( dx, dy + h*scaleY );
        surface.endFill();
        dx += 20;
        dy += 20;
        for( si in shapes ){
            surface.beginFill( grassColor, 1. );
            surface.lineStyle( 1., borderColor, 1. );
            surface.moveTo( dx + si[ 0 ]*scaleX
                          , dy + 500*scaleY-si[ 1 ]*scaleY );
            for( i in 1...Math.round( si.length/2 ) ){
                surface.lineTo( dx + si[ i*2 ]*scaleX
                              , dy + 500*scaleY- si[ i*2 + 1 ]*scaleY );
            }
            surface.endFill();
        }
    }
}