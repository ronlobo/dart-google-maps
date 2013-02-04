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

abstract class _PlaceResult {
  @jsw.dartified List<GeocoderAddressComponent> address_components;
  List<PlaceAspectRating> aspects;
  @jsw.dartified String formatted_address;
  @jsw.dartified String formatted_phone_number;
  PlaceGeometry geometry;
  @jsw.dartified List<String> html_attributions;
  String icon;
  String id;
  @jsw.dartified String international_phone_number;
  String name;
  num rating;
  String reference;
  List<PlaceReview> reviews;
  List<String> types;
  String url;
  String vicinity;
  String website;
}

class PlaceResult extends jsw.TypedProxy implements _PlaceResult {
  static PlaceResult cast(js.Proxy jsProxy) => jsw.transformIfNotNull(jsProxy, (jsProxy) => new PlaceResult.fromJsProxy(jsProxy));

  PlaceResult() : super();
  PlaceResult.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  @override List<GeocoderAddressComponent> get address_components => jsw.JsArray.cast($unsafe.address_components, GeocoderAddressComponent.cast);
  @override List<PlaceAspectRating> get aspects => jsw.JsArray.cast($unsafe.aspects, PlaceAspectRating.cast);
  @override PlaceGeometry get geometry => PlaceGeometry.cast($unsafe.geometry);
  @override List<String> get html_attributions => jsw.JsArray.cast($unsafe.html_attributions);
  @override List<PlaceReview> get reviews => jsw.JsArray.cast($unsafe.reviews, PlaceReview.cast);
  @override List<String> get types => jsw.JsArray.cast($unsafe.types);

  List<GeocoderAddressComponent> get addressComponents => address_components;
  set addressComponents(List<GeocoderAddressComponent> addressComponents) => this.address_components = addressComponents;
  String get formattedAddress => formatted_address;
  set formattedAddress(String formattedAddress) => formatted_address = formattedAddress;
  String get formattedPhoneNumber => formatted_phone_number;
  set formattedPhoneNumber(String formattedPhoneNumber) => formatted_phone_number = formattedPhoneNumber;
  List<String> get htmlAttributions => html_attributions;
  set htmlAttributions(List<String> htmlAttributions) => this.html_attributions = htmlAttributions;
  String get internationalPhoneNumber => international_phone_number;
  set internationalPhoneNumber(String internationalPhoneNumber) => international_phone_number = internationalPhoneNumber;
}