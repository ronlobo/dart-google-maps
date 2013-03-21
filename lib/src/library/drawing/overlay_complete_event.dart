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

abstract class _OverlayCompleteEvent {
  dynamic/*Marker|Polygon|Polyline|Rectangle|Circle*/ overlay;
  OverlayType type;
}

class OverlayCompleteEvent extends jsw.TypedProxy implements _OverlayCompleteEvent {
  static OverlayCompleteEvent cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new OverlayCompleteEvent.fromProxy(proxy));

  OverlayCompleteEvent() : super();
  OverlayCompleteEvent.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override dynamic/*Marker|Polygon|Polyline|Rectangle|Circle*/ get overlay {
    final result = $unsafe.overlay;
    if (Marker.isInstance(result)) {
      return new Marker.fromProxy(result);
    } else if (Polygon.isInstance(result)) {
      return new Polygon.fromProxy(result);
    } else if (Polyline.isInstance(result)) {
      return new Polyline.fromProxy(result);
    } else if (Rectangle.isInstance(result)) {
      return new Rectangle.fromProxy(result);
    } else if (Circle.isInstance(result)) {
      return new Circle.fromProxy(result);
    } else {
      return result;
    }
  }
  @override OverlayType get type => OverlayType.find($unsafe.type);
}