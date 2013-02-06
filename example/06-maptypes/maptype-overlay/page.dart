import 'dart:html' hide Point;
import 'package:js/js.dart' as js;
import 'package:js_wrap/js_wrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

class CoordMapType extends MapType {
  CoordMapType(Size tileSize) : super() {
    this.tileSize = jsw.retain(tileSize);
    $unsafe.getTile = new jsw.Callback.many((js.Proxy tileCoord, num zoom, js.Proxy ownerDocument) {
      if (ownerDocument.createElement("div") is js.Proxy) {
        return _getTileFromOtherDocument(Point.cast(tileCoord), zoom, new jsw.TypedProxy.fromJsProxy(ownerDocument));
      } else {
        return _getTile(Point.cast(tileCoord), zoom);
      }
    });
  }

  DivElement _getTile(Point coord, num zoom) {
    final div = new DivElement()
      ..innerHtml = coord.toString()
      ;
    div.style
      ..width = '${tileSize.width}px'
      ..height = '${tileSize.height}px'
      ..fontSize = '10'
      ..borderStyle = 'solid'
      ..borderWidth = '1px'
      ..borderColor = '#AAAAAA'
      ;
    return div;
  }

  jsw.TypedProxy _getTileFromOtherDocument(Point coord, num zoom, jsw.TypedProxy ownerDocument) {
    final div = new jsw.TypedProxy.fromJsProxy(ownerDocument.$unsafe.createElement("div"))
      ..$unsafe.innerHTML = coord.toString()
      ;
    final style = new jsw.TypedProxy.fromJsProxy(div.$unsafe.style);
    style
      ..$unsafe.width = '${tileSize.width}px'
      ..$unsafe.height = '${tileSize.height}px'
      ..$unsafe.fontSize = '10'
      ..$unsafe.borderStyle = 'solid'
      ..$unsafe.borderWidth = '1px'
      ..$unsafe.borderColor = '#AAAAAA'
      ;
    return div;
  }
}

GMap map;
LatLng chicago;

void main() {
  js.scoped(() {
    chicago = jsw.retain(new LatLng(41.850033,-87.6500523));

    final mapOptions = new MapOptions()
      ..zoom = 10
      ..center = chicago
      ..mapTypeId = MapTypeId.ROADMAP
      ;
    map = jsw.retain(new GMap(query("#map_canvas"), mapOptions));

    // Insert this overlay map type as the first overlay map type at
    // position 0. Note that all overlay map types appear on top of
    // their parent base map.
    map.overlayMapTypes.insertAt(0, jsw.retain(new CoordMapType(new Size(256, 256))));
  });
}
