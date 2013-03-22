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

abstract class _PlacePhoto {
  num height;
  @dartified List<String> html_attributions;
  num width;
}

class PlacePhoto extends jsw.MagicProxy implements _PlacePhoto {
  static PlacePhoto cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new PlacePhoto.fromProxy(proxy));

  PlacePhoto() : super();
  PlacePhoto.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override List<String> get html_attributions => jsw.JsArrayToListAdapter.cast($unsafe.html_attributions);
  @override set html_attributions(List<String> html_attributions) => $unsafe.html_attributions = jsifyList(html_attributions);

  List<String> get htmlAttributions => html_attributions;
  set htmlAttributions(List<String> htmlAttributions) => this.html_attributions = htmlAttributions;
}
