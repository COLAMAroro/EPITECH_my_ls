/*
** EPITECH PROJECT, 2019
** my_ls
** File description:
** Only file kek
*/

static int my_execve(char *bin, char **argv, char **envp)
{
    int return_value = 0;

    asm("movl $59, %%eax\n"
        "movq %1, %%rdi\n"
        "movq %2, %%rsi\n"
        "movq %3, %%rdx\n"
        "syscall\n"
        "movl %%eax, %0"
        :"=m"(return_value)
        :"m"(bin),"m"(argv),"m"(envp));
    return return_value;
}

int main(int ac, char **argv, char **envp)
{
    my_execve("/usr/bin/ls", argv, envp);
}
