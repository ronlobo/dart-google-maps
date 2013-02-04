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

Encoding get encoding => new Encoding();

abstract class _Encoding {
  List<LatLng> decodePath(String encodedPath);
  String encodePath(dynamic/*Array.<LatLng>|MVCArray.<LatLng>*/ path);
}
class Encoding extends jsw.TypedProxy implements _Encoding {
  static Encoding cast(js.Proxy jsProxy) => jsw.transformIfNotNull(jsProxy, (jsProxy) => new Encoding.fromJsProxy(jsProxy));

  Encoding() : super(maps.geometry.encoding);
  Encoding.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  @override List<LatLng> decodePath(String encodedPath) => jsw.JsArray.cast($unsafe.decodePath(encodedPath), LatLng.cast);
  @override String encodePath(dynamic/*Array.<LatLng>|MVCArray.<LatLng>*/ path) => $unsafe.encodePath(path is List<LatLng> ? jsw.JsArray.jsify(path) : path);
}