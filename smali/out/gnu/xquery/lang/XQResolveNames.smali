.class public Lgnu/xquery/lang/XQResolveNames;
.super Lgnu/expr/ResolveNames;
.source "XQResolveNames.java"


# static fields
.field public static final BASE_URI_BUILTIN:I = -0xb

.field public static final CASTABLE_AS_BUILTIN:I = -0x22

.field public static final CAST_AS_BUILTIN:I = -0x21

.field public static final COLLECTION_BUILTIN:I = -0x8

.field public static final COMPARE_BUILTIN:I = -0x4

.field public static final DEEP_EQUAL_BUILTIN:I = -0x19

.field public static final DEFAULT_COLLATION_BUILTIN:I = -0x1d

.field public static final DISTINCT_VALUES_BUILTIN:I = -0x5

.field public static final DOC_AVAILABLE_BUILTIN:I = -0xa

.field public static final DOC_BUILTIN:I = -0x9

.field public static final HANDLE_EXTENSION_BUILTIN:I = -0x3

.field public static final IDREF_BUILTIN:I = -0x1f

.field public static final ID_BUILTIN:I = -0x1e

.field public static final INDEX_OF_BUILTIN:I = -0xf

.field public static final LANG_BUILTIN:I = -0x17

.field public static final LAST_BUILTIN:I = -0x1

.field public static final LOCAL_NAME_BUILTIN:I = -0x6

.field public static final MAX_BUILTIN:I = -0x1b

.field public static final MIN_BUILTIN:I = -0x1a

.field public static final NAMESPACE_URI_BUILTIN:I = -0x7

.field public static final NAME_BUILTIN:I = -0x18

.field public static final NORMALIZE_SPACE_BUILTIN:I = -0x11

.field public static final NUMBER_BUILTIN:I = -0x1c

.field public static final POSITION_BUILTIN:I = -0x2

.field public static final RESOLVE_PREFIX_BUILTIN:I = -0xd

.field public static final RESOLVE_URI_BUILTIN:I = -0xc

.field public static final ROOT_BUILTIN:I = -0x20

.field public static final STATIC_BASE_URI_BUILTIN:I = -0xe

.field public static final STRING_BUILTIN:I = -0x10

.field public static final UNORDERED_BUILTIN:I = -0x12

.field public static final XS_QNAME_BUILTIN:I = -0x23

.field public static final XS_QNAME_IGNORE_DEFAULT_BUILTIN:I = -0x24

.field public static final castAsDecl:Lgnu/expr/Declaration;

.field public static final castableAsDecl:Lgnu/expr/Declaration;

.field public static final handleExtensionDecl:Lgnu/expr/Declaration;

.field public static final lastDecl:Lgnu/expr/Declaration;

.field public static final resolvePrefixDecl:Lgnu/expr/Declaration;

.field public static final staticBaseUriDecl:Lgnu/expr/Declaration;

.field public static final xsQNameDecl:Lgnu/expr/Declaration;

.field public static final xsQNameIgnoreDefaultDecl:Lgnu/expr/Declaration;


