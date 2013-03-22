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

part of google_maps;

abstract class _Polyline {
  @dartified bool getDraggable();
  @dartified bool getEditable();
  @dartified GMap getMap();
  @dartified MVCArray<LatLng> getPath();
  @dartified bool getVisible();
  @dartified void setDraggable(bool draggable);
  @dartified void setEditable(bool editable);
  @dartified void setMap(GMap map);
  @dartified void setOptions(PolylineOptions options);
  @dartified void setPath(dynamic/*MVCArray.<LatLng>|Array.<LatLng>*/ path);
  @dartified void setVisible(bool visible);
}

class Polyline extends MVCObject implements _Polyline {
  static Polyline cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new Polyline.fromProxy(proxy));
  static bool isInstance(js.Proxy proxy) => js.instanceof(proxy, maps.Polyline);

  Polyline([PolylineOptions opts]) : super(maps.Polyline, [opts]);
  Polyline.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override GMap getMap() => GMap.cast($unsafe.getMap());
  @override MVCArray<LatLng> getPath() => MVCArray.castListOfSerializables($unsafe.getPath(), LatLng.cast);
  @override void setPath(dynamic/*MVCArray.<LatLng>|Array.<LatLng>*/ path) => $unsafe.setPath(path is List ? jsifyList(path) : path);

  bool get draggable => getDraggable();
  bool get editable => getEditable();
  GMap get map => getMap();
  MVCArray<LatLng> get path => getPath();
  bool get visible => getVisible();
  set draggable(bool draggable) => setDraggable(draggable);
  set editable(bool editable) => setEditable(editable);
  set map(GMap map) => setMap(map);
  set options(PolylineOptions options) => setOptions(options);
  set path(dynamic/*MVCArray.<LatLng>|Array.<LatLng>*/ path) => setPath(path);
  set visible(bool visible) => setVisible(visible);

  PolylineEvents get on => new PolylineEvents._(this);
}

class PolylineEvents {
  static final CLICK = "click";
  static final DBLCLICK = "dblclick";
  static final MOUSEDOWN = "mousedown";
  static final MOUSEMOVE = "mousemove";
  static final MOUSEOUT = "mouseout";
  static final MOUSEOVER = "mouseover";
  static final MOUSEUP = "mouseup";
  static final RIGHTCLICK = "rightclick";

  final Polyline _polyline;

  PolylineEvents._(this._polyline);

  PolyMouseEventListenerAdder get click => new PolyMouseEventListenerAdder(_polyline, CLICK);
  PolyMouseEventListenerAdder get dblclick => new PolyMouseEventListenerAdder(_polyline, DBLCLICK);
  PolyMouseEventListenerAdder get mousedown => new PolyMouseEventListenerAdder(_polyline, MOUSEDOWN);
  PolyMouseEventListenerAdder get mousemove => new PolyMouseEventListenerAdder(_polyline, MOUSEMOVE);
  PolyMouseEventListenerAdder get mouseout => new PolyMouseEventListenerAdder(_polyline, MOUSEOUT);
  PolyMouseEventListenerAdder get mouseover => new PolyMouseEventListenerAdder(_polyline, MOUSEOVER);
  PolyMouseEventListenerAdder get mouseup => new PolyMouseEventListenerAdder(_polyline, MOUSEUP);
  PolyMouseEventListenerAdder get rightclick => new PolyMouseEventListenerAdder(_polyline, RIGHTCLICK);
}