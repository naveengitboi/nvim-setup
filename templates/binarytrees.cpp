struct binaryNode {
    int data;
    binaryNode *left;
    binaryNode *right;
    binaryNode(int x){
        data = x;
        left = right = NULL;
    }
    binaryNode(int x, binaryNode* l, binaryNode* r){
        data = x;
        left = l;
        right = r;
    }
};
