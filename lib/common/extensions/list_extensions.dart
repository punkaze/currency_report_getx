extension ListExtensions<T> on List<T> {
  ///Replaces all data in the list with [newData]
  void replaceAll(List<T> newData) {
    clear();
    addAll(newData);
  }

  ///Replaces all items that matches where  with [newData]
  void replaceWhere(bool Function(T) where, T newData, {int? count}) {
    final int replaceCount = count ?? length;
    int currentReplaceCount = 0;
    for (int i = 0; i < length; ++i) {
      if (where(this[i])) {
        this[i] = newData;
        ++currentReplaceCount;
      }
      if (currentReplaceCount >= replaceCount) break;
    }
  }

  /// Sorts the list based on the comparable returned by [by]. By default
  /// the sorting is [ascending]
  void sortBy<R>(Comparable<R>? Function(T item) by, {bool ascending = true}) {
    sort((T a, T b) {
      final Comparable<R>? byA = by(a);
      final Comparable<R>? byB = by(b);
      if (byA == null) return ascending ? -1 : 1;
      if (byB == null) return ascending ? 1 : -1;
      return _compareValues(byA, byB, ascending);
    });
  }

  /// Sorts the list by comparing first comparing using [by] and if the items
  /// are equal, by comparing them using [by2]. By default
  /// the sorting is [ascending]
  void sortBy2<R>(
    Comparable<R>? Function(T item) by,
    Comparable<R>? Function(T item) by2, {
    bool ascending = true,
  }) {
    sort((T a, T b) {
      final Comparable<R>? byA = by(a);
      final Comparable<R>? byB = by(b);
      if (byA == null && byB != null) return ascending ? -1 : 1;
      if (byB == null && byA != null) return ascending ? 1 : -1;
      if (byA != null && byB != null) {
        final int result = _compareValues(byA, byB, ascending);
        if (result != 0) return result;
      }

      final Comparable<R>? byA2 = by2(a);
      final Comparable<R>? byB2 = by2(b);
      if (byA2 == null && byB2 == null) return 0;
      if (byA2 == null) return ascending ? -1 : 1;
      if (byB2 == null) return ascending ? 1 : -1;
      return _compareValues(byA2, byB2, ascending);
    });
  }
}

int _compareValues<T extends Comparable<dynamic>>(T a, T b, bool ascending) {
  if (identical(a, b)) return 0;
  if (ascending) return a.compareTo(b);
  return -a.compareTo(b);
}
