.class public Lcom/google/appinventor/components/runtime/util/YailDictionary;
.super Ljava/util/LinkedHashMap;
.source "YailDictionary.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/YailObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/YailDictionary$DictIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/google/appinventor/components/runtime/util/YailObject",
        "<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL:Ljava/lang/Object;

.field private static final LOG_TAG:Ljava/lang/String; = "YailDictionary"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "prevMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 52
    return-void
.end method

.method private static alistLookup(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p0, "alist"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    invoke-virtual {v2}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 304
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v2, :cond_2f

    move-object v2, v1

    .line 305
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 306
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 307
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v1    # "o":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 313
    .end local v0    # "key":Ljava/lang/Object;
    :goto_2e
    return-object v2

    .restart local v1    # "o":Ljava/lang/Object;
    :cond_2f
    move-object v2, v3

    .line 310
    goto :goto_2e

    .end local v1    # "o":Ljava/lang/Object;
    :cond_31
    move-object v2, v3

    .line 313
    goto :goto_2e
.end method

.method public static alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .registers 8
    .param p0, "alist"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 151
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 153
    .local v3, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/LList;

    invoke-virtual {v5}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "o":Ljava/lang/Object;
    move-object v1, v4

    .line 154
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 156
    .local v1, "currentPair":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 157
    .local v0, "currentKey":Ljava/lang/Object;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 159
    .local v2, "currentValue":Ljava/lang/Object;
    instance-of v5, v2, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_41

    move-object v5, v2

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 160
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v2    # "currentValue":Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 162
    .restart local v2    # "currentValue":Ljava/lang/Object;
    :cond_41
    instance-of v5, v2, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_4f

    .line 163
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v2    # "currentValue":Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->checkList(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 165
    .restart local v2    # "currentValue":Ljava/lang/Object;
    :cond_4f
    invoke-virtual {v3, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 170
    .end local v0    # "currentKey":Ljava/lang/Object;
    .end local v1    # "currentPair":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v2    # "currentValue":Ljava/lang/Object;
    .end local v4    # "o":Ljava/lang/Object;
    :cond_53
    new-instance v5, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v5, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>(Ljava/util/Map;)V

    return-object v5
.end method

.method private static allOf(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 294
    check-cast p0, Ljava/util/Map;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->allOf(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    .line 298
    .restart local p0    # "object":Ljava/lang/Object;
    :goto_a
    return-object v0

    .line 295
    :cond_b
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_16

    .line 296
    check-cast p0, Ljava/util/List;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->allOf(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_a

    .line 298
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_a
.end method

.method private static allOf(Ljava/util/List;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v2, p0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v2, :cond_41

    move-object v2, p0

    .line 278
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    check-cast p0, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    invoke-virtual {v2}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 281
    .local v0, "o":Ljava/lang/Object;
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v0    # "o":Ljava/lang/Object;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 285
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_37
    check-cast p0, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    move-object v1, v2

    .line 288
    :cond_40
    :goto_40
    return-object v1

    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_41
    move-object v1, p0

    goto :goto_40
.end method

.method private static allOf(Ljava/util/Map;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static checkList(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 7
    .param p0, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/Object;

    .line 175
    .local v0, "checked":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 176
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 177
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    const/4 v4, 0x0

    .line 179
    .local v4, "processed":Z
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 180
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 181
    .local v3, "o":Ljava/lang/Object;
    instance-of v5, v3, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_45

    move-object v5, v3

    .line 182
    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 183
    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v5

    aput-object v5, v0, v1

    .line 184
    const/4 v4, 0x1

    .line 194
    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    .line 195
    goto :goto_f

    .restart local v3    # "o":Ljava/lang/Object;
    :cond_36
    move-object v5, v3

    .line 186
    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->checkList(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    aput-object v5, v0, v1

    .line 187
    aget-object v5, v0, v1

    if-eq v5, v3, :cond_33

    .line 188
    const/4 v4, 0x1

    goto :goto_33

    .line 192
    :cond_45
    aput-object v3, v0, v1

    goto :goto_33

    .line 196
    .end local v3    # "o":Ljava/lang/Object;
    :cond_48
    if-eqz v4, :cond_4e

    .line 197
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p0

    .line 199
    .end local p0    # "list":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_4e
    return-object p0
.end method

.method private static checkListForDicts(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 5
    .param p0, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    invoke-virtual {v2}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 206
    .local v1, "o":Ljava/lang/Object;
    instance-of v3, v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v3, :cond_27

    .line 207
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->dictToAlist(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 208
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_27
    instance-of v3, v1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_35

    .line 209
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->checkListForDicts(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 211
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 214
    .end local v1    # "o":Ljava/lang/Object;
    :cond_39
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method public static dictToAlist(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 7
    .param p0, "dict"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .prologue
    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 221
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 223
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_32
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method private getFromList(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p2, "currentKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<*>;"
    instance-of v3, p1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_17

    const/4 v2, 0x0

    .line 233
    .local v2, "offset":I
    :goto_5
    :try_start_5
    instance-of v3, p2, Lgnu/lists/FString;

    if-eqz v3, :cond_19

    .line 234
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 249
    :goto_16
    return-object v3

    .line 231
    .end local v2    # "offset":I
    :cond_17
    const/4 v2, 0x1

    goto :goto_5

    .line 235
    .restart local v2    # "offset":I
    :cond_19
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_2b

    .line 236
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_16

    .line 237
    :cond_2b
    instance-of v3, p2, Ljava/lang/Number;

    if-eqz v3, :cond_a5

    .line 238
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_3b} :catch_3d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_3b} :catch_71

    move-result-object v3

    goto :goto_16

    .line 240
    :catch_3d
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v3, "YailDictionary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse key as integer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse key as integer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NumberParseException"

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 244
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_71
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "YailDictionary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested too large of an index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested too large of an index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IndexOutOfBoundsException"

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 249
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_a5
    const/4 v3, 0x0

    goto/16 :goto_16
.end method

.method private static isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;
    .registers 7
    .param p0, "yailList"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    const/4 v5, 0x0

    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, "hadPair":Z
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    invoke-virtual {v2}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 135
    .local v0, "currentPair":Ljava/lang/Object;
    instance-of v3, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-nez v3, :cond_1f

    .line 136
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 146
    .end local v0    # "currentPair":Ljava/lang/Object;
    :goto_1e
    return-object v2

    .line 139
    .restart local v0    # "currentPair":Ljava/lang/Object;
    :cond_1f
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v0    # "currentPair":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2d

    .line 140
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1e

    .line 143
    :cond_2d
    const/4 v1, 0x1

    .line 144
    goto :goto_c

    .line 146
    :cond_2f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1e
.end method

.method private static keyToIndex(Ljava/util/List;Ljava/lang/Object;)I
    .registers 10
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "target":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 357
    instance-of v5, p0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_4c

    move v2, v3

    .line 359
    .local v2, "offset":I
    :goto_7
    instance-of v5, p1, Ljava/lang/Number;

    if-eqz v5, :cond_4e

    .line 360
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 369
    .local v1, "index":I
    :goto_11
    sub-int/2addr v1, v2

    .line 370
    if-ltz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v3, v2

    if-lt v1, v3, :cond_68

    .line 372
    :cond_1d
    :try_start_1d
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v4, 0xc81

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int v7, v1, v2

    .line 373
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v3
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_38} :catch_38

    .line 374
    :catch_38
    move-exception v0

    .line 376
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "YailDictionary"

    const-string v4, "Unable to serialize object as JSON"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JSON Error"

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "index":I
    .end local v2    # "offset":I
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_4c
    move v2, v4

    .line 357
    goto :goto_7

    .line 363
    .restart local v2    # "offset":I
    :cond_4e
    :try_start_4e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_55} :catch_57

    move-result v1

    .restart local v1    # "index":I
    goto :goto_11

    .line 364
    .end local v1    # "index":I
    :catch_57
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v6, 0xc82

    new-array v4, v4, [Ljava/lang/Object;

    .line 366
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-direct {v5, v6, v4}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v5

    .line 380
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local p1    # "key":Ljava/lang/Object;
    .restart local v1    # "index":I
    :cond_68
    return v1
.end method

.method private lookupTargetForKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    .line 384
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v0, :cond_b

    .line 385
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 387
    :goto_a
    return-object v0

    .line 386
    .restart local p1    # "target":Ljava/lang/Object;
    :cond_b
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1d

    move-object v0, p1

    .line 387
    check-cast v0, Ljava/util/List;

    check-cast p1, Ljava/util/List;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyToIndex(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 389
    .restart local p1    # "target":Ljava/lang/Object;
    :cond_1d
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v2, 0xc83

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_2f

    const-string v0, "null"

    .line 390
    :goto_29
    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v1

    :cond_2f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method

.method public static makeDictionary()Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .registers 1

    .prologue
    .line 59
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    return-object v0
.end method

.method public static makeDictionary(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 122
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 123
    .local v2, "currentYailList":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 124
    .local v0, "currentKey":Ljava/lang/Object;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 125
    .local v1, "currentValue":Ljava/lang/Object;
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 128
    .end local v0    # "currentKey":Ljava/lang/Object;
    .end local v1    # "currentValue":Ljava/lang/Object;
    .end local v2    # "currentYailList":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_23
    new-instance v4, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v4, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>(Ljava/util/Map;)V

    return-object v4
.end method

.method public static makeDictionary(Ljava/util/Map;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "prevMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static varargs makeDictionary([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .registers 5
    .param p0, "keysAndValues"    # [Ljava/lang/Object;

    .prologue
    .line 101
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 102
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expected an even number of key-value entries."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_e
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 105
    .local v0, "dict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    array-length v2, p0

    if-ge v1, v2, :cond_23

    .line 106
    aget-object v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v0, v2, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    add-int/lit8 v1, v1, 0x2

    goto :goto_14

    .line 108
    :cond_23
    return-object v0
.end method

.method public static walkKeyPath(Lcom/google/appinventor/components/runtime/util/YailObject;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/util/YailObject",
            "<*>;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "object":Lcom/google/appinventor/components/runtime/util/YailObject;, "Lcom/google/appinventor/components/runtime/util/YailObject<*>;"
    .local p1, "keysOrIndices":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 10
    .param p0, "root"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "keysOrIndices":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 319
    if-eqz p0, :cond_b

    .line 320
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .end local p0    # "root":Ljava/lang/Object;
    :cond_b
    :goto_b
    return-object p2

    .line 323
    .restart local p0    # "root":Ljava/lang/Object;
    :cond_c
    if-eqz p0, :cond_b

    .line 327
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 328
    .local v2, "currentKey":Ljava/lang/Object;
    const/4 v5, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 329
    .local v1, "childKeys":Ljava/util/List;, "Ljava/util/List<TT;>;"
    sget-object v5, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    if-ne v2, v5, :cond_36

    .line 330
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->allOf(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 331
    .local v0, "child":Ljava/lang/Object;
    invoke-static {v0, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    goto :goto_28

    .line 333
    .end local v0    # "child":Ljava/lang/Object;
    :cond_36
    instance-of v5, p0, Ljava/util/Map;

    if-eqz v5, :cond_44

    .line 334
    check-cast p0, Ljava/util/Map;

    .end local p0    # "root":Ljava/lang/Object;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    goto :goto_b

    .line 335
    .restart local p0    # "root":Ljava/lang/Object;
    :cond_44
    instance-of v5, p0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_61

    move-object v5, p0

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 336
    check-cast p0, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local p0    # "root":Ljava/lang/Object;
    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->alistLookup(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 337
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_b

    .line 338
    invoke-static {v4, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    goto :goto_b

    .line 340
    .end local v4    # "value":Ljava/lang/Object;
    .restart local p0    # "root":Ljava/lang/Object;
    :cond_61
    instance-of v5, p0, Ljava/util/List;

    if-eqz v5, :cond_b

    move-object v5, p0

    .line 341
    check-cast v5, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyToIndex(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    .line 343
    .local v3, "index":I
    :try_start_6c
    check-cast p0, Ljava/util/List;

    .end local p0    # "root":Ljava/lang/Object;
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_75} :catch_76

    goto :goto_b

    .line 344
    :catch_76
    move-exception v5

    goto :goto_b
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 492
    instance-of v0, p1, Lgnu/lists/FString;

    if-eqz v0, :cond_d

    .line 493
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 495
    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_c
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 500
    instance-of v0, p1, Lgnu/lists/FString;

    if-eqz v0, :cond_d

    .line 501
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 503
    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_c
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 508
    instance-of v0, p1, Lgnu/lists/FString;

    if-eqz v0, :cond_d

    .line 509
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 511
    :goto_c
    return-object v0

    :cond_d
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method public getObject(I)Ljava/lang/Object;
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 544
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->size()I

    move-result v2

    if-lt p1, v2, :cond_e

    .line 545
    :cond_8
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 547
    :cond_e
    move v1, p1

    .line 548
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 549
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v1, :cond_3b

    .line 550
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 552
    :cond_3b
    add-int/lit8 v1, v1, -0x1

    .line 553
    goto :goto_17

    .line 556
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_3e
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public getObjectAtKeyPath(Ljava/util/List;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "keysOrIndices":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v1, p0

    .line 256
    .local v1, "target":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v1    # "target":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 257
    .local v0, "currentKey":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_1a

    .line 258
    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "target":Ljava/lang/Object;
    goto :goto_5

    .line 259
    .end local v1    # "target":Ljava/lang/Object;
    :cond_1a
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v2, :cond_36

    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 260
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "target":Ljava/lang/Object;
    goto :goto_5

    .line 261
    .end local v1    # "target":Ljava/lang/Object;
    :cond_36
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_41

    .line 262
    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->getFromList(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "target":Ljava/lang/Object;
    goto :goto_5

    .line 264
    .end local v1    # "target":Ljava/lang/Object;
    :cond_41
    const/4 v1, 0x0

    .line 268
    .end local v0    # "currentKey":Ljava/lang/Object;
    :cond_42
    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary$DictIterator;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary$DictIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 516
    instance-of v0, p1, Lgnu/lists/FString;

    if-eqz v0, :cond_8

    .line 517
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 519
    .end local p1    # "key":Ljava/lang/Object;
    :cond_8
    instance-of v0, p2, Lgnu/lists/FString;

    if-eqz v0, :cond_10

    .line 520
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 522
    .end local p2    # "value":Ljava/lang/Object;
    :cond_10
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 527
    instance-of v0, p1, Lgnu/lists/FString;

    if-eqz v0, :cond_d

    .line 528
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 530
    :goto_c
    return-object v0

    :cond_d
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method public setPair(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 4
    .param p1, "pair"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-void
.end method

.method public setValueForKeyPath(Ljava/util/List;Ljava/lang/Object;)V
    .registers 10
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v3, p0

    .line 462
    .local v3, "target":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 465
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 488
    .end local v3    # "target":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_b
    return-void

    .line 469
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 470
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 471
    .local v1, "key":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 473
    invoke-direct {p0, v5, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->lookupTargetForKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "target":Ljava/lang/Object;
    move-object v5, v3

    goto :goto_c

    .line 475
    .end local v3    # "target":Ljava/lang/Object;
    :cond_22
    instance-of v4, v5, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v4, :cond_2d

    move-object v4, v5

    .line 476
    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v4, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 477
    :cond_2d
    instance-of v4, v5, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v4, :cond_43

    move-object v2, v5

    .line 478
    check-cast v2, Lgnu/lists/LList;

    .local v2, "l":Lgnu/lists/LList;
    move-object v4, v5

    .line 479
    check-cast v4, Ljava/util/List;

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyToIndex(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Lgnu/lists/LList;->getIterator(I)Lgnu/lists/SeqPosition;

    move-result-object v4

    invoke-virtual {v4, p2}, Lgnu/lists/SeqPosition;->set(Ljava/lang/Object;)V

    goto :goto_c

    .line 480
    .end local v2    # "l":Lgnu/lists/LList;
    :cond_43
    instance-of v4, v5, Ljava/util/List;

    if-eqz v4, :cond_55

    move-object v4, v5

    .line 482
    check-cast v4, Ljava/util/List;

    move-object v6, v5

    check-cast v6, Ljava/util/List;

    invoke-static {v6, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyToIndex(Ljava/util/List;Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v4, v6, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 484
    :cond_55
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v5, 0xc83

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I)V

    throw v4

    .end local v1    # "key":Ljava/lang/Object;
    .local v3, "target":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_5d
    move-object v5, v3

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 536
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 537
    :catch_5
    move-exception v0

    .line 538
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JSON Error"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
