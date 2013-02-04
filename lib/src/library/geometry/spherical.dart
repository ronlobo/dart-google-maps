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

part of google_maps_geometry;

Spherical get spherical => new Spherical();

abstract class _Spherical {
  num computeArea(dynamic/*Array.<LatLng>|MVCArray.<LatLng>*/ path, [num radius]);
  num computeDistanceBetween(LatLng from, LatLng to, [num radius]);
  num computeHeading(LatLng from, LatLng to);
  num computeLength(dynamic/*Array.<LatLng>|MVCArray.<LatLng>*/ path, [num radius]);
  LatLng computeOffset(LatLng from, num distance, num heading, [num radius]);
  LatLng computeOffsetOrigin(LatLng to, num distance, num heading, [num radius]);
  num computeSignedArea(dynamic/*Array.<LatLng>|MVCArray.<LatLng>*/ loop, [num radius]);
  LatLng interpolate(LatLng from, LatLng to, num fraction);

}

class Spherical extends jsw.TypedProxy implements _Spherical {
  static Spherical cast(js.Proxy jsProxy) => jsw.transformIfNotNull(jsProxy, (jsProxy) => new Spherical.fromJsProxy(jsProxy));

  Spherical() : super(maps.geometry.spherical);
  Spherical.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  @override num computeArea(dynamic/*Array.<LatLng>|MVCArray.<LatLng>*/ path, [num radius]) => $unsafe.computeArea(path is List<LatLng> ? jsw.JsArray.jsify(path) : path, radius);
  @override num computeLength(dynamic/*Array.<LatLng>|MVCArray.<LatLng>*/ path, [num radius]) => $unsafe.computeLength(path is List<LatLng> ? jsw.JsArray.jsify(path) : path, radius);
  @override LatLng computeOffset(LatLng from, num distance, num heading, [num radius]) => LatLng.cast($unsafe.computeOffset(from, distance, heading, radius));
  @override LatLng computeOffsetOrigin(LatLng to, num distance, num heading, [num radius]) => LatLng.cast($unsafe.computeOffsetOrigin(to, distance, heading, radius));
  @override num computeSignedArea(dynamic/*Array.<LatLng>|MVCArray.<LatLng>*/ loop, [num radius]) => $unsafe.computeSignedArea(loop is List<LatLng> ? jsw.JsArray.jsify(loop) : loop, radius);
  @override LatLng interpolate(LatLng from, LatLng to, num fraction) => LatLng.cast($unsafe.interpolate(from, to, fraction));
}