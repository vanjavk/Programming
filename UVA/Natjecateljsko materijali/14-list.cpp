#include <iostream>
using namespace std;

struct node
{
    node(int a) : x(a), next(nullptr) { }
    ~node() { delete next; }
    int x;
    node* next;
};

void print_list(node* r)
{
    for (node* i = r; i; i = i->next)
        cout << i->x << " ";
}

node* make_list(int n)
{
    node *r = nullptr, *l = nullptr;
    for (int i = 0; i < n; ++i)
    {
        int x;
        cin >> x;
        if (!r)
        {
            r = new node(x);
            l = r;
        }
        else
        {
            l->next = new node(x);
            l = l->next;
        }
    }
    return r;
}

node* make_list_better(int n)
{
    node* first = nullptr;
    node **r = &first;
    for (int i = 0; i < n; ++i)
    {
        int x;
        cin >> x;
        *r = new node(x);
        r = &(*r)->next;
    }
    return first;
}

int main()
{
    int n;
    cin >> n;
    node* r = make_list_better(n);
    print_list(r);
    delete r;
}
