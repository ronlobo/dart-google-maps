import 'dart:html' hide Point;
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

void main() {
  js.scoped(() {
    final myLatlng = new LatLng(0, 0);
    final mapOptions = new MapOptions()
      ..zoom = 18
      ..center = new LatLng(37.78313383212, -122.4039494991302)
      ..mapTypeId = MapTypeId.ROADMAP
      ;

    final map = new GMap(query('#map-canvas'), mapOptions);

    final bounds = new Map<int, List<List<int>>>();
    bounds[17] = [[20969, 20970], [50657, 50658]];
    bounds[18] = [[41939, 41940], [101315, 101317]];
    bounds[19] = [[83878, 83881], [202631, 202634]];
    bounds[20] = [[167757, 167763], [405263, 405269]];

    final imageMapType = new ImageMapType(new ImageMapTypeOptions()
      ..tileSize = new Size(256, 256)
      ..getTileUrl = (Point point, num zoomLevel) {
        if (zoomLevel < 17 || zoomLevel > 20 ||
            bounds[zoomLevel][0][0] > point.x || point.x > bounds[zoomLevel][0][1] ||
            bounds[zoomLevel][1][0] > point.y || point.y > bounds[zoomLevel][1][1]) {
          return null;
        }

        return 'http://www.gstatic.com/io2010maps/tiles/5/L2_${zoomLevel}_${point.x}_${point.y}.png';
      }
    );

    map.overlayMapTypes.push(imageMapType);
  });
}