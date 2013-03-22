// Copyright (c) 2013, Alexandre Ardhuin
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

part of google_maps_places;

abstract class _RadarSearchRequest {
  LatLngBounds bounds;
  String keyword;
  LatLng location;
  String name;
  num radius;
  List<String> types;
}

class RadarSearchRequest extends jsw.MagicProxy implements _RadarSearchRequest {
  static RadarSearchRequest cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new RadarSearchRequest.fromProxy(proxy));

  RadarSearchRequest() : super();
  RadarSearchRequest.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override LatLngBounds get bounds => LatLngBounds.cast($unsafe.bounds);
  @override LatLng get location => LatLng.cast($unsafe.location);
  @override List<String> get types => jsw.JsArrayToListAdapter.cast($unsafe.types);
  @override set types(List<String> types) => $unsafe.types = jsifyList(types);
}
