void main(){
    print();
}

void print(){
    printf("Welcome! Please enter a name:");
    char name[256];
    scanf("%s", name);
    printf("Good luck,");
    printf("%s", name);
}