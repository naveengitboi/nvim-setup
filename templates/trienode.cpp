struct trieNode {
    trieNode* child[26];
    bool end;
    bool containsKey(char ch){
        return child[ch - 'a'] != NULL;
    }
    void markEnd(){
        end = true;
    }
    bool isEnd(){
        return end;
    }
    trieNode* get(char ch){
        return child[ch - 'a'];
    }
    void put(char ch, trieNode* node){
        child[ch - 'a'] = node;
    }
};


