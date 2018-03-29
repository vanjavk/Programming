#include <iostream>
#include <vector>
using namespace std;

struct node
{
    int k;
    vector<node*> c;
};

int tree_sum(node* r)
{
    int s = r->k;
    for (node* n : r->c)
        s += tree_sum(n);
    return s;
}

struct fsnode
{
    fsnode(const string& n) : name(n)
    {
    }
    ~fsnode()
    {
        for (fsnode* n : c)
            delete n;
    }
    string name;
    vector<fsnode*> c;
};

struct fs
{
    fsnode* root;
    fs() : root(new fsnode("/")) { }
    ~fs() { delete root; }
    void add(const string& name)
    {
    }
};

int main()
{
    
    
}
