#ifndef MS
#define MS

#ifndef MS_MAX
#define MS_MAX 256
#endif

long long string_to_microseconds(const char *str);

long long string_to_milliseconds(const char *str);

long long string_to_seconds(const char *str);

char *milliseconds_to_string(long long ms);

char *milliseconds_to_long_string(long long ms);

#endif
