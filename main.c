#include <stdio.h>
#include <string.h>

size_t ft_strlen(const char *s);
char *ft_strcpy(char *restrict dst, const char *restrict src);
int ft_strcmp(const char *s1, const char *s2);

int main (){
        printf("****\tstrlen vs ft_strlen\t****\n");
        printf("strlen:\t\t%zu\n", strlen("Hello"));
        printf("ft_strlen:\t%zu\n\n", ft_strlen("Hello"));
        printf("strlen:\t\t%zu\n", strlen(""));
        printf("ft_strlen:\t%zu\n\n", ft_strlen(""));
        printf("strlen:\t\t%zu\n", strlen("42"));
        printf("ft_strlen:\t%zu\n\n", ft_strlen("42"));
        printf("strlen:\t\t%zu\n", strlen("Lorem ipsum dolor sit amet, consectetur adipiscing elit."));
        printf("ft_strlen:\t%zu\n\n", ft_strlen("Lorem ipsum dolor sit amet, consectetur adipiscing elit."));
        printf("strlen:\t\t%zu\n", strlen("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"));
        printf("ft_strlen:\t%zu\n\n", ft_strlen("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"));

        printf("****\tstrcpy vs ft_strcpy\t****\n");
        char bufs_dst_strcpy[3][60];
        char bufs_dst_ft_strcpy[3][60];

        strcpy(bufs_dst_strcpy[0], "");
        ft_strcpy(bufs_dst_ft_strcpy[0], "");
        printf("%p bufs_dst_strcpy[0]:\t\t%s\n", bufs_dst_strcpy[0], bufs_dst_strcpy[0]);
        printf("%p bufs_dst_ft_strcpy[0]:\t%s\n\n", bufs_dst_ft_strcpy[0], bufs_dst_ft_strcpy[0]);

        strcpy(bufs_dst_strcpy[1], "21");
        ft_strcpy(bufs_dst_ft_strcpy[1], "21");
        printf("%p bufs_dst_strcpy[1]:\t%s\n", bufs_dst_strcpy[1], bufs_dst_strcpy[1]);
        printf("%p bufs_dst_ft_strcpy[1]\t%s\n\n", bufs_dst_ft_strcpy[1], bufs_dst_ft_strcpy[1]);

        strcpy(bufs_dst_strcpy[2], "Lorem ipsum dolor sit amet, consectetur adipiscing elit.");
        ft_strcpy(bufs_dst_ft_strcpy[2], "Lorem ipsum dolor sit amet, consectetur adipiscing elit.");
        printf("%p bufs_dst_strcpy[2]:\t%s\n", bufs_dst_strcpy[2], bufs_dst_strcpy[2]);
        printf("%p bufs_dst_ft_strcpy[2]:\t%s\n\n", bufs_dst_ft_strcpy[2], bufs_dst_ft_strcpy[2]);

        printf("****\tstrcmp vs ft_strcmp\t****\n");
        printf("strcmp(Hello, Hello):\t\t%d\n", strcmp("Hello", "Hello"));
        printf("ft_strcmp(Hello, Hello):\t%d\n\n", ft_strcmp("Hello", "Hello"));
        printf("strcmp(Hello, World):\t\t%d\n", strcmp("Hello", "World"));
        printf("ft_strcmp(Hello, World):\t%d\n\n", ft_strcmp("Hello", "World"));
        printf("strcmp(Hello, 42):\t\t%d\n", strcmp("Hello", "42"));
        printf("ft_strcmp(Hello, 42):\t\t%d\n\n", ft_strcmp("Hello", "42"));
        printf("strcmp(42, 42):\t\t\t%d\n", strcmp("42", "42"));
        printf("ft_strcmp(42, 42):\t\t%d\n\n", ft_strcmp("42", "42"));
        printf("strcmp(42, 21):\t\t\t%d\n", strcmp("42", "21"));
        printf("ft_strcmp(42, 21):\t\t%d\n\n", ft_strcmp("42", "21"));
        printf("strcmp(21, 0):\t\t\t%d\n", strcmp("21", ""));
        printf("ft_strcmp(21, 0):\t\t%d\n\n", ft_strcmp("21", ""));
        printf("strcmp(,):\t\t\t%d\n", strcmp("", ""));
        printf("ft_strcmp(,):\t\t\t%d\n", ft_strcmp("", ""));
        printf("strcmp(, 42):\t\t\t%d\n", strcmp("", "42"));
        printf("ft_strcmp(, 42):\t\t\t%d\n", ft_strcmp("", "42"));

        printf("****\twrite vs ft_write\t****\n");


        printf("****\tread vs ft_read\t\t****\n");


        printf("****\tstrdup vs ft_strdup\t****\n");


        return 0;
}
