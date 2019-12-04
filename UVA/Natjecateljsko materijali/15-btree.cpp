#include <iostream>
using namespace std;

struct node
{
    node(int x) : x(x), r(nullptr), l(nullptr) { }
    int x;
    node* r;
    node* l;
};

void make_tree(node** r, string& t, size_t& i)
{
    if (t[i] != 'x')
    {
        *r = new node(t[i++] - '0');
        make_tree(&(*r)->l, t, i);
        make_tree(&(*r)->r, t, i);
    }
    else
        ++i;
}
// string t = "251xx7xx684xxxx";
int max_tree(node* r)
{
    if (!r) return -1;
    int m = max(max_tree(r->r), max_tree(r->l));
    return max(r->x, m);
}

int sum_tree(node* r)
{
    if (!r) return 0;
    return r->x + sum_tree(r->r) + sum_tree(r->l);
}

void preorder(node *r)
{
    cout << r->x << ' ';
    if (r->l) preorder(r->l);
    if (r->r) preorder(r->r);
}

void inorder(node *r)
{
    if (r->l) inorder(r->l);
    cout << r->x << ' ';
    if (r->r) inorder(r->r);
}

void postorder(node *r)
{
    if (r->l) postorder(r->l);
    if (r->r) postorder(r->r);
    cout << r->x << ' ';
}

int main()
{
    node* r = nullptr;
    string t = "251xx7xx684xxxx";
    size_t i = 0;
    make_tree(&r, t, i);
    cout << "max: " << max_tree(r) << " sum: " << sum_tree(r) << '\n';
    preorder(r);
    cout << '\n';
    inorder(r);
    cout << '\n';
    postorder(r);
    cout << '\n';
}
