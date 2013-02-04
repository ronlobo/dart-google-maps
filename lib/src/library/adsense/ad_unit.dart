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

part of google_maps_adsense;

abstract class _AdUnit {
  @jsw.dartified String getBackgroundColor();
  @jsw.dartified String getBorderColor();
  @jsw.dartified String getChannelNumber();
  @jsw.dartified html.Node getContainer();
  @jsw.dartified AdFormat getFormat();
  @jsw.dartified GMap getMap();
  @jsw.dartified ControlPosition getPosition();
  @jsw.dartified String getPublisherId();
  @jsw.dartified String getTextColor();
  @jsw.dartified String getTitleColor();
  @jsw.dartified String getUrlColor();
  @jsw.dartified void setBackgroundColor(String backgroundColor);
  @jsw.dartified void setBorderColor(String borderColor);
  @jsw.dartified void setChannelNumber(String channelNumber);
  @jsw.dartified void setFormat(AdFormat format);
  @jsw.dartified void setMap(GMap map);
  @jsw.dartified void setPosition(ControlPosition position);
  @jsw.dartified void setTextColor(String textColor);
  @jsw.dartified void setTitleColor(String titleColor);
  @jsw.dartified void setUrlColor(String urlColor);
}

class AdUnit extends MVCObject implements _AdUnit {
  static AdUnit cast(js.Proxy jsProxy) => jsw.transformIfNotNull(jsProxy, (jsProxy) => new AdUnit.fromJsProxy(jsProxy));

  AdUnit(html.Node container, AdUnitOptions opts) : super(maps.adsense.AdUnit, [container, opts]);
  AdUnit.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  @override AdFormat getFormat() => AdFormat.find($unsafe.getFormat());
  @override GMap getMap() => GMap.cast($unsafe.getMap());
  @override ControlPosition getPosition() => ControlPosition.find($unsafe.getPosition());

  String get backgroundColor => getBackgroundColor();
  String get borderColor => getBorderColor();
  String get channelNumber => getChannelNumber();
  html.Node get container => getContainer();
  AdFormat get format => getFormat();
  GMap get map => getMap();
  ControlPosition get position => getPosition();
  String get publisherId => getPublisherId();
  String get textColor => getTextColor();
  String get titleColor => getTitleColor();
  String get urlColor => getUrlColor();
  set backgroundColor(String backgroundColor) => setBackgroundColor(backgroundColor);
  set borderColor(String borderColor) => setBorderColor(borderColor);
  set channelNumber(String channelNumber) => setChannelNumber(channelNumber);
  set format(AdFormat format) => setFormat(format);
  set map(GMap map) => setMap(map);
  set position(ControlPosition position) => setPosition(position);
  set textColor(String textColor) => setTextColor(textColor);
  set titleColor(String titleColor) => setTitleColor(titleColor);
  set urlColor(String urlColor) => setUrlColor(urlColor);
}