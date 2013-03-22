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

part of google_maps;

abstract class _StreetViewCoverageLayer {
  @dartified GMap getMap();
  @dartified void setMap(GMap map);
}

class StreetViewCoverageLayer extends MVCObject implements _StreetViewCoverageLayer {
  static StreetViewCoverageLayer cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new StreetViewCoverageLayer.fromProxy(proxy));

  StreetViewCoverageLayer() : super(maps.StreetViewCoverageLayer);
  StreetViewCoverageLayer.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override GMap getMap() => GMap.cast($unsafe.getMap());

  GMap get map => getMap();
  set map(GMap map) => setMap(map);
}
