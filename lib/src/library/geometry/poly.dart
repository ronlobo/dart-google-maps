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

Poly get poly => new Poly();

abstract class _Poly {
  bool containsLocation(LatLng point, Polygon polygon);
  bool isLocationOnEdge(LatLng point, dynamic/*Polygon|Polyline*/ poly, [num tolerance]);
}

class Poly extends jsw.TypedProxy implements _Poly {
  static Poly cast(js.Proxy jsProxy) => jsw.transformIfNotNull(jsProxy, (jsProxy) => new Poly.fromJsProxy(jsProxy));

  Poly() : super(maps.geometry.poly);
  Poly.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);
}