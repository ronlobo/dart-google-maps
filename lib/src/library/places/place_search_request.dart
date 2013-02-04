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

part of google_maps_places;

abstract class _PlaceSearchRequest {
  LatLngBounds bounds;
  String keyword;
  LatLng location;
  String name;
  num radius;
  RankBy rankBy;
  List<String> types;
}

class PlaceSearchRequest extends jsw.TypedProxy implements _PlaceSearchRequest {
  static PlaceSearchRequest cast(js.Proxy jsProxy) => jsw.transformIfNotNull(jsProxy, (jsProxy) => new PlaceSearchRequest.fromJsProxy(jsProxy));

  PlaceSearchRequest() : super();
  PlaceSearchRequest.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  @override LatLngBounds get bounds => LatLngBounds.cast($unsafe.bounds);
  @override LatLng get location => LatLng.cast($unsafe.location);
  @override RankBy get rankBy => RankBy.find($unsafe.rankBy);
  @override List<String> get types => jsw.JsArray.cast($unsafe.types);
}