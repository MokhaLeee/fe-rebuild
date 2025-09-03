#include "common.h"

char *strcpy(char *dst, const char *src)
{
	size_t i;

	for (i = 0; ; i++) {
		if (src[i] == '\0')
			break;

		dst[i] = src[i];
	}

	dst[i] = '\0';
	return dst;
}

char *strcnpy(char *dst, const char *src, size_t len)
{
	size_t i;

	for (i = 0; i < len; i++) {
		if (src[i] == '\0')
			break;

		dst[i] = src[i];
	}

	dst[i] = '\0';
	return dst;
}

int strcmp(const char *s1, const char *s2)
{
	const unsigned char *p1 = (const unsigned char *)s1;
	const unsigned char *p2 = (const unsigned char *)s2;

	while (*p1 && *p1 == *p2) {
		p1++;
		p2++;
	}
	return *p1 - *p2;
}

static void memcpy_128bit(void *dst, const void *src, size_t n)
{
	CpuFastCopy(src, dst, n);
}

static void memcpy_32bit(u32 *dst, const u32 *src, size_t _n)
{
	int i, n = _n / 4;

	for (i = 0; i < n; i++)
		dst[i] = src[i];
}

static void memcpy_8bit(u8 *dst, const u8 *src, size_t n)
{
	size_t i;

	for (i = 0; i < n; i++)
		dst[i] = src[i];
}

void *memcpy(void *dst, const void *src, size_t n)
{
	if (n == 0)
		return dst;

	if ((n & 0b1111) == 0)
		memcpy_128bit(dst, src, n);
	else if ((n & 0b11) == 0)
		memcpy_32bit(dst, src, n);
	else
		memcpy_8bit(dst, src, n);

	return dst;
}

void *memset(void *_s, int c, size_t n)
{
	uint8_t *s = _s;

	while ((n--) > 0)
		*(s++) = c;

	return _s;
}
