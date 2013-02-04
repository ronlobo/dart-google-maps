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

abstract class _QueryAutocompletePrediction {
  String description;
  @jsw.dartified List<PredictionSubstring> matched_substrings;
  List<PredictionTerm> terms;
}

class QueryAutocompletePrediction extends jsw.TypedProxy implements _QueryAutocompletePrediction {
  static QueryAutocompletePrediction cast(js.Proxy jsProxy) => jsw.transformIfNotNull(jsProxy, (jsProxy) => new QueryAutocompletePrediction.fromJsProxy(jsProxy));

  QueryAutocompletePrediction() : super();
  QueryAutocompletePrediction.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  @override List<PredictionSubstring> get matched_substrings => jsw.JsArray.cast($unsafe.matched_substrings, PredictionSubstring.cast);
  @override List<PredictionTerm> get terms => jsw.JsArray.cast($unsafe.terms, PredictionTerm.cast);

  List<PredictionSubstring> get matchedSubstrings => matched_substrings;
  set matchedSubstrings(List<PredictionSubstring> matchedSubstrings) => this.matched_substrings = matchedSubstrings;
}