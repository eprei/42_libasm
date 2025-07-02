#include <stdio.h>
#include <string.h>

extern size_t ft_strlen(const char *str);

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


        printf("****\tstrcmp vs ft_strcmp\t****\n");


        printf("****\twrite vs ft_write\t****\n");


        printf("****\tread vs ft_read\t\t****\n");


        printf("****\tstrdup vs ft_strdup\t****\n");


        return 0;
}