# instance fields
.field public functionNamespacePath:[Lgnu/mapping/Namespace;

.field private moduleDecl:Lgnu/expr/Declaration;

.field public parser:Lgnu/xquery/lang/XQParser;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 116
    const-string v0, "(extension)"

    const/4 v1, -0x3

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->handleExtensionDecl:Lgnu/expr/Declaration;

    .line 119
    const-string v0, "(cast as)"

    const/16 v1, -0x21

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->castAsDecl:Lgnu/expr/Declaration;

    .line 122
    const-string v0, "(castable as)"

    const/16 v1, -0x22

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->castableAsDecl:Lgnu/expr/Declaration;

    .line 126
    const-string v0, "last"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->lastDecl:Lgnu/expr/Declaration;

    .line 129
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    const-string v1, "QName"

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    const/16 v1, -0x23

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->xsQNameDecl:Lgnu/expr/Declaration;

    .line 132
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    const-string v1, "(QName-ignore-default)"

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    const/16 v1, -0x24

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->xsQNameIgnoreDefaultDecl:Lgnu/expr/Declaration;

    .line 135
    const-string v0, "static-base-uri"

    const/16 v1, -0xe

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->staticBaseUriDecl:Lgnu/expr/Declaration;

    .line 138
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    const-string v1, "(resolve-prefix)"

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    const/16 v1, -0xd

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->resolvePrefixDecl:Lgnu/expr/Declaration;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/xquery/lang/XQResolveNames;-><init>(Lgnu/expr/Compilation;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Compilation;)V
    .registers 5
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    const/16 v2, -0x9

    .line 170
    invoke-direct {p0, p1}, Lgnu/expr/ResolveNames;-><init>(Lgnu/expr/Compilation;)V

    .line 201
    sget-object v0, Lgnu/xquery/lang/XQuery;->defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/xquery/lang/XQResolveNames;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 171
    iget-object v0, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v1, Lgnu/xquery/lang/XQResolveNames;->lastDecl:Lgnu/expr/Declaration;

    invoke-virtual {v0, v1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 172
    iget-object v0, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v1, Lgnu/xquery/lang/XQResolveNames;->xsQNameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v0, v1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 173
    iget-object v0, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v1, Lgnu/xquery/lang/XQResolveNames;->staticBaseUriDecl:Lgnu/expr/Declaration;

    invoke-virtual {v0, v1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 174
    const-string v0, "position"

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 175
    const-string v0, "compare"

    const/4 v1, -0x4

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 176
    const-string v0, "distinct-values"

    const/4 v1, -0x5

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 177
    const-string v0, "local-name"

    const/4 v1, -0x6

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 178
    const-string v0, "name"

    const/16 v1, -0x18

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 179
    const-string v0, "namespace-uri"

    const/4 v1, -0x7

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 180
    const-string v0, "root"

    const/16 v1, -0x20

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 181
    const-string v0, "base-uri"

    const/16 v1, -0xb

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 182
    const-string v0, "lang"

    const/16 v1, -0x17

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 183
    const-string v0, "resolve-uri"

    const/16 v1, -0xc

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 184
    const-string v0, "collection"

    const/4 v1, -0x8

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 185
    const-string v0, "doc"

    invoke-virtual {p0, v0, v2}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 186
    const-string v0, "document"

    invoke-virtual {p0, v0, v2}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 187
    const-string v0, "doc-available"

    const/16 v1, -0xa

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 188
    const-string v0, "index-of"

    const/16 v1, -0xf

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 189
    const-string v0, "string"

    const/16 v1, -0x10

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 190
    const-string v0, "normalize-space"

    const/16 v1, -0x11

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 191
    const-string v0, "unordered"

    const/16 v1, -0x12

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 192
    const-string v0, "deep-equal"

    const/16 v1, -0x19

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 193
    const-string v0, "min"

    const/16 v1, -0x1a

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 194
    const-string v0, "max"

    const/16 v1, -0x1b

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 195
    const-string v0, "number"

    const/16 v1, -0x1c

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 196
    const-string v0, "default-collation"

    const/16 v1, -0x1d

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 197
    const-string v0, "id"

    const/16 v1, -0x1e

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 198
    const-string v0, "idref"

    const/16 v1, -0x1f

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 199
    return-void
.end method

.method private checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;
    .registers 8
    .param p1, "args"    # [Lgnu/expr/Expression;
    .param p2, "decl"    # Lgnu/expr/Declaration;
    .param p3, "min"    # I
    .param p4, "max"    # I

    .prologue
    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v2, p1

    invoke-static {v1, p3, p4, v2}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "err":Ljava/lang/String;
    if-nez v0, :cond_20

    .line 517
    const/4 v1, 0x0

    .line 519
    :goto_1f
    return-object v1

    :cond_20
    invoke-virtual {p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    goto :goto_1f
.end method

.method public static makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;
    .registers 4
    .param p0, "name"    # Lgnu/mapping/Symbol;
    .param p1, "code"    # I

    .prologue
    .line 152
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 153
    .local v0, "decl":Lgnu/expr/Declaration;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 154
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->setCode(I)V

    .line 155
    return-object v0
.end method

.method public static makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "code"    # I

    .prologue
    .line 145
    const-string v0, "http://www.w3.org/2005/xpath-functions"

    const-string v1, "fn"

    invoke-static {v0, p0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;

    move-result-object v0

    return-object v0
.end method

.method static maybeAddNamespace(Lgnu/mapping/Symbol;ZLgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .registers 6
    .param p0, "qname"    # Lgnu/mapping/Symbol;
    .param p1, "isAttribute"    # Z
    .param p2, "bindings"    # Lgnu/xml/NamespaceBinding;

    .prologue
    .line 991
    if-nez p0, :cond_3

    .line 1001
    .end local p2    # "bindings":Lgnu/xml/NamespaceBinding;
    :cond_2
    :goto_2
    return-object p2

    .line 993
    .restart local p2    # "bindings":Lgnu/xml/NamespaceBinding;
    :cond_3
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 995
    .local v1, "uri":Ljava/lang/String;
    const-string v2, ""

    if-ne v0, v2, :cond_10

    .line 996
    const/4 v0, 0x0

    .line 997
    :cond_10
    const-string v2, ""

    if-ne v1, v2, :cond_15

    .line 998
    const/4 v1, 0x0

    .line 999
    :cond_15
    if-eqz p1, :cond_1b

    if-nez v0, :cond_1b

    if-eqz v1, :cond_2

    .line 1001
    :cond_1b
    invoke-static {v0, v1, p2}, Lgnu/xml/NamespaceBinding;->maybeAdd(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object p2

    goto :goto_2
.end method

.method static procToDecl(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/expr/Declaration;
    .registers 6
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 1007
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 1008
    .local v0, "decl":Lgnu/expr/Declaration;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 1009
    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-direct {v1, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1010
    const-wide/16 v2, 0x4000

    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1011
    return-object v0
.end method

.method private visitStatements(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 10
    .param p1, "exp"    # Lgnu/expr/Expression;

    .prologue
    const/4 v7, 0x0

    .line 402
    instance-of v6, p1, Lgnu/expr/BeginExp;

    if-eqz v6, :cond_1e

    move-object v0, p1

    .line 404
    check-cast v0, Lgnu/expr/BeginExp;

    .line 405
    .local v0, "bbody":Lgnu/expr/BeginExp;
    invoke-virtual {v0}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object v2

    .line 406
    .local v2, "exps":[Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/BeginExp;->getExpressionCount()I

    move-result v4

    .line 407
    .local v4, "nexps":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v4, :cond_46

    .line 409
    aget-object v6, v2, v3

    invoke-direct {p0, v6}, Lgnu/xquery/lang/XQResolveNames;->visitStatements(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v2, v3

    .line 407
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 412
    .end local v0    # "bbody":Lgnu/expr/BeginExp;
    .end local v2    # "exps":[Lgnu/expr/Expression;
    .end local v3    # "i":I
    .end local v4    # "nexps":I
    :cond_1e
    instance-of v6, p1, Lgnu/expr/SetExp;

    if-eqz v6, :cond_47

    .line 414
    iget-object v1, p0, Lgnu/xquery/lang/XQResolveNames;->moduleDecl:Lgnu/expr/Declaration;

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v5, p1

    .line 415
    check-cast v5, Lgnu/expr/SetExp;

    .line 416
    .local v5, "sexp":Lgnu/expr/SetExp;
    invoke-virtual {p0, v5, v7}, Lgnu/xquery/lang/XQResolveNames;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    .line 417
    invoke-virtual {v5}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-virtual {v5}, Lgnu/expr/SetExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v6

    if-ne v6, v1, :cond_44

    .line 419
    invoke-virtual {v1}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v6

    if-nez v6, :cond_40

    .line 420
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQResolveNames;->push(Lgnu/expr/Declaration;)V

    .line 421
    :cond_40
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 423
    :cond_44
    iput-object v1, p0, Lgnu/xquery/lang/XQResolveNames;->moduleDecl:Lgnu/expr/Declaration;

    .line 427
    .end local v1    # "decl":Lgnu/expr/Declaration;
    .end local v5    # "sexp":Lgnu/expr/SetExp;
    :cond_46
    :goto_46
    return-object p1

    .line 426
    :cond_47
    invoke-virtual {p0, p1, v7}, Lgnu/xquery/lang/XQResolveNames;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "exp":Lgnu/expr/Expression;
    check-cast p1, Lgnu/expr/Expression;

    .restart local p1    # "exp":Lgnu/expr/Expression;
    goto :goto_46
.end method


# virtual methods
.method public checkPragma(Lgnu/mapping/Symbol;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 4
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "contents"    # Lgnu/expr/Expression;

    .prologue
    .line 975
    const/4 v0, 0x0

    return-object v0
.end method

.method flookup(Lgnu/mapping/Symbol;)Lgnu/expr/Declaration;
    .registers 8
    .param p1, "sym"    # Lgnu/mapping/Symbol;

    .prologue
    const/4 v5, 0x0

    .line 253
    sget-object v1, Lgnu/xquery/lang/XQuery;->xqEnvironment:Lgnu/mapping/Environment;

    .line 254
    .local v1, "env":Lgnu/mapping/Environment;
    sget-object v4, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {v1, p1, v4}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v2

    .line 255
    .local v2, "loc":Lgnu/mapping/Location;
    if-nez v2, :cond_d

    move-object v0, v5

    .line 267
    :cond_c
    :goto_c
    return-object v0

    .line 257
    :cond_d
    invoke-virtual {v2}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v2

    .line 258
    instance-of v4, v2, Lgnu/kawa/reflect/StaticFieldLocation;

    if-eqz v4, :cond_1e

    move-object v4, v2

    .line 260
    check-cast v4, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-virtual {v4}, Lgnu/kawa/reflect/StaticFieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    move-result-object v0

    .line 261
    .local v0, "decl":Lgnu/expr/Declaration;
    if-nez v0, :cond_c

    .line 264
    .end local v0    # "decl":Lgnu/expr/Declaration;
    :cond_1e
    invoke-virtual {v2, v5}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 265
    .local v3, "val":Ljava/lang/Object;
    if-eqz v3, :cond_29

    .line 266
    invoke-static {p1, v3}, Lgnu/xquery/lang/XQResolveNames;->procToDecl(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_c

    :cond_29
    move-object v0, v5

    .line 267
    goto :goto_c
.end method

.method getBaseUriExpr()Lgnu/expr/Expression;
    .registers 4

    .prologue
    .line 980
    invoke-virtual {p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    .line 981
    .local v0, "comp":Lgnu/expr/Compilation;
    iget-object v2, p0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    invoke-virtual {v2}, Lgnu/xquery/lang/XQParser;->getStaticBaseUri()Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, "staticBaseUri":Ljava/lang/String;
    if-eqz v1, :cond_11

    .line 983
    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    .line 985
    :goto_10
    return-object v2

    :cond_11
    invoke-static {v0}, Lgnu/kawa/functions/GetModuleClass;->getModuleClassURI(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_10
.end method

.method getCollator([Lgnu/expr/Expression;I)Lgnu/expr/Expression;
    .registers 9
    .param p1, "args"    # [Lgnu/expr/Expression;
    .param p2, "argno"    # I

    .prologue
    const/4 v4, 0x1

    .line 458
    if-eqz p1, :cond_1f

    array-length v1, p1

    if-le v1, p2, :cond_1f

    .line 459
    new-instance v1, Lgnu/expr/ApplyExp;

    const-string v2, "gnu.xquery.util.NamedCollator"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "find"

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    new-array v3, v4, [Lgnu/expr/Expression;

    const/4 v4, 0x0

    aget-object v5, p1, p2

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 463
    :goto_1e
    return-object v1

    .line 462
    :cond_1f
    iget-object v1, p0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v0, v1, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    .line 463
    .local v0, "coll":Lgnu/xquery/util/NamedCollator;
    if-nez v0, :cond_28

    sget-object v1, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    goto :goto_1e

    :cond_28
    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-direct {v1, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_1e
.end method

.method push(Lgnu/expr/Declaration;)V
    .registers 13
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .prologue
    .line 215
    invoke-virtual {p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    .line 216
    .local v0, "comp":Lgnu/expr/Compilation;
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    .line 217
    .local v3, "name":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v1

    .line 218
    .local v1, "function":Z
    instance-of v8, v3, Ljava/lang/String;

    if-eqz v8, :cond_41

    .line 220
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getLineNumber()I

    move-result v2

    .line 221
    .local v2, "line":I
    if-lez v2, :cond_35

    if-eqz v0, :cond_35

    .line 223
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, "saveFilename":Ljava/lang/String;
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v7

    .line 225
    .local v7, "saveLine":I
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v5

    .line 226
    .local v5, "saveColumn":I
    invoke-virtual {v0, p1}, Lgnu/expr/Compilation;->setLocation(Lgnu/text/SourceLocator;)V

    .line 227
    iget-object v8, p0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    check-cast v3, Ljava/lang/String;

    .end local v3    # "name":Ljava/lang/Object;
    invoke-virtual {v8, v3, v1}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v3

    .line 228
    .local v3, "name":Lgnu/mapping/Symbol;
    invoke-virtual {v0, v6, v7, v5}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V

    .line 232
    .end local v5    # "saveColumn":I
    .end local v6    # "saveFilename":Ljava/lang/String;
    .end local v7    # "saveLine":I
    :goto_32
    if-nez v3, :cond_3e

    .line 249
    .end local v2    # "line":I
    .end local v3    # "name":Lgnu/mapping/Symbol;
    :goto_34
    return-void

    .line 231
    .restart local v2    # "line":I
    .local v3, "name":Ljava/lang/Object;
    :cond_35
    iget-object v8, p0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    check-cast v3, Ljava/lang/String;

    .end local v3    # "name":Ljava/lang/Object;
    invoke-virtual {v8, v3, v1}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v3

    .local v3, "name":Lgnu/mapping/Symbol;
    goto :goto_32

    .line 234
    :cond_3e
    invoke-virtual {p1, v3}, Lgnu/expr/Declaration;->setName(Ljava/lang/Object;)V

    .line 237
    .end local v2    # "line":I
    .end local v3    # "name":Lgnu/mapping/Symbol;
    :cond_41
    iget-object v8, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v9, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    invoke-virtual {v9, p1}, Lgnu/xquery/lang/XQuery;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v9

    invoke-virtual {v8, v3, v9}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v4

    .line 238
    .local v4, "old":Lgnu/expr/Declaration;
    if-eqz v4, :cond_58

    .line 240
    iget-object v8, p1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    iget-object v9, v4, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    if-ne v8, v9, :cond_5e

    .line 241
    invoke-static {v4, p1, v0}, Lgnu/expr/ScopeExp;->duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 248
    :cond_58
    :goto_58
    iget-object v8, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v8, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    goto :goto_34

    .line 242
    :cond_5e
    sget-boolean v8, Lgnu/xquery/lang/XQParser;->warnHidePreviousDeclaration:Z

    if-eqz v8, :cond_58

    instance-of v8, v3, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_6e

    check-cast v3, Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v8

    if-eqz v8, :cond_58

    .line 245
    :cond_6e
    const/16 v8, 0x77

    const-string v9, "declaration "

    const-string v10, " hides previous declaration"

    invoke-virtual {v0, v8, p1, v9, v10}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58
.end method

.method protected push(Lgnu/expr/ScopeExp;)V
    .registers 3
    .param p1, "exp"    # Lgnu/expr/ScopeExp;

    .prologue
    .line 206
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 207
    .local v0, "decl":Lgnu/expr/Declaration;
    :goto_4
    if-eqz v0, :cond_e

    .line 209
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQResolveNames;->push(Lgnu/expr/Declaration;)V

    .line 207
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_4

    .line 211
    :cond_e
    return-void
.end method

.method pushBuiltin(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-static {p1, p2}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 166
    return-void
.end method

.method public resolveModule(Lgnu/expr/ModuleExp;)V
    .registers 4
    .param p1, "exp"    # Lgnu/expr/ModuleExp;

    .prologue
    .line 432
    iput-object p1, p0, Lgnu/xquery/lang/XQResolveNames;->currentLambda:Lgnu/expr/LambdaExp;

    .line 433
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 434
    .local v0, "decl":Lgnu/expr/Declaration;
    :goto_6
    if-eqz v0, :cond_16

    .line 436
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 437
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQResolveNames;->push(Lgnu/expr/Declaration;)V

    .line 434
    :cond_11
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_6

    .line 439
    :cond_16
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    iput-object v1, p0, Lgnu/xquery/lang/XQResolveNames;->moduleDecl:Lgnu/expr/Declaration;

    .line 440
    iget-object v1, p1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    invoke-direct {p0, v1}, Lgnu/xquery/lang/XQResolveNames;->visitStatements(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 443
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 444
    :goto_28
    if-eqz v0, :cond_3a

    .line 446
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 447
    iget-object v1, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v1, v0}, Lgnu/expr/NameLookup;->removeSubsumed(Lgnu/expr/Declaration;)V

    .line 444
    :cond_35
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_28

    .line 449
    :cond_3a
    return-void
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 60
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .prologue
    .line 524
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v22

    .line 525
    .local v22, "func":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v31, v0

    .line 526
    .local v31, "namespaceSave":Lgnu/xml/NamespaceBinding;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getFunctionValue()Ljava/lang/Object;

    move-result-object v39

    .line 527
    .local v39, "proc":Ljava/lang/Object;
    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/kawa/xml/MakeElement;

    move/from16 v53, v0

    if-eqz v53, :cond_3f

    move-object/from16 v28, v39

    .line 529
    check-cast v28, Lgnu/kawa/xml/MakeElement;

    .line 530
    .local v28, "mk":Lgnu/kawa/xml/MakeElement;
    invoke-virtual/range {v28 .. v28}, Lgnu/kawa/xml/MakeElement;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lgnu/xml/NamespaceBinding;->nconc(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v35

    .line 532
    .local v35, "nschain":Lgnu/xml/NamespaceBinding;
    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v53, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v53

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    .line 535
    .end local v28    # "mk":Lgnu/kawa/xml/MakeElement;
    .end local v35    # "nschain":Lgnu/xml/NamespaceBinding;
    :cond_3f
    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v53, v0

    if-eqz v53, :cond_bd

    .line 536
    check-cast v22, Lgnu/expr/ReferenceExp;

    .end local v22    # "func":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQResolveNames;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v22

    .line 539
    .restart local v22    # "func":Lgnu/expr/Expression;
    :goto_53
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setFunction(Lgnu/expr/Expression;)V

    .line 540
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQResolveNames;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v53, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v53

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    .line 542
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v22

    .line 543
    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v53, v0

    if-eqz v53, :cond_92

    move-object/from16 v53, v22

    .line 545
    check-cast v53, Lgnu/expr/ReferenceExp;

    invoke-virtual/range {v53 .. v53}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v17

    .line 548
    .local v17, "decl":Lgnu/expr/Declaration;
    if-eqz v17, :cond_92

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Declaration;->getCode()I

    move-result v12

    .local v12, "code":I
    if-gez v12, :cond_92

    .line 550
    packed-switch v12, :pswitch_data_9b6

    .line 909
    .end local v12    # "code":I
    .end local v17    # "decl":Lgnu/expr/Declaration;
    :cond_92
    :pswitch_92
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getFunctionValue()Ljava/lang/Object;

    move-result-object v39

    .line 910
    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/bytecode/Type;

    move/from16 v53, v0

    if-eqz v53, :cond_8f5

    .line 912
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    .line 913
    .local v8, "args":[Lgnu/expr/Expression;
    array-length v0, v8

    move/from16 v53, v0

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_8c8

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v53, v0

    const/16 v54, 0x65

    const-string v55, "type constructor requires a single argument"

    invoke-virtual/range {v53 .. v55}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    move-object/from16 v20, p1

    .line 969
    .end local v8    # "args":[Lgnu/expr/Expression;
    :cond_bc
    :goto_bc
    return-object v20

    .line 538
    :cond_bd
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQResolveNames;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "func":Lgnu/expr/Expression;
    check-cast v22, Lgnu/expr/Expression;

    .restart local v22    # "func":Lgnu/expr/Expression;
    goto :goto_53

    .line 554
    .restart local v12    # "code":I
    .restart local v17    # "decl":Lgnu/expr/Declaration;
    :pswitch_ca
    const/16 v53, -0x1

    move/from16 v0, v53

    if-ne v12, v0, :cond_114

    sget-object v44, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    .line 556
    .local v44, "sym":Lgnu/mapping/Symbol;
    :goto_d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    move-object/from16 v0, v53

    move-object/from16 v1, v44

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v17

    .line 557
    if-nez v17, :cond_117

    .line 558
    const/16 v53, 0x65

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "undefined context for "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v44 .. v44}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, p0

    move/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQResolveNames;->error(CLjava/lang/String;)V

    .line 563
    :goto_108
    new-instance v20, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v20

    move-object/from16 v1, v44

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    goto :goto_bc

    .line 554
    .end local v44    # "sym":Lgnu/mapping/Symbol;
    :cond_114
    sget-object v44, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    goto :goto_d2

    .line 562
    .restart local v44    # "sym":Lgnu/mapping/Symbol;
    :cond_117
    const/16 v53, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setCanRead(Z)V

    goto :goto_108

    .line 567
    .end local v44    # "sym":Lgnu/mapping/Symbol;
    :pswitch_121
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    .line 568
    .restart local v8    # "args":[Lgnu/expr/Expression;
    const/16 v53, -0x21

    move/from16 v0, v53

    if-ne v12, v0, :cond_1b2

    const/16 v53, 0x0

    :goto_12d
    aget-object v47, v8, v53

    .line 569
    .local v47, "texp":Lgnu/expr/Expression;
    move-object/from16 v41, v47

    .line 570
    .local v41, "qexp":Lgnu/expr/Expression;
    move-object/from16 v0, v47

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v53, v0

    if-eqz v53, :cond_157

    move-object/from16 v45, v47

    .line 572
    check-cast v45, Lgnu/expr/ApplyExp;

    .line 573
    .local v45, "taexp":Lgnu/expr/ApplyExp;
    invoke-virtual/range {v45 .. v45}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v53

    sget-object v54, Lgnu/xquery/lang/XQParser;->proc_OccurrenceType_getInstance:Lgnu/expr/PrimProcedure;

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_157

    .line 575
    const/16 v53, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v41

    .line 577
    .end local v45    # "taexp":Lgnu/expr/ApplyExp;
    :cond_157
    invoke-virtual/range {v41 .. v41}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v51

    .line 578
    .local v51, "value":Ljava/lang/Object;
    const/16 v30, 0x0

    .line 579
    .local v30, "msg":Ljava/lang/String;
    invoke-static {}, Lgnu/kawa/reflect/SingletonType;->getInstance()Lgnu/kawa/reflect/SingletonType;

    move-result-object v53

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_1b6

    .line 580
    const-string v30, "type to \'cast as\' or \'castable as\' must be atomic"

    .line 589
    :cond_169
    :goto_169
    if-eqz v30, :cond_182

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v53, v0

    const/16 v54, 0x65

    const-string v55, "XPST0080"

    move-object/from16 v0, v53

    move/from16 v1, v54

    move-object/from16 v2, v47

    move-object/from16 v3, v30

    move-object/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_182
    sget-object v53, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_1e2

    move-object/from16 v0, v47

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v53, v0

    if-nez v53, :cond_1e2

    const/16 v48, 0x1

    .line 593
    .local v48, "toQName":Z
    :goto_194
    const/16 v53, -0x21

    move/from16 v0, v53

    if-ne v12, v0, :cond_200

    .line 595
    if-eqz v48, :cond_1e5

    .line 596
    const/16 v53, 0x1

    aget-object v53, v8, v53

    const/16 v54, 0x1

    invoke-static/range {v53 .. v54}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v53

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQResolveNames;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 568
    .end local v30    # "msg":Ljava/lang/String;
    .end local v41    # "qexp":Lgnu/expr/Expression;
    .end local v47    # "texp":Lgnu/expr/Expression;
    .end local v48    # "toQName":Z
    .end local v51    # "value":Ljava/lang/Object;
    :cond_1b2
    const/16 v53, 0x1

    goto/16 :goto_12d

    .line 581
    .restart local v30    # "msg":Ljava/lang/String;
    .restart local v41    # "qexp":Lgnu/expr/Expression;
    .restart local v47    # "texp":Lgnu/expr/Expression;
    .restart local v51    # "value":Ljava/lang/Object;
    :cond_1b6
    sget-object v53, Lgnu/kawa/xml/XDataType;->anyAtomicType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_1c1

    .line 582
    const-string v30, "type to \'cast as\' or \'castable as\' cannot be anyAtomicType"

    goto :goto_169

    .line 583
    :cond_1c1
    sget-object v53, Lgnu/kawa/xml/XDataType;->anySimpleType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_1cc

    .line 584
    const-string v30, "type to \'cast as\' or \'castable as\' cannot be anySimpleType"

    goto :goto_169

    .line 585
    :cond_1cc
    sget-object v53, Lgnu/kawa/xml/XDataType;->untypedType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_1d7

    .line 586
    const-string v30, "type to \'cast as\' or \'castable as\' cannot be untyped"

    goto :goto_169

    .line 587
    :cond_1d7
    sget-object v53, Lgnu/kawa/xml/XDataType;->NotationType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_169

    .line 588
    const-string v30, "type to \'cast as\' or \'castable as\' cannot be NOTATION"

    goto :goto_169

    .line 591
    :cond_1e2
    const/16 v48, 0x0

    goto :goto_194

    .line 597
    .restart local v48    # "toQName":Z
    :cond_1e5
    const-string v53, "gnu.xquery.util.CastAs"

    const-string v54, "castAs"

    invoke-static/range {v53 .. v54}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v22

    .line 619
    :goto_1ed
    new-instance v53, Lgnu/expr/ApplyExp;

    move-object/from16 v0, v53

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v0, v53

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 602
    :cond_200
    if-eqz v48, :cond_242

    const/16 v53, 0x0

    aget-object v53, v8, v53

    move-object/from16 v0, v53

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v53, v0

    if-eqz v53, :cond_242

    .line 604
    const/16 v53, 0x0

    aget-object v53, v8, v53

    check-cast v53, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v53 .. v53}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v51

    .line 607
    :try_start_218
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v54, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Lgnu/xquery/util/QNameUtils;->resolveQName(Ljava/lang/Object;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/Object;

    .line 610
    sget-object v20, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;
    :try_end_23b
    .catch Ljava/lang/RuntimeException; {:try_start_218 .. :try_end_23b} :catch_23d

    goto/16 :goto_bc

    .line 612
    :catch_23d
    move-exception v21

    .line 614
    .local v21, "ex":Ljava/lang/RuntimeException;
    sget-object v20, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    goto/16 :goto_bc

    .line 617
    .end local v21    # "ex":Ljava/lang/RuntimeException;
    :cond_242
    const-string v53, "gnu.xquery.lang.XQParser"

    const-string v54, "castableAs"

    invoke-static/range {v53 .. v54}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v22

    goto :goto_1ed

    .line 624
    .end local v8    # "args":[Lgnu/expr/Expression;
    .end local v30    # "msg":Ljava/lang/String;
    .end local v41    # "qexp":Lgnu/expr/Expression;
    .end local v47    # "texp":Lgnu/expr/Expression;
    .end local v48    # "toQName":Z
    .end local v51    # "value":Ljava/lang/Object;
    :pswitch_24b
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    .line 625
    .restart local v8    # "args":[Lgnu/expr/Expression;
    const/16 v53, 0x1

    const/16 v54, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-direct {v0, v8, v1, v2, v3}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v20

    .local v20, "err":Lgnu/expr/Expression;
    if-nez v20, :cond_bc

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v15, v0, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    .line 629
    .local v15, "constructorNamespaces":Lgnu/xml/NamespaceBinding;
    const/16 v53, -0x24

    move/from16 v0, v53

    if-ne v12, v0, :cond_282

    .line 630
    new-instance v16, Lgnu/xml/NamespaceBinding;

    const/16 v53, 0x0

    const-string v54, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2, v15}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .end local v15    # "constructorNamespaces":Lgnu/xml/NamespaceBinding;
    .local v16, "constructorNamespaces":Lgnu/xml/NamespaceBinding;
    move-object/from16 v15, v16

    .line 632
    .end local v16    # "constructorNamespaces":Lgnu/xml/NamespaceBinding;
    .restart local v15    # "constructorNamespaces":Lgnu/xml/NamespaceBinding;
    :cond_282
    const/16 v53, 0x0

    aget-object v53, v8, v53

    move-object/from16 v0, v53

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v53, v0

    if-eqz v53, :cond_2c6

    .line 636
    const/16 v53, 0x0

    :try_start_290
    aget-object v53, v8, v53

    check-cast v53, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v53 .. v53}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v50

    .line 637
    .local v50, "val":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v53, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v53

    invoke-static {v0, v15, v1}, Lgnu/xquery/util/QNameUtils;->resolveQName(Ljava/lang/Object;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/Object;

    move-result-object v50

    .line 640
    new-instance v20, Lgnu/expr/QuoteExp;

    .end local v20    # "err":Lgnu/expr/Expression;
    move-object/from16 v0, v20

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V
    :try_end_2b5
    .catch Ljava/lang/RuntimeException; {:try_start_290 .. :try_end_2b5} :catch_2b7

    goto/16 :goto_bc

    .line 642
    .end local v50    # "val":Ljava/lang/Object;
    :catch_2b7
    move-exception v21

    .line 644
    .restart local v21    # "ex":Ljava/lang/RuntimeException;
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v53

    invoke-virtual/range {v21 .. v21}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 647
    .end local v21    # "ex":Ljava/lang/RuntimeException;
    .restart local v20    # "err":Lgnu/expr/Expression;
    :cond_2c6
    const/16 v53, 0x3

    move/from16 v0, v53

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const/16 v54, 0x0

    aget-object v54, v8, v54

    aput-object v54, v52, v53

    const/16 v53, 0x1

    new-instance v54, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v54

    invoke-direct {v0, v15}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v54, v52, v53

    const/16 v53, 0x2

    new-instance v54, Lgnu/expr/QuoteExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v55, v0

    invoke-direct/range {v54 .. v55}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v54, v52, v53

    .line 651
    .local v52, "xargs":[Lgnu/expr/Expression;
    const-string v53, "gnu.xquery.util.QNameUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "resolveQName"

    const/16 v55, 0x3

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 654
    .local v27, "meth":Lgnu/bytecode/Method;
    new-instance v6, Lgnu/expr/ApplyExp;

    move-object/from16 v0, v27

    move-object/from16 v1, v52

    invoke-direct {v6, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 655
    .local v6, "app":Lgnu/expr/ApplyExp;
    const/16 v53, 0x4

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Lgnu/expr/ApplyExp;->setFlag(I)V

    move-object/from16 v20, v6

    .line 656
    goto/16 :goto_bc

    .line 660
    .end local v6    # "app":Lgnu/expr/ApplyExp;
    .end local v8    # "args":[Lgnu/expr/Expression;
    .end local v15    # "constructorNamespaces":Lgnu/xml/NamespaceBinding;
    .end local v20    # "err":Lgnu/expr/Expression;
    .end local v27    # "meth":Lgnu/bytecode/Method;
    .end local v52    # "xargs":[Lgnu/expr/Expression;
    :pswitch_318
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    .line 661
    .restart local v8    # "args":[Lgnu/expr/Expression;
    const/16 v53, 0x1

    const/16 v54, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-direct {v0, v8, v1, v2, v3}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v20

    .restart local v20    # "err":Lgnu/expr/Expression;
    if-nez v20, :cond_bc

    .line 663
    const/16 v53, 0x0

    aget-object v53, v8, v53

    move-object/from16 v0, v53

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v53, v0

    if-eqz v53, :cond_3a3

    .line 665
    const/16 v53, 0x0

    aget-object v53, v8, v53

    check-cast v53, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v53 .. v53}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v50

    .line 666
    .restart local v50    # "val":Ljava/lang/Object;
    if-nez v50, :cond_393

    const/16 v38, 0x0

    .line 667
    .local v38, "prefix":Ljava/lang/String;
    :goto_348
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v54, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Lgnu/xquery/util/QNameUtils;->lookupPrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v50

    .line 670
    .local v50, "val":Ljava/lang/String;
    if-nez v50, :cond_398

    .line 671
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "unknown namespace prefix \'"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, "\'"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 666
    .end local v38    # "prefix":Ljava/lang/String;
    .local v50, "val":Ljava/lang/Object;
    :cond_393
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v38

    goto :goto_348

    .line 674
    .restart local v38    # "prefix":Ljava/lang/String;
    .local v50, "val":Ljava/lang/String;
    :cond_398
    new-instance v20, Lgnu/expr/QuoteExp;

    .end local v20    # "err":Lgnu/expr/Expression;
    move-object/from16 v0, v20

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_bc

    .line 676
    .end local v38    # "prefix":Ljava/lang/String;
    .end local v50    # "val":Ljava/lang/String;
    .restart local v20    # "err":Lgnu/expr/Expression;
    :cond_3a3
    const/16 v53, 0x3

    move/from16 v0, v53

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const/16 v54, 0x0

    aget-object v54, v8, v54

    aput-object v54, v52, v53

    const/16 v53, 0x1

    new-instance v54, Lgnu/expr/QuoteExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v55, v0

    invoke-direct/range {v54 .. v55}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v54, v52, v53

    const/16 v53, 0x2

    new-instance v54, Lgnu/expr/QuoteExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v55, v0

    invoke-direct/range {v54 .. v55}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v54, v52, v53

    .line 680
    .restart local v52    # "xargs":[Lgnu/expr/Expression;
    new-instance v37, Lgnu/expr/PrimProcedure;

    const-string v53, "gnu.xquery.util.QNameUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "resolvePrefix"

    const/16 v55, 0x3

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v53

    move-object/from16 v0, v37

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 683
    .local v37, "pproc":Lgnu/expr/PrimProcedure;
    new-instance v6, Lgnu/expr/ApplyExp;

    move-object/from16 v0, v37

    move-object/from16 v1, v52

    invoke-direct {v6, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 684
    .restart local v6    # "app":Lgnu/expr/ApplyExp;
    const/16 v53, 0x4

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Lgnu/expr/ApplyExp;->setFlag(I)V

    move-object/from16 v20, v6

    .line 685
    goto/16 :goto_bc

    .line 689
    .end local v6    # "app":Lgnu/expr/ApplyExp;
    .end local v8    # "args":[Lgnu/expr/Expression;
    .end local v20    # "err":Lgnu/expr/Expression;
    .end local v37    # "pproc":Lgnu/expr/PrimProcedure;
    .end local v52    # "xargs":[Lgnu/expr/Expression;
    :pswitch_408
    const-string v53, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "localName"

    const/16 v55, 0x1

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 691
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    const-string v54, "fn:local-name"

    const/16 v55, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 695
    .end local v27    # "meth":Lgnu/bytecode/Method;
    :pswitch_42e
    const-string v53, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "name"

    const/16 v55, 0x1

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 697
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    const-string v54, "fn:name"

    const/16 v55, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 701
    .end local v27    # "meth":Lgnu/bytecode/Method;
    :pswitch_454
    const-string v53, "gnu.xquery.util.NumberValue"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "numberValue"

    const/16 v55, 0x1

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 703
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    const-string v54, "fn:number"

    const/16 v55, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 707
    .end local v27    # "meth":Lgnu/bytecode/Method;
    :pswitch_47a
    const-string v53, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "root"

    const/16 v55, 0x1

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 709
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    const-string v54, "fn:root"

    const/16 v55, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 713
    .end local v27    # "meth":Lgnu/bytecode/Method;
    :pswitch_4a0
    const-string v53, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "baseUri"

    const/16 v55, 0x1

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 715
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    const-string v54, "fn:base-uri"

    const/16 v55, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 719
    .end local v27    # "meth":Lgnu/bytecode/Method;
    :pswitch_4c6
    const-string v53, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "lang"

    const/16 v55, 0x2

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 721
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    const-string v54, "fn:lang"

    const/16 v55, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 725
    .end local v27    # "meth":Lgnu/bytecode/Method;
    :pswitch_4ec
    const-string v53, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "id$X"

    const/16 v55, 0x3

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 727
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    const-string v54, "fn:id"

    const/16 v55, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 731
    .end local v27    # "meth":Lgnu/bytecode/Method;
    :pswitch_512
    const-string v53, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "idref"

    const/16 v55, 0x2

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 733
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    const-string v54, "fn:idref"

    const/16 v55, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 738
    .end local v27    # "meth":Lgnu/bytecode/Method;
    :pswitch_538
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    .line 739
    .restart local v8    # "args":[Lgnu/expr/Expression;
    const/16 v53, 0x0

    const/16 v54, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-direct {v0, v8, v1, v2, v3}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v20

    .restart local v20    # "err":Lgnu/expr/Expression;
    if-nez v20, :cond_bc

    .line 741
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getBaseUriExpr()Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 745
    .end local v8    # "args":[Lgnu/expr/Expression;
    .end local v20    # "err":Lgnu/expr/Expression;
    :pswitch_554
    const-string v53, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "namespaceURI"

    const/16 v55, 0x1

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 747
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    const-string v54, "fn:namespace-uri"

    const/16 v55, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 753
    .end local v27    # "meth":Lgnu/bytecode/Method;
    :pswitch_57a
    const-string v53, "gnu.xquery.util.StringUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "normalizeSpace"

    const/16 v55, 0x1

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 755
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    const-string v54, "fn:normalize-space"

    const/16 v55, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 761
    .end local v27    # "meth":Lgnu/bytecode/Method;
    :pswitch_5a0
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    .line 762
    .restart local v8    # "args":[Lgnu/expr/Expression;
    const/16 v53, 0x1

    const/16 v54, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-direct {v0, v8, v1, v2, v3}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v20

    .restart local v20    # "err":Lgnu/expr/Expression;
    if-nez v20, :cond_bc

    .line 764
    const/16 v53, 0x0

    aget-object v20, v8, v53

    goto/16 :goto_bc

    .line 769
    .end local v8    # "args":[Lgnu/expr/Expression;
    .end local v20    # "err":Lgnu/expr/Expression;
    :pswitch_5bc
    const-string v53, "gnu.xquery.util.StringUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "compare"

    const/16 v55, 0x3

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 771
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    const-string v54, "fn:compare"

    const/16 v55, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 775
    .end local v27    # "meth":Lgnu/bytecode/Method;
    :pswitch_5e2
    const-string v53, "gnu.xml.TextUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "asString"

    const/16 v55, 0x1

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v53

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v54

    const-string v55, "fn:string"

    const/16 v56, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move-object/from16 v3, v55

    move/from16 v4, v56

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 781
    :pswitch_608
    const-string v53, "gnu.xquery.util.SequenceUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "indexOf$X"

    const/16 v55, 0x4

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 783
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    const-string v54, "fn:index-of"

    const/16 v55, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 787
    .end local v27    # "meth":Lgnu/bytecode/Method;
    :pswitch_62e
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    .line 788
    .restart local v8    # "args":[Lgnu/expr/Expression;
    const-string v53, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v11

    .line 789
    .local v11, "cl":Lgnu/bytecode/ClassType;
    const-string v53, "collection"

    const/16 v54, 0x2

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v11, v0, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 790
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    const/16 v53, 0x0

    const/16 v54, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-direct {v0, v8, v1, v2, v3}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v20

    .restart local v20    # "err":Lgnu/expr/Expression;
    if-nez v20, :cond_bc

    .line 792
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getBaseUriExpr()Lgnu/expr/Expression;

    move-result-object v10

    .line 793
    .local v10, "base":Lgnu/expr/Expression;
    array-length v0, v8

    move/from16 v53, v0

    if-lez v53, :cond_687

    const/16 v53, 0x0

    aget-object v49, v8, v53

    .line 795
    .local v49, "uri":Lgnu/expr/Expression;
    :goto_663
    new-instance v5, Lgnu/expr/ApplyExp;

    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    aput-object v49, v53, v54

    const/16 v54, 0x1

    aput-object v10, v53, v54

    move-object/from16 v0, v27

    move-object/from16 v1, v53

    invoke-direct {v5, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 797
    .local v5, "aexp":Lgnu/expr/ApplyExp;
    sget-object v53, Lgnu/kawa/xml/NodeType;->documentNodeTest:Lgnu/kawa/xml/NodeType;

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    move-object/from16 v20, v5

    .line 798
    goto/16 :goto_bc

    .line 793
    .end local v5    # "aexp":Lgnu/expr/ApplyExp;
    .end local v49    # "uri":Lgnu/expr/Expression;
    :cond_687
    sget-object v49, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_663

    .line 803
    .end local v8    # "args":[Lgnu/expr/Expression;
    .end local v10    # "base":Lgnu/expr/Expression;
    .end local v11    # "cl":Lgnu/bytecode/ClassType;
    .end local v20    # "err":Lgnu/expr/Expression;
    .end local v27    # "meth":Lgnu/bytecode/Method;
    :pswitch_68a
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    .line 804
    .restart local v8    # "args":[Lgnu/expr/Expression;
    const-string v53, "gnu.xquery.util.NodeUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v11

    .line 806
    .restart local v11    # "cl":Lgnu/bytecode/ClassType;
    const/16 v53, -0x9

    move/from16 v0, v53

    if-ne v12, v0, :cond_705

    .line 808
    const-string v29, "docCached"

    .line 809
    .local v29, "mname":Ljava/lang/String;
    sget-boolean v53, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-eqz v53, :cond_6b7

    const-string v53, "document"

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_6b7

    .line 811
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v53

    const/16 v54, 0x77

    const-string v55, "replace \'document\' by \'doc\'"

    invoke-virtual/range {v53 .. v55}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 816
    :cond_6b7
    :goto_6b7
    const/16 v53, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v53

    invoke-virtual {v11, v0, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 817
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    const/16 v53, 0x1

    const/16 v54, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-direct {v0, v8, v1, v2, v3}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v20

    .restart local v20    # "err":Lgnu/expr/Expression;
    if-nez v20, :cond_bc

    .line 819
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getBaseUriExpr()Lgnu/expr/Expression;

    move-result-object v10

    .line 820
    .restart local v10    # "base":Lgnu/expr/Expression;
    new-instance v5, Lgnu/expr/ApplyExp;

    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const/16 v55, 0x0

    aget-object v55, v8, v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    aput-object v10, v53, v54

    move-object/from16 v0, v27

    move-object/from16 v1, v53

    invoke-direct {v5, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 822
    .restart local v5    # "aexp":Lgnu/expr/ApplyExp;
    const/16 v53, -0x9

    move/from16 v0, v53

    if-ne v12, v0, :cond_708

    .line 823
    sget-object v53, Lgnu/kawa/xml/NodeType;->documentNodeTest:Lgnu/kawa/xml/NodeType;

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    :goto_701
    move-object/from16 v20, v5

    .line 826
    goto/16 :goto_bc

    .line 815
    .end local v5    # "aexp":Lgnu/expr/ApplyExp;
    .end local v10    # "base":Lgnu/expr/Expression;
    .end local v20    # "err":Lgnu/expr/Expression;
    .end local v27    # "meth":Lgnu/bytecode/Method;
    .end local v29    # "mname":Ljava/lang/String;
    :cond_705
    const-string v29, "availableCached"

    .restart local v29    # "mname":Ljava/lang/String;
    goto :goto_6b7

    .line 825
    .restart local v5    # "aexp":Lgnu/expr/ApplyExp;
    .restart local v10    # "base":Lgnu/expr/Expression;
    .restart local v20    # "err":Lgnu/expr/Expression;
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    :cond_708
    sget-object v53, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    goto :goto_701

    .line 830
    .end local v5    # "aexp":Lgnu/expr/ApplyExp;
    .end local v8    # "args":[Lgnu/expr/Expression;
    .end local v10    # "base":Lgnu/expr/Expression;
    .end local v11    # "cl":Lgnu/bytecode/ClassType;
    .end local v20    # "err":Lgnu/expr/Expression;
    .end local v27    # "meth":Lgnu/bytecode/Method;
    .end local v29    # "mname":Ljava/lang/String;
    :pswitch_710
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    .line 831
    .restart local v8    # "args":[Lgnu/expr/Expression;
    const/16 v53, 0x1

    const/16 v54, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-direct {v0, v8, v1, v2, v3}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v20

    .restart local v20    # "err":Lgnu/expr/Expression;
    if-nez v20, :cond_bc

    .line 833
    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v26, v0

    .line 834
    .local v26, "margs":[Lgnu/expr/Expression;
    const/16 v53, 0x0

    const/16 v54, 0x0

    aget-object v54, v8, v54

    aput-object v54, v26, v53

    .line 835
    array-length v0, v8

    move/from16 v53, v0

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_764

    .line 836
    const/16 v53, 0x1

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getBaseUriExpr()Lgnu/expr/Expression;

    move-result-object v54

    aput-object v54, v26, v53

    .line 839
    :goto_749
    const-string v53, "gnu.xquery.util.QNameUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "resolveURI"

    const/16 v55, 0x2

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 841
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    new-instance v20, Lgnu/expr/ApplyExp;

    .end local v20    # "err":Lgnu/expr/Expression;
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    goto/16 :goto_bc

    .line 838
    .end local v27    # "meth":Lgnu/bytecode/Method;
    .restart local v20    # "err":Lgnu/expr/Expression;
    :cond_764
    const/16 v53, 0x1

    const/16 v54, 0x1

    aget-object v54, v8, v54

    aput-object v54, v26, v53

    goto :goto_749

    .line 845
    .end local v8    # "args":[Lgnu/expr/Expression;
    .end local v20    # "err":Lgnu/expr/Expression;
    .end local v26    # "margs":[Lgnu/expr/Expression;
    :pswitch_76d
    const-string v53, "gnu.xquery.util.DistinctValues"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "distinctValues$X"

    const/16 v55, 0x3

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 847
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    const-string v54, "fn:distinct-values"

    const/16 v55, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 853
    .end local v27    # "meth":Lgnu/bytecode/Method;
    :pswitch_793
    const-string v53, "gnu.xquery.util.SequenceUtils"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "deepEqual"

    const/16 v55, 0x3

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 855
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    const-string v54, "fn:deep-equal"

    const/16 v55, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 860
    .end local v27    # "meth":Lgnu/bytecode/Method;
    :pswitch_7b9
    const-string v53, "gnu.xquery.util.MinMax"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "min"

    const/16 v55, 0x2

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 862
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    const-string v54, "fn:min"

    const/16 v55, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 867
    .end local v27    # "meth":Lgnu/bytecode/Method;
    :pswitch_7df
    const-string v53, "gnu.xquery.util.MinMax"

    invoke-static/range {v53 .. v53}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v53

    const-string v54, "max"

    const/16 v55, 0x2

    invoke-virtual/range {v53 .. v55}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v27

    .line 869
    .restart local v27    # "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    const-string v54, "fn:max"

    const/16 v55, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_bc

    .line 873
    .end local v27    # "meth":Lgnu/bytecode/Method;
    :pswitch_805
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v53

    const/16 v54, 0x0

    const/16 v55, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v17

    move/from16 v3, v54

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v20

    .restart local v20    # "err":Lgnu/expr/Expression;
    if-nez v20, :cond_bc

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v13, v0, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    .line 876
    .local v13, "coll":Lgnu/xquery/util/NamedCollator;
    if-eqz v13, :cond_833

    invoke-virtual {v13}, Lgnu/xquery/util/NamedCollator;->getName()Ljava/lang/String;

    move-result-object v53

    :goto_82d
    invoke-static/range {v53 .. v53}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v20

    goto/16 :goto_bc

    :cond_833
    const-string v53, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    goto :goto_82d

    .line 880
    .end local v13    # "coll":Lgnu/xquery/util/NamedCollator;
    .end local v20    # "err":Lgnu/expr/Expression;
    :pswitch_836
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v14

    .line 881
    .local v14, "comp":Lgnu/expr/Compilation;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    .line 882
    .restart local v8    # "args":[Lgnu/expr/Expression;
    const/16 v23, 0x0

    .line 883
    .local v23, "i":I
    :goto_840
    array-length v0, v8

    move/from16 v53, v0

    add-int/lit8 v53, v53, -0x1

    move/from16 v0, v23

    move/from16 v1, v53

    if-ge v0, v1, :cond_896

    .line 885
    aget-object v36, v8, v23

    .line 886
    .local v36, "pname":Lgnu/expr/Expression;
    check-cast v36, Lgnu/expr/QuoteExp;

    .end local v36    # "pname":Lgnu/expr/Expression;
    invoke-virtual/range {v36 .. v36}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    .line 887
    .local v42, "qname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    move-object/from16 v0, v53

    move-object/from16 v1, v42

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v40

    .line 888
    .local v40, "psymbol":Lgnu/mapping/Symbol;
    if-nez v40, :cond_86c

    .line 883
    :cond_869
    :goto_869
    add-int/lit8 v23, v23, 0x2

    goto :goto_840

    .line 890
    :cond_86c
    invoke-virtual/range {v40 .. v40}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->length()I

    move-result v53

    if-nez v53, :cond_882

    .line 891
    const/16 v53, 0x65

    const-string v54, "pragma name cannot be in the empty namespace"

    move/from16 v0, v53

    move-object/from16 v1, v54

    invoke-virtual {v14, v0, v1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_869

    .line 894
    :cond_882
    add-int/lit8 v53, v23, 0x1

    aget-object v53, v8, v53

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQResolveNames;->checkPragma(Lgnu/mapping/Symbol;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v43

    .line 896
    .local v43, "replacement":Lgnu/expr/Expression;
    if-eqz v43, :cond_869

    move-object/from16 v20, v43

    .line 897
    goto/16 :goto_bc

    .line 900
    .end local v40    # "psymbol":Lgnu/mapping/Symbol;
    .end local v42    # "qname":Ljava/lang/String;
    .end local v43    # "replacement":Lgnu/expr/Expression;
    :cond_896
    array-length v0, v8

    move/from16 v53, v0

    move/from16 v0, v23

    move/from16 v1, v53

    if-ge v0, v1, :cond_8a8

    .line 901
    array-length v0, v8

    move/from16 v53, v0

    add-int/lit8 v53, v53, -0x1

    aget-object v20, v8, v53

    goto/16 :goto_bc

    .line 902
    :cond_8a8
    const-string v30, "no recognized pragma or default in extension expression"

    .line 903
    .restart local v30    # "msg":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v53

    const/16 v54, 0x65

    const-string v55, "XQST0079"

    move-object/from16 v0, v53

    move/from16 v1, v54

    move-object/from16 v2, v30

    move-object/from16 v3, v55

    invoke-virtual {v0, v1, v2, v3}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 904
    new-instance v20, Lgnu/expr/ErrorExp;

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    goto/16 :goto_bc

    .line 918
    .end local v12    # "code":I
    .end local v14    # "comp":Lgnu/expr/Compilation;
    .end local v17    # "decl":Lgnu/expr/Declaration;
    .end local v23    # "i":I
    .end local v30    # "msg":Ljava/lang/String;
    :cond_8c8
    new-instance v20, Lgnu/expr/ApplyExp;

    const-string v53, "gnu.xquery.util.CastAs"

    const-string v54, "castAs"

    invoke-static/range {v53 .. v54}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v53

    const/16 v54, 0x2

    move/from16 v0, v54

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v56

    aput-object v56, v54, v55

    const/16 v55, 0x1

    const/16 v56, 0x0

    aget-object v56, v8, v56

    aput-object v56, v54, v55

    move-object/from16 v0, v20

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto/16 :goto_bc

    .line 921
    .end local v8    # "args":[Lgnu/expr/Expression;
    :cond_8f5
    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/kawa/xml/MakeElement;

    move/from16 v53, v0

    if-eqz v53, :cond_9b2

    move-object/from16 v25, v39

    .line 923
    check-cast v25, Lgnu/kawa/xml/MakeElement;

    .line 926
    .local v25, "make":Lgnu/kawa/xml/MakeElement;
    invoke-virtual/range {v25 .. v25}, Lgnu/kawa/xml/MakeElement;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v34

    .line 927
    .local v34, "nsBindings":Lgnu/xml/NamespaceBinding;
    move-object/from16 v0, v25

    iget-object v0, v0, Lgnu/kawa/xml/MakeElement;->tag:Lgnu/mapping/Symbol;

    move-object/from16 v46, v0

    .line 928
    .local v46, "tag":Lgnu/mapping/Symbol;
    if-nez v46, :cond_911

    .line 929
    invoke-static/range {p1 .. p1}, Lgnu/kawa/xml/MakeElement;->getTagName(Lgnu/expr/ApplyExp;)Lgnu/mapping/Symbol;

    move-result-object v46

    .line 930
    :cond_911
    const/16 v53, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v53

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lgnu/xquery/lang/XQResolveNames;->maybeAddNamespace(Lgnu/mapping/Symbol;ZLgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v34

    .line 931
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    .line 932
    .restart local v8    # "args":[Lgnu/expr/Expression;
    array-length v0, v8

    move/from16 v53, v0

    move/from16 v0, v53

    new-array v9, v0, [Lgnu/mapping/Symbol;

    .line 933
    .local v9, "attrSyms":[Lgnu/mapping/Symbol;
    const/16 v32, 0x0

    .line 934
    .local v32, "nattrSyms":I
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_92c
    array-length v0, v8

    move/from16 v53, v0

    move/from16 v0, v23

    move/from16 v1, v53

    if-ge v0, v1, :cond_9a9

    .line 936
    aget-object v7, v8, v23

    .line 937
    .local v7, "arg":Lgnu/expr/Expression;
    instance-of v0, v7, Lgnu/expr/ApplyExp;

    move/from16 v53, v0

    if-eqz v53, :cond_96c

    move-object v6, v7

    .line 939
    check-cast v6, Lgnu/expr/ApplyExp;

    .line 940
    .restart local v6    # "app":Lgnu/expr/ApplyExp;
    invoke-virtual {v6}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v53

    sget-object v54, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_96c

    .line 942
    invoke-static {v6}, Lgnu/kawa/xml/MakeElement;->getTagName(Lgnu/expr/ApplyExp;)Lgnu/mapping/Symbol;

    move-result-object v44

    .line 943
    .restart local v44    # "sym":Lgnu/mapping/Symbol;
    if-eqz v44, :cond_96c

    .line 945
    const/16 v24, 0x0

    .line 947
    .local v24, "j":I
    :goto_954
    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_96f

    .line 949
    add-int/lit8 v33, v32, 0x1

    .end local v32    # "nattrSyms":I
    .local v33, "nattrSyms":I
    aput-object v44, v9, v32

    .line 961
    const/16 v53, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v53

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lgnu/xquery/lang/XQResolveNames;->maybeAddNamespace(Lgnu/mapping/Symbol;ZLgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v34

    move/from16 v32, v33

    .line 934
    .end local v6    # "app":Lgnu/expr/ApplyExp;
    .end local v24    # "j":I
    .end local v33    # "nattrSyms":I
    .end local v44    # "sym":Lgnu/mapping/Symbol;
    .restart local v32    # "nattrSyms":I
    :cond_96c
    add-int/lit8 v23, v23, 0x1

    goto :goto_92c

    .line 952
    .restart local v6    # "app":Lgnu/expr/ApplyExp;
    .restart local v24    # "j":I
    .restart local v44    # "sym":Lgnu/mapping/Symbol;
    :cond_96f
    aget-object v53, v9, v24

    move-object/from16 v0, v44

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lgnu/mapping/Symbol;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_9a1

    .line 954
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Lgnu/expr/Compilation;->setLine(Lgnu/expr/Expression;)V

    .line 955
    invoke-static/range {p1 .. p1}, Lgnu/kawa/xml/MakeElement;->getTagName(Lgnu/expr/ApplyExp;)Lgnu/mapping/Symbol;

    move-result-object v19

    .line 956
    .local v19, "elementSym":Lgnu/mapping/Symbol;
    if-nez v19, :cond_9a4

    const/16 v18, 0x0

    .line 958
    .local v18, "elementName":Ljava/lang/String;
    :goto_98c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v53, v0

    const/16 v54, 0x65

    move-object/from16 v0, v44

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lgnu/xml/XMLFilter;->duplicateAttributeMessage(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v55

    const-string v56, "XQST0040"

    invoke-virtual/range {v53 .. v56}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 945
    .end local v18    # "elementName":Ljava/lang/String;
    .end local v19    # "elementSym":Lgnu/mapping/Symbol;
    :cond_9a1
    add-int/lit8 v24, v24, 0x1

    goto :goto_954

    .line 956
    .restart local v19    # "elementSym":Lgnu/mapping/Symbol;
    :cond_9a4
    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_98c

    .line 966
    .end local v6    # "app":Lgnu/expr/ApplyExp;
    .end local v7    # "arg":Lgnu/expr/Expression;
    .end local v19    # "elementSym":Lgnu/mapping/Symbol;
    .end local v24    # "j":I
    .end local v44    # "sym":Lgnu/mapping/Symbol;
    :cond_9a9
    if-eqz v34, :cond_9b2

    .line 967
    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .end local v8    # "args":[Lgnu/expr/Expression;
    .end local v9    # "attrSyms":[Lgnu/mapping/Symbol;
    .end local v23    # "i":I
    .end local v25    # "make":Lgnu/kawa/xml/MakeElement;
    .end local v32    # "nattrSyms":I
    .end local v34    # "nsBindings":Lgnu/xml/NamespaceBinding;
    .end local v46    # "tag":Lgnu/mapping/Symbol;
    :cond_9b2
    move-object/from16 v20, p1

    .line 969
    goto/16 :goto_bc

    .line 550
    :pswitch_data_9b6
    .packed-switch -0x24
        :pswitch_24b
        :pswitch_24b
        :pswitch_121
        :pswitch_121
        :pswitch_47a
        :pswitch_512
        :pswitch_4ec
        :pswitch_805
        :pswitch_454
        :pswitch_7df
        :pswitch_7b9
        :pswitch_793
        :pswitch_42e
        :pswitch_4c6
        :pswitch_92
        :pswitch_92
        :pswitch_92
        :pswitch_92
        :pswitch_5a0
        :pswitch_57a
        :pswitch_5e2
        :pswitch_608
        :pswitch_538
        :pswitch_318
        :pswitch_710
        :pswitch_4a0
        :pswitch_68a
        :pswitch_68a
        :pswitch_62e
        :pswitch_554
        :pswitch_408
        :pswitch_76d
        :pswitch_5bc
        :pswitch_836
        :pswitch_ca
        :pswitch_ca
    .end packed-switch
.end method

.method protected bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/ApplyExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQResolveNames;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;
    .registers 25
    .param p1, "exp"    # Lgnu/expr/ReferenceExp;
    .param p2, "call"    # Lgnu/expr/ApplyExp;

    .prologue
    .line 277
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v18

    if-nez v18, :cond_30

    .line 279
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v15

    .line 280
    .local v15, "symbol":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v12

    .line 281
    .local v12, "needFunction":Z
    const/16 v18, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->getFlag(I)Z

    move-result v13

    .line 282
    .local v13, "needType":Z
    if-nez p2, :cond_31

    const/4 v11, 0x1

    .line 284
    .local v11, "namespace":I
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v11}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v6

    .line 286
    .local v6, "decl":Lgnu/expr/Declaration;
    if-eqz v6, :cond_3a

    .line 366
    :cond_29
    :goto_29
    if-eqz v6, :cond_18c

    .line 367
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lgnu/expr/ReferenceExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 375
    .end local v6    # "decl":Lgnu/expr/Declaration;
    .end local v11    # "namespace":I
    .end local v12    # "needFunction":Z
    .end local v13    # "needType":Z
    .end local v15    # "symbol":Ljava/lang/Object;
    .end local p1    # "exp":Lgnu/expr/ReferenceExp;
    :cond_30
    :goto_30
    return-object p1

    .line 282
    .restart local v12    # "needFunction":Z
    .restart local v13    # "needType":Z
    .restart local v15    # "symbol":Ljava/lang/Object;
    .restart local p1    # "exp":Lgnu/expr/ReferenceExp;
    :cond_31
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lgnu/xquery/lang/XQuery;->namespaceForFunctions(I)I

    move-result v11

    goto :goto_1b

    .line 288
    .restart local v6    # "decl":Lgnu/expr/Declaration;
    .restart local v11    # "namespace":I
    :cond_3a
    instance-of v0, v15, Lgnu/mapping/Symbol;

    move/from16 v18, v0

    if-eqz v18, :cond_8c

    const-string v18, ""

    move-object v14, v15

    check-cast v14, Lgnu/mapping/Symbol;

    .local v14, "sym":Lgnu/mapping/Symbol;
    invoke-virtual {v14}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8c

    .line 292
    invoke-virtual {v14}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v10

    .line 294
    .local v10, "name":Ljava/lang/String;
    const-string v18, "request"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7d

    .line 295
    const-string v9, "getCurrentRequest"

    .line 300
    .local v9, "mname":Ljava/lang/String;
    :goto_5f
    if-eqz v9, :cond_29

    .line 302
    const-string v18, "gnu.kawa.servlet.ServletRequestContext"

    invoke-static/range {v18 .. v18}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    .line 305
    .local v8, "meth":Lgnu/bytecode/Method;
    new-instance p1, Lgnu/expr/ApplyExp;

    .end local p1    # "exp":Lgnu/expr/ReferenceExp;
    sget-object v18, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    goto :goto_30

    .line 296
    .end local v8    # "meth":Lgnu/bytecode/Method;
    .end local v9    # "mname":Ljava/lang/String;
    .restart local p1    # "exp":Lgnu/expr/ReferenceExp;
    :cond_7d
    const-string v18, "response"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8a

    .line 297
    const-string v9, "getCurrentResponse"

    .restart local v9    # "mname":Ljava/lang/String;
    goto :goto_5f

    .line 299
    .end local v9    # "mname":Ljava/lang/String;
    :cond_8a
    const/4 v9, 0x0

    .restart local v9    # "mname":Ljava/lang/String;
    goto :goto_5f

    .line 308
    .end local v9    # "mname":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v14    # "sym":Lgnu/mapping/Symbol;
    :cond_8c
    instance-of v0, v15, Lgnu/mapping/Symbol;

    move/from16 v18, v0

    if-eqz v18, :cond_9f

    move-object/from16 v18, v15

    .line 311
    check-cast v18, Lgnu/mapping/Symbol;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->flookup(Lgnu/mapping/Symbol;)Lgnu/expr/Declaration;

    move-result-object v6

    goto :goto_29

    :cond_9f
    move-object v10, v15

    .line 315
    check-cast v10, Ljava/lang/String;

    .line 316
    .restart local v10    # "name":Ljava/lang/String;
    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-gez v18, :cond_de

    .line 318
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 319
    if-eqz v12, :cond_de

    .line 321
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->functionNamespacePath:[Lgnu/mapping/Namespace;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_de

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->functionNamespacePath:[Lgnu/mapping/Namespace;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v14

    .line 324
    .restart local v14    # "sym":Lgnu/mapping/Symbol;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v11}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v6

    .line 325
    if-eqz v6, :cond_12f

    .line 333
    .end local v7    # "i":I
    .end local v14    # "sym":Lgnu/mapping/Symbol;
    :cond_de
    if-nez v6, :cond_29

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v12}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v14

    .line 336
    .restart local v14    # "sym":Lgnu/mapping/Symbol;
    if-eqz v14, :cond_29

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v11}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v6

    .line 339
    if-nez v6, :cond_29

    if-nez v12, :cond_100

    if-eqz v13, :cond_29

    .line 342
    :cond_100
    invoke-virtual {v14}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v17

    .line 343
    .local v17, "uri":Ljava/lang/String;
    const/16 v16, 0x0

    .line 344
    .local v16, "type":Lgnu/bytecode/Type;
    const-string v18, "http://www.w3.org/2001/XMLSchema"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13b

    .line 346
    invoke-virtual {v14}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lgnu/xquery/lang/XQuery;->getStandardType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v16

    .line 353
    :cond_11a
    :goto_11a
    if-eqz v16, :cond_158

    .line 354
    new-instance v18, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/QuoteExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_30

    .line 327
    .end local v16    # "type":Lgnu/bytecode/Type;
    .end local v17    # "uri":Ljava/lang/String;
    .restart local v7    # "i":I
    :cond_12f
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lgnu/xquery/lang/XQResolveNames;->flookup(Lgnu/mapping/Symbol;)Lgnu/expr/Declaration;

    move-result-object v6

    .line 328
    if-nez v6, :cond_de

    .line 321
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_b3

    .line 348
    .end local v7    # "i":I
    .restart local v16    # "type":Lgnu/bytecode/Type;
    .restart local v17    # "uri":Ljava/lang/String;
    :cond_13b
    if-eqz v13, :cond_11a

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_11a

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v18

    if-nez v18, :cond_11a

    .line 351
    invoke-virtual {v14}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v16

    goto :goto_11a

    .line 355
    :cond_158
    if-eqz v17, :cond_184

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_184

    const-string v18, "class:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_184

    .line 358
    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    .line 359
    .local v5, "ctype":Lgnu/bytecode/ClassType;
    invoke-virtual {v14}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_30

    .line 361
    .end local v5    # "ctype":Lgnu/bytecode/ClassType;
    :cond_184
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lgnu/xquery/lang/XQResolveNames;->flookup(Lgnu/mapping/Symbol;)Lgnu/expr/Declaration;

    move-result-object v6

    goto/16 :goto_29

    .line 368
    .end local v10    # "name":Ljava/lang/String;
    .end local v14    # "sym":Lgnu/mapping/Symbol;
    .end local v16    # "type":Lgnu/bytecode/Type;
    .end local v17    # "uri":Ljava/lang/String;
    :cond_18c
    if-eqz v12, :cond_1b0

    .line 369
    const/16 v18, 0x65

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "unknown function "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQResolveNames;->error(CLjava/lang/String;)V

    goto/16 :goto_30

    .line 370
    :cond_1b0
    if-eqz v13, :cond_1e0

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v18, v0

    const/16 v19, 0x65

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "unknown type "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "XPST0051"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 373
    :cond_1e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v18, v0

    const/16 v19, 0x65

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "unknown variable $"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "XPST0008"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 4
    .param p1, "exp"    # Lgnu/expr/ReferenceExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .prologue
    .line 272
    const/4 v0, 0x0

    check-cast v0, Lgnu/expr/ApplyExp;

    invoke-virtual {p0, p1, v0}, Lgnu/xquery/lang/XQResolveNames;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/ReferenceExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQResolveNames;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 9
    .param p1, "exp"    # Lgnu/expr/SetExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .prologue
    .line 380
    invoke-super {p0, p1, p2}, Lgnu/expr/ResolveNames;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    .line 381
    .local v3, "result":Lgnu/expr/Expression;
    invoke-virtual {p1}, Lgnu/expr/SetExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 384
    .local v0, "decl":Lgnu/expr/Declaration;
    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v4

    iget-boolean v4, v4, Lgnu/expr/Compilation;->immediate:Z

    if-nez v4, :cond_44

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    .local v1, "name":Ljava/lang/Object;
    instance-of v4, v1, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_44

    const-string v4, "http://www.w3.org/2005/xquery-local-functions"

    check-cast v1, Lgnu/mapping/Symbol;

    .end local v1    # "name":Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-virtual {p1}, Lgnu/expr/SetExp;->getNewValue()Lgnu/expr/Expression;

    move-result-object v2

    .local v2, "new_value":Lgnu/expr/Expression;
    instance-of v4, v2, Lgnu/expr/ApplyExp;

    if-eqz v4, :cond_3a

    check-cast v2, Lgnu/expr/ApplyExp;

    .end local v2    # "new_value":Lgnu/expr/Expression;
    invoke-virtual {v2}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v4

    sget-object v5, Lgnu/xquery/lang/XQParser;->getExternalFunction:Lgnu/expr/QuoteExp;

    if-eq v4, v5, :cond_44

    .line 390
    :cond_3a
    const-wide/32 v4, 0x1000000

    invoke-virtual {v0, v4, v5}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 391
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 393
    :cond_44
    return-object v3
.end method

.method protected bridge synthetic visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/SetExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQResolveNames;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;
    .registers 7
    .param p1, "method"    # Lgnu/bytecode/Method;
    .param p2, "args"    # [Lgnu/expr/Expression;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "minArgs"    # I

    .prologue
    .line 469
    new-instance v0, Lgnu/expr/QuoteExp;

    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, p1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/expr/Expression;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method withCollator(Lgnu/expr/Expression;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;
    .registers 10
    .param p1, "function"    # Lgnu/expr/Expression;
    .param p2, "args"    # [Lgnu/expr/Expression;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "minArgs"    # I

    .prologue
    const/4 v4, 0x0

    .line 477
    add-int/lit8 v2, p4, 0x1

    array-length v3, p2

    invoke-static {p3, p4, v2, v3}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "err":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 479
    invoke-virtual {p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v2

    invoke-virtual {v2, v0}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    .line 483
    :goto_12
    return-object v2

    .line 480
    :cond_13
    add-int/lit8 v2, p4, 0x1

    new-array v1, v2, [Lgnu/expr/Expression;

    .line 481
    .local v1, "xargs":[Lgnu/expr/Expression;
    invoke-static {p2, v4, v1, v4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    invoke-virtual {p0, p2, p4}, Lgnu/xquery/lang/XQResolveNames;->getCollator([Lgnu/expr/Expression;I)Lgnu/expr/Expression;

    move-result-object v2

    aput-object v2, v1, p4

    .line 483
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, p1, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto :goto_12
.end method

.method withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;
    .registers 12
    .param p1, "method"    # Lgnu/bytecode/Method;
    .param p2, "args"    # [Lgnu/expr/Expression;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "minArgs"    # I

    .prologue
    const/4 v6, 0x0

    .line 490
    add-int/lit8 v4, p4, 0x1

    array-length v5, p2

    invoke-static {p3, p4, v4, v5}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "err":Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 493
    invoke-virtual {p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v4

    invoke-virtual {v4, v1}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    .line 508
    :goto_12
    return-object v4

    .line 494
    :cond_13
    array-length v4, p2

    if-ne v4, p4, :cond_51

    .line 496
    add-int/lit8 v4, p4, 0x1

    new-array v3, v4, [Lgnu/expr/Expression;

    .line 497
    .local v3, "xargs":[Lgnu/expr/Expression;
    invoke-static {p2, v6, v3, v6, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    iget-object v4, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v5, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {v4, v5, v6}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 499
    .local v0, "dot":Lgnu/expr/Declaration;
    if-nez v0, :cond_49

    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "undefined context for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, "message":Ljava/lang/String;
    iget-object v4, p0, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    const/16 v5, 0x65

    const-string v6, "XPDY0002"

    invoke-virtual {v4, v5, v2, v6}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 503
    new-instance v4, Lgnu/expr/ErrorExp;

    invoke-direct {v4, v2}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    goto :goto_12

    .line 505
    .end local v2    # "message":Ljava/lang/String;
    :cond_49
    new-instance v4, Lgnu/expr/ReferenceExp;

    invoke-direct {v4, v0}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v4, v3, p4

    .line 506
    move-object p2, v3

    .line 508
    .end local v0    # "dot":Lgnu/expr/Declaration;
    .end local v3    # "xargs":[Lgnu/expr/Expression;
    :cond_51
    new-instance v4, Lgnu/expr/ApplyExp;

    invoke-direct {v4, p1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    goto :goto_12
.end method
