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

abstract class _DrawingControlOptions {
  List<OverlayType> drawingModes;
  ControlPosition position;
}

class DrawingControlOptions extends jsw.TypedProxy implements _DrawingControlOptions {
  static DrawingControlOptions cast(js.Proxy jsProxy) => jsw.transformIfNotNull(jsProxy, (jsProxy) => new DrawingControlOptions.fromJsProxy(jsProxy));

  DrawingControlOptions() : super();
  DrawingControlOptions.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  @override List<OverlayType> get drawingModes => jsw.JsArray.cast($unsafe.drawingModes, OverlayType.find);
  @override ControlPosition get position => ControlPosition.find($unsafe.position);
}