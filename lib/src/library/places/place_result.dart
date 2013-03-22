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
  @dartified List<GeocoderAddressComponent> address_components;
  List<PlaceAspectRating> aspects;
  @dartified String formatted_address;
  @dartified String formatted_phone_number;
  PlaceGeometry geometry;
  @dartified List<String> html_attributions;
  String icon;
  String id;
  @dartified String international_phone_number;
  String name;
  @dartified bool permanently_closed;
  List<PlacePhoto> photos;
  @dartified num price_level;
  num rating;
  String reference;
  @dartified String review_summary;
  List<PlaceReview> reviews;
  List<String> types;
  String url;
  String vicinity;
  String website;
}

class PlaceResult extends jsw.MagicProxy implements _PlaceResult {
  static PlaceResult cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new PlaceResult.fromProxy(proxy));

  PlaceResult() : super();
  PlaceResult.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override List<GeocoderAddressComponent> get address_components => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.address_components, GeocoderAddressComponent.cast);
  @override List<PlaceAspectRating> get aspects => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.aspects, PlaceAspectRating.cast);
  @override PlaceGeometry get geometry => PlaceGeometry.cast($unsafe.geometry);
  @override List<String> get html_attributions => jsw.JsArrayToListAdapter.cast($unsafe.html_attributions);
  @override List<PlacePhoto> get photos => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.photos, PlacePhoto.cast);
  @override set photos(List<PlacePhoto> photos) => $unsafe.photos = jsifyList(photos);
  @override List<PlaceReview> get reviews => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.reviews, PlaceReview.cast);
  @override List<String> get types => jsw.JsArrayToListAdapter.cast($unsafe.types);

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
  bool get permanentlyClosed => permanently_closed;
  set permanentlyClosed(bool permanentlyClosed) => this.permanently_closed = permanentlyClosed;
  num get priceLevel => price_level;
  set priceLevel(num priceLevel) => this.price_level = priceLevel;
  String get reviewSummary => review_summary;
  set reviewSummary(String reviewSummary) => review_summary = reviewSummary;
}