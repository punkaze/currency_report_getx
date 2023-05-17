enum FlavorEnvironment {
  development('development'),
  staging('staging'),
  production('production');

  const FlavorEnvironment(this.value);
  final String value;
}
