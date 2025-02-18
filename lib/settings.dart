class SimpleSetting {
  SimpleSetting(this.name, this.action);
  final String name;
  final String action;
}

final simpleSettings = [
  // SimpleSetting("test1", "android.settings.TETHER_PROVISIONING_UI"),
  SimpleSetting("系統設定", "android.settings.SETTINGS"),
  SimpleSetting("安裝應用", "android.settings.MANAGE_APPLICATIONS_SETTINGS"),
  SimpleSetting("全部應用", "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"),
  SimpleSetting("應用設定", "android.settings.APPLICATION_SETTINGS"),
  SimpleSetting("安全設定", "android.settings.SECURITY_SETTINGS"),
  SimpleSetting("長期工作", "android.settings.MANAGE_APP_LONG_RUNNING_JOBS"),
  SimpleSetting("藍牙設定", "android.settings.BLUETOOTH_SETTINGS"),
  SimpleSetting("網路設定", "android.settings.WIRELESS_SETTINGS"),
  SimpleSetting("設定VPN", "android.settings.VPN_SETTINGS"),
  SimpleSetting("設定WIFI", "android.settings.WIFI_SETTINGS"),
  SimpleSetting("語言和輸入", "android.settings.INPUT_METHOD_SETTINGS"),
  SimpleSetting("日期時間", "android.settings.DATE_SETTINGS"),
  SimpleSetting("內部存儲", "android.settings.INTERNAL_STORAGE_SETTINGS"),
  SimpleSetting("外部存儲", "android.settings.MEMORY_CARD_SETTINGS"),
  SimpleSetting("位置設定", "android.settings.LOCATION_SOURCE_SETTINGS"),
  SimpleSetting("快速啓動", "android.settings.QUICK_LAUNCH_SETTINGS"),
  SimpleSetting("搜索設定", "android.search.action.SEARCH_SETTINGS"),
  SimpleSetting("安全設定", "android.settings.SECURITY_SETTINGS"),
  SimpleSetting("聲音設定", "android.settings.SOUND_SETTINGS"),
  SimpleSetting("開發選項", "android.settings.APPLICATION_DEVELOPMENT_SETTINGS")
];
