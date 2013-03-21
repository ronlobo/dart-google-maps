// Copyright (c) 2012, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of google_maps_drawing;

abstract class _DrawingManager {
  @dartified OverlayType getDrawingMode();
  @dartified GMap getMap();
  @dartified void setDrawingMode(OverlayType drawingMode);
  @dartified void setMap(GMap map);
  @dartified void setOptions(DrawingManagerOptions options);
}

class DrawingManager extends MVCObject implements _DrawingManager {
  DrawingManager([DrawingManagerOptions opts]) : super(maps.drawing.DrawingManager, [opts]);
  DrawingManager.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override OverlayType getDrawingMode() => OverlayType.find($unsafe.getDrawingMode());
  @override GMap getMap() => GMap.cast($unsafe.getMap());

  OverlayType get drawingMode => getDrawingMode();
  GMap get map => getMap();
  set drawingMode(OverlayType drawingMode) => setDrawingMode(drawingMode);
  set map(GMap map) => setMap(map);
  set options(DrawingManagerOptions options) => setOptions(options);

  DrawingManagerEvents get on => new DrawingManagerEvents._(this);
}

class DrawingManagerEvents {
  static final CIRCLECOMPLETE = "circlecomplete";
  static final MARKERCOMPLETE = "markercomplete";
  static final OVERLAYCOMPLETE = "overlaycomplete";
  static final POLYGONCOMPLETE = "polygoncomplete";
  static final POLYLINECOMPLETE = "polylinecomplete";
  static final RECTANGLECOMPLETE = "rectanglecomplete";

  final DrawingManager _drawingManager;

  DrawingManagerEvents._(this._drawingManager);

  CircleCompleteEventListenerAdder get circleComplete => new CircleCompleteEventListenerAdder(_drawingManager, CIRCLECOMPLETE);
  MarkerCompleteEventListenerAdder get markerComplete => new MarkerCompleteEventListenerAdder(_drawingManager, MARKERCOMPLETE);
  OverlayCompleteEventListenerAdder get overlayComplete => new OverlayCompleteEventListenerAdder(_drawingManager, OVERLAYCOMPLETE);
  PolygonCompleteEventListenerAdder get polygonComplete => new PolygonCompleteEventListenerAdder(_drawingManager, POLYGONCOMPLETE);
  PolylineCompleteEventListenerAdder get polylineComplete => new PolylineCompleteEventListenerAdder(_drawingManager, POLYLINECOMPLETE);
  RectangleCompleteEventListenerAdder get rectangleComplete => new RectangleCompleteEventListenerAdder(_drawingManager, RECTANGLECOMPLETE);
}