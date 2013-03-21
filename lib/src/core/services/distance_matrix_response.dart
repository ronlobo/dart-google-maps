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

part of google_maps;

abstract class _DistanceMatrixResponse {
  List<String> destinationAddresses;
  List<String> originAddresses;
  List<DistanceMatrixResponseRow> rows;
}

class DistanceMatrixResponse extends jsw.TypedProxy implements _DistanceMatrixResponse {
  static DistanceMatrixResponse cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new DistanceMatrixResponse.fromProxy(proxy));

  DistanceMatrixResponse() : super();
  DistanceMatrixResponse.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override List<String> get destinationAddresses => jsw.JsArrayToListAdapter.cast($unsafe.destinationAddresses);
  @override set destinationAddresses(List<String> destinationAddresses) => $unsafe.destinationAddresses = jsifyList(destinationAddresses);
  @override List<String> get originAddresses => jsw.JsArrayToListAdapter.cast($unsafe.originAddresses);
  @override set originAddresses(List<String> originAddresses) => $unsafe.originAddresses = jsifyList(originAddresses);
  @override List<DistanceMatrixResponseRow> get rows => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.rows, DistanceMatrixResponseRow.cast);
  @override set rows(List<DistanceMatrixResponseRow> rows) => $unsafe.rows = jsifyList(rows);
}