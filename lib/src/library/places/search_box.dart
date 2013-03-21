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

abstract class _SearchBox {
  @dartified LatLngBounds getBounds();
  @dartified void setBounds(LatLngBounds bounds);
}

class SearchBox extends MVCObject implements _SearchBox {
  SearchBox(html.InputElement inputField, [SearchBoxOptions opts]) : super(maps.places.SearchBox, [inputField, opts]);
  SearchBox.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override LatLngBounds getBounds() => LatLngBounds.cast($unsafe.getBounds());

  LatLngBounds get bounds => this.getBound();
  set bounds(LatLngBounds bounds) => this.setBound(bounds);

  SearchBoxEvents get on => new SearchBoxEvents._(this);
}

class SearchBoxEvents {
  static final PLACE_CHANGED = "place_changed";

  final SearchBox _searchBox;

  SearchBoxEvents._(this._searchBox);

  NoArgsEventListenerAdder get placeChanged => new NoArgsEventListenerAdder(_searchBox, PLACE_CHANGED);
}