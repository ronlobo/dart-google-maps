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

abstract class _DistanceMatrixRequest {
  bool avoidHighways;
  bool avoidTolls;
  List/*Array.<LatLng>|Array.<string>*/ destinations;
  List/*Array.<LatLng>|Array.<string>*/ origins;
  String region;
  TravelMode travelMode;
  UnitSystem unitSystem;
}

class DistanceMatrixRequest extends jsw.MagicProxy implements _DistanceMatrixRequest {
  static DistanceMatrixRequest cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new DistanceMatrixRequest.fromProxy(proxy));

  DistanceMatrixRequest() : super();
  DistanceMatrixRequest.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override List/*Array.<LatLng>|Array.<string>*/ get destinations => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.destinations, (e) => LatLng.isInstance(e) ? LatLng.cast(e) : e);
  @override List/*Array.<LatLng>|Array.<string>*/ get origins => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.origins, (e) => LatLng.isInstance(e) ? LatLng.cast(e) : e);
  @override TravelMode get travelMode => TravelMode.find($unsafe.travelMode);
  @override UnitSystem get unitSystem => UnitSystem.find($unsafe.unitSystem);
}