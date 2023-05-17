extension MapExtension<K, V> on Map<K?, V> {
  /// Removes all null keys from the map
  Map<K, V> removeNullKeys() {
    final Map<K, V> map = <K, V>{};
    forEach((K? key, V value) {
      if (key != null) map[key] = value;
    });
    return map;
  }
}

extension MapExtension2<K, V> on Map<K, V?> {
  /// Removes all null values from the map
  Map<K, V> removeNullValues() {
    final Map<K, V> map = <K, V>{};
    forEach((K key, V? value) {
      if (value != null) map[key] = value;
    });
    return map;
  }
}
