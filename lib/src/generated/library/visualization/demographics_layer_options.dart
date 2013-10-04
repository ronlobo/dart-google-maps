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

part of google_maps_visualization;

class DemographicsLayerOptions extends jsw.TypedJsObject {
  static DemographicsLayerOptions cast(js.JsObject jsObject) => jsObject == null ? null : new DemographicsLayerOptions.fromJsObject(jsObject);
  DemographicsLayerOptions.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  DemographicsLayerOptions() : super();

  set clickable(bool clickable) => $unsafe['clickable'] = clickable;
  bool get clickable => $unsafe['clickable'];
  set map(GMap map) => $unsafe['map'] = map;
  GMap get map => GMap.cast($unsafe['map']);
  set query(DemographicsQuery query) => $unsafe['query'] = query;
  DemographicsQuery get query => DemographicsQuery.cast($unsafe['query']);
  set style(List<DemographicsStyle> style) => $unsafe['style'] = style == null ? null : style is js.Serializable ? style : js.jsify(style);
  List<DemographicsStyle> get style => jsw.TypedJsArray.castListOfSerializables($unsafe['style'], DemographicsStyle.cast);
  set suppressInfoWindows(bool suppressInfoWindows) => $unsafe['suppressInfoWindows'] = suppressInfoWindows;
  bool get suppressInfoWindows => $unsafe['suppressInfoWindows'];
}