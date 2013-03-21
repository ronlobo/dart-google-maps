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

abstract class _RotateControlOptions {
  ControlPosition position;
}

class RotateControlOptions extends jsw.TypedProxy implements _RotateControlOptions {
  static RotateControlOptions cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new RotateControlOptions.fromProxy(proxy));

  RotateControlOptions() : super();
  RotateControlOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  ControlPosition get position => ControlPosition.find($unsafe.position);
}