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

abstract class _PlacesService {
  void getDetails(PlaceDetailsRequest request, void callback(PlaceResult results, PlacesServiceStatus status));
  void nearbySearch(PlaceSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status, PlaceSearchPagination pagination));
  void radarSearch(RadarSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status));
  void textSearch(TextSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status));
}

class PlacesService extends jsw.TypedProxy implements _PlacesService {
  static PlacesService cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new PlacesService.fromProxy(proxy));

  PlacesService(dynamic/*HTMLDivElement|Map*/ attrContainer) : super(maps.places.PlacesService, [attrContainer]);
  PlacesService.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override void getDetails(PlaceDetailsRequest request, void callback(PlaceResult results, PlacesServiceStatus status)) {
    $unsafe.getDetails(request, new js.Callback.once((js.Proxy result, js.Proxy status) => callback(PlaceResult.cast(result), PlacesServiceStatus.find(status))));
  }
  @override void nearbySearch(PlaceSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status, PlaceSearchPagination pagination)) {
    $unsafe.nearbySearch(request, new js.Callback.once((js.Proxy results, js.Proxy status, js.Proxy pagination) => callback(jsw.JsArrayToListAdapter.castListOfSerializables(results, PlaceResult.cast), PlacesServiceStatus.find(status), PlaceSearchPagination.cast(pagination))));
  }
  @override void radarSearch(RadarSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status)) {
    $unsafe.radarSearch(request, new js.Callback.once((js.Proxy results, js.Proxy status) => callback(jsw.JsArrayToListAdapter.castListOfSerializables(results, PlaceResult.cast), PlacesServiceStatus.find(status))));
  }
  @override void textSearch(TextSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status)) {
    $unsafe.textSearch(request, new js.Callback.once((js.Proxy results, js.Proxy status) => callback(jsw.JsArrayToListAdapter.castListOfSerializables(results, PlaceResult.cast), PlacesServiceStatus.find(status))));
  }
}