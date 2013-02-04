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

abstract class _PlaceReview {
  List<PlaceAspectRating> aspects;
  @jsw.dartified String author_name;
  @jsw.dartified String author_url;
  String text;
}

class PlaceReview extends jsw.TypedProxy implements _PlaceReview {
  static PlaceReview cast(js.Proxy jsProxy) => jsw.transformIfNotNull(jsProxy, (jsProxy) => new PlaceReview.fromJsProxy(jsProxy));

  PlaceReview() : super();
  PlaceReview.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  @override List<PlaceAspectRating> get aspects => jsw.JsArray.cast($unsafe.aspects, PlaceAspectRating.cast);

  String get authorName => author_name;
  set authorName(String authorName) => author_name = authorName;
  String get authorUrl => author_url;
  set authorUrl(String authorUrl) => author_url = authorUrl;
}