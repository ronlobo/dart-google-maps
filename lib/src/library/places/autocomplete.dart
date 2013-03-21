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

abstract class _Autocomplete {
  @dartified LatLngBounds getBounds();
  @dartified PlaceResult getPlace();
  @dartified void setBounds(LatLngBounds bounds);
  @dartified void setComponentRestrictions(ComponentRestrictions restrictions);
  @dartified void setTypes(List<String> types);
}

class Autocomplete extends MVCObject implements _Autocomplete {
  static Autocomplete cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new Autocomplete.fromProxy(proxy));

  Autocomplete(html.InputElement inputField, [AutocompleteOptions opts]) : super(maps.places.Autocomplete, [inputField, opts]);
  Autocomplete.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override LatLngBounds getBounds() => LatLngBounds.cast($unsafe.getBound());
  @override PlaceResult getPlace() => PlaceResult.cast($unsafe.getPlace());

  LatLngBounds get bounds => getBounds();
  PlaceResult get place => getPlace();
  set bounds(LatLngBounds bounds) => setBounds(bounds);
  set componentRestrictions(ComponentRestrictions restrictions) => setComponentRestrictions(restrictions);
  set types(List<String> types) => setTypes(types);

  AutocompleteEvents get on => new AutocompleteEvents._(this);
}

class AutocompleteEvents {
  static final PLACE_CHANGED = "place_changed";

  final Autocomplete _autocomplete;

  AutocompleteEvents._(this._autocomplete);

  NoArgsEventListenerAdder get placeChanged => new NoArgsEventListenerAdder(_autocomplete, PLACE_CHANGED);
}