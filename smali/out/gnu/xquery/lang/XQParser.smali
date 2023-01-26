.class public Lgnu/xquery/lang/XQParser;
.super Lgnu/text/Lexer;
.source "XQParser.java"


# static fields
.field static final ARROW_TOKEN:I = 0x52

.field static final ATTRIBUTE_TOKEN:I = 0xfc

.field static final AXIS_ANCESTOR:I = 0x0

.field static final AXIS_ANCESTOR_OR_SELF:I = 0x1

.field static final AXIS_ATTRIBUTE:I = 0x2

.field static final AXIS_CHILD:I = 0x3

.field static final AXIS_DESCENDANT:I = 0x4

.field static final AXIS_DESCENDANT_OR_SELF:I = 0x5

.field static final AXIS_FOLLOWING:I = 0x6

.field static final AXIS_FOLLOWING_SIBLING:I = 0x7

.field static final AXIS_NAMESPACE:I = 0x8

.field static final AXIS_PARENT:I = 0x9

.field static final AXIS_PRECEDING:I = 0xa

.field static final AXIS_PRECEDING_SIBLING:I = 0xb

.field static final AXIS_SELF:I = 0xc

.field static final CASE_DOLLAR_TOKEN:I = 0xf7

.field static final COLON_COLON_TOKEN:I = 0x58

.field static final COLON_EQUAL_TOKEN:I = 0x4c

.field static final COMMENT_TOKEN:I = 0xfe

.field static final COUNT_OP_AXIS:I = 0xd

.field static final DECIMAL_TOKEN:C = '1'

.field static final DECLARE_BASE_URI_TOKEN:I = 0x42

.field static final DECLARE_BOUNDARY_SPACE_TOKEN:I = 0x53

.field static final DECLARE_CONSTRUCTION_TOKEN:I = 0x4b

.field static final DECLARE_COPY_NAMESPACES_TOKEN:I = 0x4c

.field static final DECLARE_FUNCTION_TOKEN:I = 0x50

.field static final DECLARE_NAMESPACE_TOKEN:I = 0x4e

.field static final DECLARE_OPTION_TOKEN:I = 0x6f

.field static final DECLARE_ORDERING_TOKEN:I = 0x55

.field static final DECLARE_VARIABLE_TOKEN:I = 0x56

.field static final DEFAULT_COLLATION_TOKEN:I = 0x47

.field static final DEFAULT_ELEMENT_TOKEN:I = 0x45

.field static final DEFAULT_FUNCTION_TOKEN:I = 0x4f

.field static final DEFAULT_ORDER_TOKEN:I = 0x48

.field static final DEFINE_QNAME_TOKEN:I = 0x57

.field static final DOCUMENT_TOKEN:I = 0x100

.field static final DOTDOT_TOKEN:I = 0x33

.field static final DOT_VARNAME:Lgnu/mapping/Symbol;

.field static final DOUBLE_TOKEN:C = '2'

.field static final ELEMENT_TOKEN:I = 0xfb

.field static final EOF_TOKEN:I = -0x1

.field static final EOL_TOKEN:I = 0xa

.field static final EVERY_DOLLAR_TOKEN:I = 0xf6

.field static final FNAME_TOKEN:I = 0x46

.field static final FOR_DOLLAR_TOKEN:I = 0xf3

.field static final IF_LPAREN_TOKEN:I = 0xf1

.field static final IMPORT_MODULE_TOKEN:I = 0x49

.field static final IMPORT_SCHEMA_TOKEN:I = 0x54

.field static final INTEGER_TOKEN:C = '0'

.field static final LAST_VARNAME:Lgnu/mapping/Symbol;

.field static final LET_DOLLAR_TOKEN:I = 0xf4

.field static final MODULE_NAMESPACE_TOKEN:I = 0x4d

.field static final NCNAME_COLON_TOKEN:I = 0x43

.field static final NCNAME_TOKEN:I = 0x41

.field static final OP_ADD:I = 0x19d

.field static final OP_AND:I = 0x191

.field static final OP_ATTRIBUTE:I = 0xec

.field static final OP_AXIS_FIRST:I = 0x64

.field static final OP_BASE:I = 0x190

.field static final OP_CASTABLE_AS:I = 0x1a8

.field static final OP_CAST_AS:I = 0x1a9

.field static final OP_COMMENT:I = 0xe8

.field static final OP_DIV:I = 0x1a0

.field static final OP_DOCUMENT:I = 0xea

.field static final OP_ELEMENT:I = 0xeb

.field static final OP_EMPTY_SEQUENCE:I = 0xee

.field static final OP_EQ:I = 0x1aa

.field static final OP_EQU:I = 0x192

.field static final OP_EXCEPT:I = 0x1a5

.field static final OP_GE:I = 0x1af

.field static final OP_GEQ:I = 0x197

.field static final OP_GRT:I = 0x195

.field static final OP_GRTGRT:I = 0x19a

.field static final OP_GT:I = 0x1ae

.field static final OP_IDIV:I = 0x1a1

.field static final OP_INSTANCEOF:I = 0x1a6

.field static final OP_INTERSECT:I = 0x1a4

.field static final OP_IS:I = 0x198

.field static final OP_ISNOT:I = 0x199

.field static final OP_ITEM:I = 0xed

.field static final OP_LE:I = 0x1ad

.field static final OP_LEQ:I = 0x196

.field static final OP_LSS:I = 0x194

.field static final OP_LSSLSS:I = 0x19b

.field static final OP_LT:I = 0x1ac

.field static final OP_MOD:I = 0x1a2

.field static final OP_MUL:I = 0x19f

.field static final OP_NE:I = 0x1ab

.field static final OP_NEQ:I = 0x193

.field static final OP_NODE:I = 0xe6

.field static final OP_OR:I = 0x190

.field static final OP_PI:I = 0xe9

.field static final OP_RANGE_TO:I = 0x19c

.field static final OP_SCHEMA_ATTRIBUTE:I = 0xef

.field static final OP_SCHEMA_ELEMENT:I = 0xf0

.field static final OP_SUB:I = 0x19e

.field static final OP_TEXT:I = 0xe7

.field static final OP_TREAT_AS:I = 0x1a7

.field static final OP_UNION:I = 0x1a3

.field static final OP_WHERE:I = 0xc4

.field static final ORDERED_LBRACE_TOKEN:I = 0xf9

.field static final PI_TOKEN:I = 0xff

.field static final POSITION_VARNAME:Lgnu/mapping/Symbol;

.field static final PRAGMA_START_TOKEN:I = 0xc5

.field static final QNAME_TOKEN:I = 0x51

.field static final SLASHSLASH_TOKEN:I = 0x44

.field static final SOME_DOLLAR_TOKEN:I = 0xf5

.field static final STRING_TOKEN:I = 0x22

.field static final TEXT_TOKEN:I = 0xfd

.field static final TYPESWITCH_LPAREN_TOKEN:I = 0xf2

.field static final UNORDERED_LBRACE_TOKEN:I = 0xfa

.field static final VALIDATE_LBRACE_TOKEN:I = 0xf8

.field static final XQUERY_VERSION_TOKEN:I = 0x59

.field public static final axisNames:[Ljava/lang/String;

.field static builtinNamespaces:Lgnu/xml/NamespaceBinding;

.field public static final castableAs:Lgnu/xquery/util/CastableAs;

.field public static final getExternalFunction:Lgnu/expr/QuoteExp;

.field public static final instanceOf:Lgnu/kawa/reflect/InstanceOf;

.field static final makeCDATA:Lgnu/expr/Expression;

.field public static makeChildAxisStep:Lgnu/expr/QuoteExp;

.field public static makeDescendantAxisStep:Lgnu/expr/QuoteExp;

.field public static makeText:Lgnu/expr/Expression;

.field static proc_OccurrenceType_getInstance:Lgnu/expr/PrimProcedure;

.field public static final treatAs:Lgnu/kawa/functions/Convert;

.field public static warnHidePreviousDeclaration:Z

.field public static warnOldVersion:Z


# instance fields
.field baseURI:Lgnu/text/Path;

.field baseURIDeclarationSeen:Z

.field boundarySpaceDeclarationSeen:Z

.field boundarySpacePreserve:Z

.field commentCount:I

.field comp:Lgnu/expr/Compilation;

.field constructionModeDeclarationSeen:Z

.field constructionModeStrip:Z

.field constructorNamespaces:Lgnu/xml/NamespaceBinding;

.field copyNamespacesDeclarationSeen:Z

.field copyNamespacesMode:I

.field curColumn:I

.field curLine:I

.field curToken:I

.field curValue:Ljava/lang/Object;

.field defaultCollator:Lgnu/xquery/util/NamedCollator;

.field defaultElementNamespace:Ljava/lang/String;

.field defaultEmptyOrder:C

.field emptyOrderDeclarationSeen:Z

.field enclosedExpressionsSeen:I

.field errorIfComment:Ljava/lang/String;

.field flworDecls:[Lgnu/expr/Declaration;

.field flworDeclsCount:I

.field flworDeclsFirst:I

.field public functionNamespacePath:[Lgnu/mapping/Namespace;

.field interpreter:Lgnu/xquery/lang/XQuery;

.field libraryModuleNamespace:Ljava/lang/String;

.field orderingModeSeen:Z

.field orderingModeUnordered:Z

.field parseContext:I

.field parseCount:I

.field prologNamespaces:Lgnu/xml/NamespaceBinding;

.field private saveToken:I

.field private saveValue:Ljava/lang/Object;

.field seenDeclaration:Z

.field seenLast:I

.field seenPosition:I

.field private warnedOldStyleKindTest:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 55
    sput-boolean v5, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    .line 56
    sput-boolean v6, Lgnu/xquery/lang/XQParser;->warnHidePreviousDeclaration:Z

    .line 59
    const-string v2, "$dot$"

    invoke-static {v2}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    .line 62
    const-string v2, "$position$"

    invoke-static {v2}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    .line 65
    const-string v2, "$last$"

    invoke-static {v2}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    .line 67
    new-instance v2, Lgnu/kawa/reflect/InstanceOf;

    invoke-static {}, Lgnu/xquery/lang/XQuery;->getInstance()Lgnu/xquery/lang/XQuery;

    move-result-object v3

    const-string v4, "instance"

    invoke-direct {v2, v3, v4}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v2, Lgnu/xquery/lang/XQParser;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    .line 69
    sget-object v2, Lgnu/xquery/util/CastableAs;->castableAs:Lgnu/xquery/util/CastableAs;

    sput-object v2, Lgnu/xquery/lang/XQParser;->castableAs:Lgnu/xquery/util/CastableAs;

    .line 70
    sget-object v2, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    sput-object v2, Lgnu/xquery/lang/XQParser;->treatAs:Lgnu/kawa/functions/Convert;

    .line 1528
    new-instance v2, Lgnu/expr/PrimProcedure;

    const-string v3, "gnu.kawa.reflect.OccurrenceType"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const-string v4, "getInstance"

    invoke-virtual {v3, v4, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v2, Lgnu/xquery/lang/XQParser;->proc_OccurrenceType_getInstance:Lgnu/expr/PrimProcedure;

    .line 1958
    new-instance v2, Lgnu/expr/PrimProcedure;

    const-string v3, "gnu.kawa.xml.ChildAxis"

    const-string v4, "make"

    invoke-direct {v2, v3, v4, v5}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQParser;->makeChildAxisStep:Lgnu/expr/QuoteExp;

    .line 1960
    new-instance v2, Lgnu/expr/PrimProcedure;

    const-string v3, "gnu.kawa.xml.DescendantAxis"

    const-string v4, "make"

    invoke-direct {v2, v3, v4, v5}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQParser;->makeDescendantAxisStep:Lgnu/expr/QuoteExp;

    .line 2262
    const-string v2, "gnu.kawa.xml.MakeText"

    const-string v3, "makeText"

    invoke-static {v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    .line 2448
    const-string v2, "gnu.kawa.xml.MakeCDATA"

    const-string v3, "makeCDATA"

    invoke-static {v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQParser;->makeCDATA:Lgnu/expr/Expression;

    .line 3654
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    .line 3655
    .local v0, "ns":Lgnu/xml/NamespaceBinding;
    new-instance v1, Lgnu/xml/NamespaceBinding;

    const-string v2, "xml"

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v1, v2, v3, v0}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3656
    .end local v0    # "ns":Lgnu/xml/NamespaceBinding;
    .local v1, "ns":Lgnu/xml/NamespaceBinding;
    new-instance v0, Lgnu/xml/NamespaceBinding;

    const-string v2, "xs"

    const-string v3, "http://www.w3.org/2001/XMLSchema"

    invoke-direct {v0, v2, v3, v1}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3657
    .end local v1    # "ns":Lgnu/xml/NamespaceBinding;
    .restart local v0    # "ns":Lgnu/xml/NamespaceBinding;
    new-instance v1, Lgnu/xml/NamespaceBinding;

    const-string v2, "xsi"

    const-string v3, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-direct {v1, v2, v3, v0}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3658
    .end local v0    # "ns":Lgnu/xml/NamespaceBinding;
    .restart local v1    # "ns":Lgnu/xml/NamespaceBinding;
    new-instance v0, Lgnu/xml/NamespaceBinding;

    const-string v2, "fn"

    const-string v3, "http://www.w3.org/2005/xpath-functions"

    invoke-direct {v0, v2, v3, v1}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3659
    .end local v1    # "ns":Lgnu/xml/NamespaceBinding;
    .restart local v0    # "ns":Lgnu/xml/NamespaceBinding;
    new-instance v1, Lgnu/xml/NamespaceBinding;

    const-string v2, "html"

    const-string v3, "http://www.w3.org/1999/xhtml"

    invoke-direct {v1, v2, v3, v0}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3660
    .end local v0    # "ns":Lgnu/xml/NamespaceBinding;
    .restart local v1    # "ns":Lgnu/xml/NamespaceBinding;
    new-instance v0, Lgnu/xml/NamespaceBinding;

    const-string v2, "kawa"

    const-string v3, "http://kawa.gnu.org/"

    invoke-direct {v0, v2, v3, v1}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3661
    .end local v1    # "ns":Lgnu/xml/NamespaceBinding;
    .restart local v0    # "ns":Lgnu/xml/NamespaceBinding;
    new-instance v1, Lgnu/xml/NamespaceBinding;

    const-string v2, "qexo"

    const-string v3, "http://qexo.gnu.org/"

    invoke-direct {v1, v2, v3, v0}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3662
    .end local v0    # "ns":Lgnu/xml/NamespaceBinding;
    .restart local v1    # "ns":Lgnu/xml/NamespaceBinding;
    new-instance v0, Lgnu/xml/NamespaceBinding;

    const-string v2, "local"

    const-string v3, "http://www.w3.org/2005/xquery-local-functions"

    invoke-direct {v0, v2, v3, v1}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3663
    .end local v1    # "ns":Lgnu/xml/NamespaceBinding;
    .restart local v0    # "ns":Lgnu/xml/NamespaceBinding;
    sput-object v0, Lgnu/xquery/lang/XQParser;->builtinNamespaces:Lgnu/xml/NamespaceBinding;

    .line 3721
    new-instance v2, Lgnu/expr/PrimProcedure;

    const-string v3, "gnu.xquery.lang.XQuery"

    const-string v4, "getExternal"

    invoke-direct {v2, v3, v4, v7}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQParser;->getExternalFunction:Lgnu/expr/QuoteExp;

    .line 4275
    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    .line 4278
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const-string v3, "ancestor"

    aput-object v3, v2, v6

    .line 4279
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const-string v3, "ancestor-or-self"

    aput-object v3, v2, v5

    .line 4280
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const-string v3, "attribute"

    aput-object v3, v2, v7

    .line 4281
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const-string v3, "child"

    aput-object v3, v2, v8

    .line 4282
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "descendant"

    aput-object v4, v2, v3

    .line 4283
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v3, 0x5

    const-string v4, "descendant-or-self"

    aput-object v4, v2, v3

    .line 4284
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v3, 0x6

    const-string v4, "following"

    aput-object v4, v2, v3

    .line 4285
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v3, 0x7

    const-string v4, "following-sibling"

    aput-object v4, v2, v3

    .line 4286
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/16 v3, 0x8

    const-string v4, "namespace"

    aput-object v4, v2, v3

    .line 4287
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/16 v3, 0x9

    const-string v4, "parent"

    aput-object v4, v2, v3

    .line 4288
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/16 v3, 0xa

    const-string v4, "preceding"

    aput-object v4, v2, v3

    .line 4289
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/16 v3, 0xb

    const-string v4, "preceding-sibling"

    aput-object v4, v2, v3

    .line 4290
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/16 v3, 0xc

    const-string v4, "self"

    aput-object v4, v2, v3

    .line 4291
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/xquery/lang/XQuery;)V
    .registers 7
    .param p1, "port"    # Lgnu/mapping/InPort;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "interp"    # Lgnu/xquery/lang/XQuery;

    .prologue
    const/4 v2, 0x0

    .line 1220
    invoke-direct {p0, p1, p2}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    .line 72
    iput-object v2, p0, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    .line 77
    const/16 v1, 0x4c

    iput-char v1, p0, Lgnu/xquery/lang/XQParser;->defaultEmptyOrder:C

    .line 80
    iput-object v2, p0, Lgnu/xquery/lang/XQParser;->baseURI:Lgnu/text/Path;

    .line 158
    const/4 v1, 0x3

    iput v1, p0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    .line 166
    sget-object v1, Lgnu/xquery/lang/XQuery;->defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

    iput-object v1, p0, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 3641
    const-string v1, ""

    iput-object v1, p0, Lgnu/xquery/lang/XQParser;->defaultElementNamespace:Ljava/lang/String;

    .line 3646
    sget-object v1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v1, p0, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    .line 1221
    iput-object p3, p0, Lgnu/xquery/lang/XQParser;->interpreter:Lgnu/xquery/lang/XQuery;

    .line 1222
    const/4 v1, 0x1

    iput v1, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    .line 1225
    sget-object v0, Lgnu/xquery/lang/XQParser;->builtinNamespaces:Lgnu/xml/NamespaceBinding;

    .line 1226
    .local v0, "ns":Lgnu/xml/NamespaceBinding;
    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    .line 1227
    return-void
.end method

.method public static booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 5
    .param p0, "exp"    # Lgnu/expr/Expression;

    .prologue
    .line 2442
    const/4 v2, 0x1

    new-array v0, v2, [Lgnu/expr/Expression;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 2443
    .local v0, "args":[Lgnu/expr/Expression;
    const-string v2, "gnu.xquery.util.BooleanValue"

    const-string v3, "booleanValue"

    invoke-static {v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    .line 2445
    .local v1, "string":Lgnu/expr/Expression;
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, v1, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v2
.end method

.method static castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;
    .registers 7
    .param p0, "value"    # Lgnu/expr/Expression;
    .param p1, "element"    # Z

    .prologue
    .line 2552
    if-eqz p1, :cond_15

    sget-object v0, Lgnu/xquery/lang/XQResolveNames;->xsQNameDecl:Lgnu/expr/Declaration;

    .line 2554
    .local v0, "fdecl":Lgnu/expr/Declaration;
    :goto_4
    new-instance v1, Lgnu/expr/ApplyExp;

    new-instance v2, Lgnu/expr/ReferenceExp;

    invoke-direct {v2, v0}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/expr/Expression;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-direct {v1, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v1

    .line 2552
    .end local v0    # "fdecl":Lgnu/expr/Declaration;
    :cond_15
    sget-object v0, Lgnu/xquery/lang/XQResolveNames;->xsQNameIgnoreDefaultDecl:Lgnu/expr/Declaration;

    goto :goto_4
.end method

.method static fixupStaticBaseUri(Lgnu/text/Path;)Lgnu/text/Path;
    .registers 2
    .param p0, "path"    # Lgnu/text/Path;

    .prologue
    .line 99
    invoke-virtual {p0}, Lgnu/text/Path;->getAbsolute()Lgnu/text/Path;

    move-result-object p0

    .line 100
    instance-of v0, p0, Lgnu/text/FilePath;

    if-eqz v0, :cond_10

    .line 101
    invoke-virtual {p0}, Lgnu/text/Path;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object p0

    .line 102
    :cond_10
    return-object p0
.end method

.method private lookingAt(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "word0"    # Ljava/lang/String;
    .param p2, "word1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 898
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 921
    :goto_a
    return v4

    .line 900
    :cond_b
    const/4 v1, 0x0

    .line 901
    .local v1, "i":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 904
    .local v3, "len":I
    :goto_10
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 905
    .local v0, "ch":I
    if-ne v1, v3, :cond_2f

    .line 907
    if-gez v0, :cond_1a

    move v4, v5

    .line 908
    goto :goto_a

    .line 909
    :cond_1a
    int-to-char v6, v0

    invoke-static {v6}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v6

    if-nez v6, :cond_26

    .line 911
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    move v4, v5

    .line 912
    goto :goto_a

    .line 914
    :cond_26
    add-int/lit8 v1, v1, 0x1

    .line 920
    :cond_28
    :goto_28
    iget-object v5, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    neg-int v6, v1

    invoke-virtual {v5, v6}, Lgnu/text/LineBufferedReader;->skip(I)I

    goto :goto_a

    .line 917
    :cond_2f
    if-ltz v0, :cond_28

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v0, v6, :cond_3b

    move v1, v2

    .line 918
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_28

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_3b
    move v1, v2

    .line 919
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_10
.end method

.method static makeBinary(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 5
    .param p0, "func"    # Lgnu/expr/Expression;
    .param p1, "exp1"    # Lgnu/expr/Expression;
    .param p2, "exp2"    # Lgnu/expr/Expression;

    .prologue
    .line 1277
    const/4 v1, 0x2

    new-array v0, v1, [Lgnu/expr/Expression;

    .line 1278
    .local v0, "args":[Lgnu/expr/Expression;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1279
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 1280
    new-instance v1, Lgnu/expr/ApplyExp;

    invoke-direct {v1, p0, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v1
.end method

.method static makeExprSequence(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 4
    .param p0, "exp1"    # Lgnu/expr/Expression;
    .param p1, "exp2"    # Lgnu/expr/Expression;

    .prologue
    .line 1285
    const-string v0, "gnu.kawa.functions.AppendValues"

    const-string v1, "appendValues"

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lgnu/xquery/lang/XQParser;->makeBinary(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;
    .registers 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 4295
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;
    .registers 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 4303
    new-instance v0, Lgnu/expr/ReferenceExp;

    invoke-static {p0, p1, p2}, Lgnu/expr/Declaration;->getDeclarationValueFromStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    return-object v0
.end method

.method static makeNamedNodeType(ZLgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 9
    .param p0, "attribute"    # Z
    .param p1, "qname"    # Lgnu/expr/Expression;
    .param p2, "tname"    # Lgnu/expr/Expression;

    .prologue
    const/4 v4, 0x1

    .line 1434
    const/4 v3, 0x2

    new-array v1, v3, [Lgnu/expr/Expression;

    .line 1435
    .local v1, "name":[Lgnu/expr/Expression;
    if-eqz p0, :cond_23

    const-string v3, "gnu.kawa.xml.AttributeType"

    :goto_8
    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 1438
    .local v2, "nodeType":Lgnu/bytecode/ClassType;
    new-instance v0, Lgnu/expr/ApplyExp;

    const-string v3, "make"

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    new-array v4, v4, [Lgnu/expr/Expression;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v0, v3, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 1440
    .local v0, "elt":Lgnu/expr/ApplyExp;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 1441
    if-nez p2, :cond_26

    .line 1446
    .end local v0    # "elt":Lgnu/expr/ApplyExp;
    :goto_22
    return-object v0

    .line 1435
    .end local v2    # "nodeType":Lgnu/bytecode/ClassType;
    :cond_23
    const-string v3, "gnu.kawa.xml.ElementType"

    goto :goto_8

    .line 1446
    .restart local v0    # "elt":Lgnu/expr/ApplyExp;
    .restart local v2    # "nodeType":Lgnu/bytecode/ClassType;
    :cond_26
    new-instance v3, Lgnu/expr/BeginExp;

    invoke-direct {v3, p2, v0}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v0, v3

    goto :goto_22
.end method

.method private parseSimpleKindType()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1384
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1385
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_d

    .line 1386
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1389
    :goto_c
    return-void

    .line 1388
    :cond_d
    const-string v0, "expected \')\'"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_c
.end method

.method private static final priority(I)I
    .registers 2
    .param p0, "opcode"    # I

    .prologue
    .line 1238
    packed-switch p0, :pswitch_data_22

    .line 1270
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1241
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1243
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 1250
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 1252
    :pswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 1254
    :pswitch_d
    const/4 v0, 0x5

    goto :goto_4

    .line 1256
    :pswitch_f
    const/4 v0, 0x6

    goto :goto_4

    .line 1258
    :pswitch_11
    const/4 v0, 0x7

    goto :goto_4

    .line 1260
    :pswitch_13
    const/16 v0, 0x8

    goto :goto_4

    .line 1262
    :pswitch_16
    const/16 v0, 0x9

    goto :goto_4

    .line 1264
    :pswitch_19
    const/16 v0, 0xa

    goto :goto_4

    .line 1266
    :pswitch_1c
    const/16 v0, 0xb

    goto :goto_4

    .line 1268
    :pswitch_1f
    const/16 v0, 0xc

    goto :goto_4

    .line 1238
    :pswitch_data_22
    .packed-switch 0x190
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private setToken(II)I
    .registers 4
    .param p1, "token"    # I
    .param p2, "width"    # I

    .prologue
    .line 485
    iput p1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 486
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 487
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, p2

    iput v0, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 488
    return p1
.end method

.method private warnOldStyleKindTest()V
    .registers 3

    .prologue
    .line 1453
    iget-boolean v0, p0, Lgnu/xquery/lang/XQParser;->warnedOldStyleKindTest:Z

    if-eqz v0, :cond_5

    .line 1457
    :goto_4
    return-void

    .line 1455
    :cond_5
    const/16 v0, 0x77

    const-string v1, "old-style KindTest - first one here"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 1456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/xquery/lang/XQParser;->warnedOldStyleKindTest:Z

    goto :goto_4
.end method


# virtual methods
.method public appendNamedEntity(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 742
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 743
    const/16 v0, 0x3f

    .line 744
    .local v0, "ch":C
    const-string v1, "lt"

    if-ne p1, v1, :cond_10

    .line 745
    const/16 v0, 0x3c

    .line 756
    :goto_c
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 757
    return-void

    .line 746
    :cond_10
    const-string v1, "gt"

    if-ne p1, v1, :cond_17

    .line 747
    const/16 v0, 0x3e

    goto :goto_c

    .line 748
    :cond_17
    const-string v1, "amp"

    if-ne p1, v1, :cond_1e

    .line 749
    const/16 v0, 0x26

    goto :goto_c

    .line 750
    :cond_1e
    const-string v1, "quot"

    if-ne p1, v1, :cond_25

    .line 751
    const/16 v0, 0x22

    goto :goto_c

    .line 752
    :cond_25
    const-string v1, "apos"

    if-ne p1, v1, :cond_2c

    .line 753
    const/16 v0, 0x27

    goto :goto_c

    .line 755
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown enity reference: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_c
.end method

.method checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "inConstructor"    # Z

    .prologue
    const/16 v3, 0x65

    .line 1199
    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1200
    .local v0, "xmlPrefix":Z
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1202
    if-eqz v0, :cond_14

    if-nez p3, :cond_1b

    .line 1203
    :cond_14
    const-string v1, "namespace uri cannot be the same as the prefined xml namespace"

    const-string v2, "XQST0070"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 1209
    :cond_1b
    :goto_1b
    return-void

    .line 1206
    :cond_1c
    if-nez v0, :cond_26

    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1207
    :cond_26
    const-string v1, "namespace prefix cannot be \'xml\' or \'xmlns\'"

    const-string v2, "XQST0070"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method checkSeparator(C)V
    .registers 5
    .param p1, "ch"    # C

    .prologue
    .line 493
    invoke-static {p1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 494
    const/16 v0, 0x65

    const-string v1, "missing separator"

    const-string v2, "XPST0003"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_f
    return-void
.end method

.method public declError(Ljava/lang/String;)Lgnu/expr/Expression;
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 4359
    iget-boolean v0, p0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-eqz v0, :cond_9

    .line 4360
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 4368
    :goto_8
    return-object v0

    .line 4361
    :cond_9
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 4364
    :goto_c
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_17

    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 4368
    :cond_17
    new-instance v0, Lgnu/expr/ErrorExp;

    invoke-direct {v0, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 4366
    :cond_1d
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_c
.end method

.method public eofError(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 4410
    const-string v0, "XPST0003"

    invoke-virtual {p0, p1, v0}, Lgnu/xquery/lang/XQParser;->fatal(Ljava/lang/String;Ljava/lang/String;)V

    .line 4411
    return-void
.end method

.method public error(CLjava/lang/String;)V
    .registers 4
    .param p1, "severity"    # C
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 4353
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4354
    return-void
.end method

.method public error(CLjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "severity"    # C
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    .prologue
    .line 4344
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    .line 4345
    .local v6, "messages":Lgnu/text/SourceMessages;
    new-instance v0, Lgnu/text/SourceError;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    move v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 4347
    .local v0, "err":Lgnu/text/SourceError;
    iput-object p3, v0, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 4348
    invoke-virtual {v6, v0}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 4349
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 4415
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    .line 4416
    .local v6, "messages":Lgnu/text/SourceMessages;
    new-instance v0, Lgnu/text/SourceError;

    const/16 v1, 0x66

    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 4418
    .local v0, "err":Lgnu/text/SourceError;
    iput-object p2, v0, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 4419
    invoke-virtual {v6, v0}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 4420
    new-instance v1, Lgnu/text/SyntaxException;

    invoke-direct {v1, v6}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v1
.end method

.method getAxis()I
    .registers 7

    .prologue
    .line 927
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v4, 0x0

    iget v5, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, "name":Ljava/lang/String;
    const/16 v0, 0xd

    .local v0, "i":I
    :cond_10
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1a

    .line 930
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-ne v2, v1, :cond_10

    .line 932
    :cond_1a
    if-ltz v0, :cond_20

    const/16 v2, 0x8

    if-ne v0, v2, :cond_41

    .line 935
    :cond_20
    const/16 v2, 0x65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown axis name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XPST0003"

    invoke-virtual {p0, v2, v3, v4}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 936
    const/4 v0, 0x3

    .line 938
    :cond_41
    add-int/lit8 v2, v0, 0x64

    int-to-char v2, v2

    return v2
.end method

.method public getDelimited(Ljava/lang/String;)V
    .registers 4
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->readDelimited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected end-of-file looking for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 738
    :cond_22
    return-void
.end method

.method getRawToken()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v8, 0x3d

    const/16 v7, 0x2e

    .line 503
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->readUnicodeChar()I

    move-result v2

    .line 504
    .local v2, "next":I
    if-gez v2, :cond_14

    .line 505
    const/4 v6, -0x1

    invoke-direct {p0, v6, v5}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v0

    .line 726
    :goto_13
    return v0

    .line 506
    :cond_14
    const/16 v6, 0xa

    if-eq v2, v6, :cond_1c

    const/16 v6, 0xd

    if-ne v2, v6, :cond_27

    .line 508
    :cond_1c
    iget v6, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-gtz v6, :cond_8

    .line 509
    const/16 v6, 0xa

    invoke-direct {p0, v6, v5}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v0

    goto :goto_13

    .line 511
    :cond_27
    const/16 v6, 0x28

    if-ne v2, v6, :cond_4c

    .line 513
    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 514
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipComment()V

    goto :goto_8

    .line 515
    :cond_35
    const/16 v5, 0x23

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 516
    const/16 v5, 0xc5

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v0

    goto :goto_13

    .line 518
    :cond_45
    const/16 v5, 0x28

    invoke-direct {p0, v5, v4}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v0

    goto :goto_13

    .line 520
    :cond_4c
    const/16 v6, 0x7b

    if-ne v2, v6, :cond_78

    .line 522
    const/16 v6, 0x2d

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v6

    if-nez v6, :cond_5f

    .line 523
    const/16 v5, 0x7b

    invoke-direct {p0, v5, v4}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v0

    goto :goto_13

    .line 524
    :cond_5f
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v2

    .line 525
    const/16 v6, 0x2d

    if-eq v2, v6, :cond_74

    .line 528
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 529
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 530
    const/16 v5, 0x7b

    invoke-direct {p0, v5, v4}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v0

    goto :goto_13

    .line 532
    :cond_74
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipOldComment()V

    goto :goto_8

    .line 534
    :cond_78
    const/16 v6, 0x20

    if-eq v2, v6, :cond_8

    const/16 v6, 0x9

    if-eq v2, v6, :cond_8

    .line 537
    iput v5, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 538
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v6}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 539
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v6}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v6

    iput v6, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 540
    int-to-char v0, v2

    .line 541
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_26c

    .line 610
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_ab

    if-ne v0, v7, :cond_1c4

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v6

    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1c4

    .line 613
    :cond_ab
    if-ne v0, v7, :cond_185

    .line 616
    .local v4, "seenDot":Z
    :cond_ad
    :goto_ad
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 617
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v2

    .line 618
    if-gez v2, :cond_188

    .line 629
    :cond_b6
    :goto_b6
    const/16 v5, 0x65

    if-eq v2, v5, :cond_be

    const/16 v5, 0x45

    if-ne v2, v5, :cond_1b2

    .line 631
    :cond_be
    int-to-char v5, v2

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 632
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v2

    .line 633
    const/16 v5, 0x2b

    if-eq v2, v5, :cond_ce

    const/16 v5, 0x2d

    if-ne v2, v5, :cond_d5

    .line 635
    :cond_ce
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 636
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v2

    .line 638
    :cond_d5
    const/4 v1, 0x0

    .line 641
    .local v1, "expDigits":I
    :goto_d6
    if-gez v2, :cond_198

    .line 654
    :goto_d8
    if-nez v1, :cond_e3

    .line 655
    const/16 v5, 0x65

    const-string v6, "no digits following exponent"

    const-string v7, "XPST0003"

    invoke-virtual {p0, v5, v6, v7}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_e3
    const/16 v0, 0x32

    .line 725
    .end local v1    # "expDigits":I
    .end local v4    # "seenDot":Z
    :cond_e5
    :goto_e5
    :sswitch_e5
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_13

    .line 547
    :sswitch_e9
    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v5

    if-eqz v5, :cond_f2

    .line 548
    const/16 v0, 0x4c

    goto :goto_e5

    .line 549
    :cond_f2
    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 550
    const/16 v0, 0x58

    goto :goto_e5

    .line 553
    :sswitch_fb
    const/16 v0, 0x1a3

    .line 554
    goto :goto_e5

    .line 556
    :sswitch_fe
    const/16 v0, 0x19f

    .line 557
    goto :goto_e5

    .line 559
    :sswitch_101
    const/16 v0, 0x19d

    .line 560
    goto :goto_e5

    .line 562
    :sswitch_104
    const/16 v0, 0x19e

    .line 563
    goto :goto_e5

    .line 565
    :sswitch_107
    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 566
    const/16 v0, 0x193

    goto :goto_e5

    .line 569
    :sswitch_110
    const/16 v5, 0x2f

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 570
    const/16 v0, 0x44

    goto :goto_e5

    .line 573
    :sswitch_11b
    const/16 v5, 0x3e

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v5

    if-eqz v5, :cond_125

    .line 574
    const/16 v0, 0x52

    .line 575
    :cond_125
    const/16 v0, 0x192

    .line 576
    goto :goto_e5

    .line 578
    :sswitch_128
    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v5

    if-eqz v5, :cond_131

    const/16 v0, 0x197

    .line 580
    :goto_130
    goto :goto_e5

    .line 578
    :cond_131
    const/16 v5, 0x3e

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v5

    if-eqz v5, :cond_13c

    const/16 v0, 0x19a

    goto :goto_130

    :cond_13c
    const/16 v0, 0x195

    goto :goto_130

    .line 582
    :sswitch_13f
    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v5

    if-eqz v5, :cond_148

    const/16 v0, 0x196

    .line 584
    :goto_147
    goto :goto_e5

    .line 582
    :cond_148
    const/16 v5, 0x3c

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v5

    if-eqz v5, :cond_153

    const/16 v0, 0x19b

    goto :goto_147

    :cond_153
    const/16 v0, 0x194

    goto :goto_147

    .line 586
    :sswitch_156
    int-to-char v5, v2

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v3

    .line 589
    .local v3, "saveReadState":C
    :goto_15b
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->readUnicodeChar()I

    move-result v2

    .line 590
    if-gez v2, :cond_166

    .line 591
    const-string v5, "unexpected end-of-file in string starting here"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 592
    :cond_166
    const/16 v5, 0x26

    if-ne v2, v5, :cond_16e

    .line 594
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseEntityOrCharRef()V

    goto :goto_15b

    .line 597
    :cond_16e
    if-ne v0, v2, :cond_181

    .line 599
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v2

    .line 600
    if-eq v0, v2, :cond_17d

    .line 606
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 607
    const/16 v0, 0x22

    .line 608
    goto/16 :goto_e5

    .line 602
    :cond_17d
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v2

    .line 604
    :cond_181
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    goto :goto_15b

    .end local v3    # "saveReadState":C
    :cond_185
    move v4, v5

    .line 613
    goto/16 :goto_ad

    .line 620
    .restart local v4    # "seenDot":Z
    :cond_188
    int-to-char v0, v2

    .line 621
    if-ne v0, v7, :cond_190

    .line 623
    if-nez v4, :cond_b6

    .line 624
    const/4 v4, 0x1

    goto/16 :goto_ad

    .line 626
    :cond_190
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_ad

    goto/16 :goto_b6

    .line 643
    .restart local v1    # "expDigits":I
    :cond_198
    int-to-char v0, v2

    .line 644
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_1a7

    .line 646
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->checkSeparator(C)V

    .line 647
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    goto/16 :goto_d8

    .line 650
    :cond_1a7
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 651
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v2

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d6

    .line 660
    .end local v1    # "expDigits":I
    :cond_1b2
    if-eqz v4, :cond_1c1

    const/16 v0, 0x31

    .line 661
    :goto_1b6
    if-ltz v2, :cond_e5

    .line 663
    int-to-char v5, v2

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->checkSeparator(C)V

    .line 664
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto/16 :goto_e5

    .line 660
    :cond_1c1
    const/16 v0, 0x30

    goto :goto_1b6

    .line 668
    .end local v4    # "seenDot":Z
    :cond_1c4
    if-ne v0, v7, :cond_1d0

    .line 670
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 671
    const/16 v0, 0x33

    goto/16 :goto_e5

    .line 674
    :cond_1d0
    invoke-static {v0}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v5

    if-eqz v5, :cond_224

    .line 678
    :cond_1d6
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 679
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v2

    .line 680
    int-to-char v0, v2

    .line 681
    invoke-static {v0}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v5

    if-nez v5, :cond_1d6

    .line 684
    if-gez v2, :cond_1ea

    .line 685
    const/16 v0, 0x41

    goto/16 :goto_e5

    .line 688
    :cond_1ea
    if-eq v2, v9, :cond_1f3

    .line 689
    const/16 v0, 0x41

    .line 717
    :goto_1ee
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto/16 :goto_e5

    .line 692
    :cond_1f3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v2

    .line 693
    if-gez v2, :cond_1fe

    .line 694
    const-string v5, "unexpected end-of-file after NAME \':\'"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 695
    :cond_1fe
    int-to-char v0, v2

    .line 696
    invoke-static {v0}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v5

    if-eqz v5, :cond_219

    .line 698
    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 701
    :cond_208
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 702
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v2

    .line 703
    int-to-char v0, v2

    .line 704
    invoke-static {v0}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v5

    if-nez v5, :cond_208

    .line 707
    const/16 v0, 0x51

    goto :goto_1ee

    .line 709
    :cond_219
    if-ne v0, v8, :cond_221

    .line 711
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 712
    const/16 v0, 0x41

    goto :goto_1ee

    .line 715
    :cond_221
    const/16 v0, 0x43

    goto :goto_1ee

    .line 720
    :cond_224
    const/16 v5, 0x20

    if-lt v0, v5, :cond_24a

    const/16 v5, 0x7f

    if-ge v0, v5, :cond_24a

    .line 721
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_e5

    .line 723
    :cond_24a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid character \'\\u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_e5

    .line 541
    :sswitch_data_26c
    .sparse-switch
        0x21 -> :sswitch_107
        0x22 -> :sswitch_156
        0x24 -> :sswitch_e5
        0x27 -> :sswitch_156
        0x29 -> :sswitch_e5
        0x2a -> :sswitch_fe
        0x2b -> :sswitch_101
        0x2c -> :sswitch_e5
        0x2d -> :sswitch_104
        0x2f -> :sswitch_110
        0x3a -> :sswitch_e9
        0x3b -> :sswitch_e5
        0x3c -> :sswitch_13f
        0x3d -> :sswitch_11b
        0x3e -> :sswitch_128
        0x3f -> :sswitch_e5
        0x40 -> :sswitch_e5
        0x5b -> :sswitch_e5
        0x5d -> :sswitch_e5
        0x7c -> :sswitch_fb
        0x7d -> :sswitch_e5
    .end sparse-switch
.end method

.method public getStaticBaseUri()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 107
    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->baseURI:Lgnu/text/Path;

    .line 108
    .local v1, "path":Lgnu/text/Path;
    if-nez v1, :cond_46

    .line 110
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 111
    .local v0, "env":Lgnu/mapping/Environment;
    const-string v4, ""

    const-string v5, "base-uri"

    invoke-static {v4, v5}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    invoke-virtual {v0, v4, v6, v6}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 112
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_1b

    .line 114
    instance-of v4, v3, Lgnu/text/Path;

    if-eqz v4, :cond_4b

    .line 121
    :cond_1b
    :goto_1b
    if-nez v1, :cond_3a

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v2

    .local v2, "port":Lgnu/text/LineBufferedReader;
    if-eqz v2, :cond_3a

    .line 123
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object v1

    .line 124
    instance-of v4, v1, Lgnu/text/FilePath;

    if-eqz v4, :cond_3a

    invoke-virtual {v1}, Lgnu/text/Path;->exists()Z

    move-result v4

    if-eqz v4, :cond_39

    instance-of v4, v2, Lgnu/mapping/TtyInPort;

    if-nez v4, :cond_39

    instance-of v4, v2, Lgnu/mapping/CharArrayInPort;

    if-eqz v4, :cond_3a

    .line 128
    :cond_39
    const/4 v1, 0x0

    .line 131
    .end local v2    # "port":Lgnu/text/LineBufferedReader;
    :cond_3a
    if-nez v1, :cond_40

    .line 132
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v1

    .line 134
    :cond_40
    invoke-static {v1}, Lgnu/xquery/lang/XQParser;->fixupStaticBaseUri(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v1

    .line 135
    iput-object v1, p0, Lgnu/xquery/lang/XQParser;->baseURI:Lgnu/text/Path;

    .line 138
    .end local v0    # "env":Lgnu/mapping/Environment;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_46
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 117
    .restart local v0    # "env":Lgnu/mapping/Environment;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_4b
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v1

    goto :goto_1b
.end method

.method public handleOption(Lgnu/mapping/Symbol;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 4273
    return-void
.end method

.method makeBinary(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 8
    .param p1, "op"    # I
    .param p2, "exp1"    # Lgnu/expr/Expression;
    .param p3, "exp2"    # Lgnu/expr/Expression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1294
    packed-switch p1, :pswitch_data_138

    .line 1376
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unimplemented binary op: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    .line 1378
    :goto_1a
    return-object v1

    .line 1297
    :pswitch_1b
    const-string v1, "gnu.xquery.util.ArithOp"

    const-string v2, "add"

    const-string v3, "+"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1378
    .local v0, "func":Lgnu/expr/Expression;
    :goto_25
    invoke-static {v0, p2, p3}, Lgnu/xquery/lang/XQParser;->makeBinary(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    goto :goto_1a

    .line 1300
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_2a
    const-string v1, "gnu.xquery.util.ArithOp"

    const-string v2, "sub"

    const-string v3, "-"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1301
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto :goto_25

    .line 1303
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_35
    const-string v1, "gnu.xquery.util.ArithOp"

    const-string v2, "mul"

    const-string v3, "*"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1304
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto :goto_25

    .line 1306
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_40
    const-string v1, "gnu.xquery.util.ArithOp"

    const-string v2, "div"

    const-string v3, "div"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1307
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto :goto_25

    .line 1309
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_4b
    const-string v1, "gnu.xquery.util.ArithOp"

    const-string v2, "idiv"

    const-string v3, "idiv"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1310
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto :goto_25

    .line 1312
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_56
    const-string v1, "gnu.xquery.util.ArithOp"

    const-string v2, "mod"

    const-string v3, "mod"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1313
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto :goto_25

    .line 1315
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_61
    const-string v1, "gnu.xquery.util.Compare"

    const-string v2, "valEq"

    const-string v3, "eq"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1316
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto :goto_25

    .line 1318
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_6c
    const-string v1, "gnu.xquery.util.Compare"

    const-string v2, "valNe"

    const-string v3, "ne"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1319
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto :goto_25

    .line 1321
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_77
    const-string v1, "gnu.xquery.util.Compare"

    const-string v2, "valLt"

    const-string v3, "lt"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1322
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto :goto_25

    .line 1324
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_82
    const-string v1, "gnu.xquery.util.Compare"

    const-string v2, "valLe"

    const-string v3, "le"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1325
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto :goto_25

    .line 1327
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_8d
    const-string v1, "gnu.xquery.util.Compare"

    const-string v2, "valGt"

    const-string v3, "gt"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1328
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto :goto_25

    .line 1330
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_98
    const-string v1, "gnu.xquery.util.Compare"

    const-string v2, "valGe"

    const-string v3, "ge"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1331
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto :goto_25

    .line 1333
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_a3
    const-string v1, "gnu.xquery.util.Compare"

    const-string v2, "="

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1334
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto/16 :goto_25

    .line 1336
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_ad
    const-string v1, "gnu.xquery.util.Compare"

    const-string v2, "!="

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1337
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto/16 :goto_25

    .line 1339
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_b7
    const-string v1, "gnu.xquery.util.Compare"

    const-string v2, "<"

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1340
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto/16 :goto_25

    .line 1342
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_c1
    const-string v1, "gnu.xquery.util.Compare"

    const-string v2, "<="

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1343
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto/16 :goto_25

    .line 1345
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_cb
    const-string v1, "gnu.xquery.util.Compare"

    const-string v2, ">"

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1346
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto/16 :goto_25

    .line 1348
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_d5
    const-string v1, "gnu.xquery.util.Compare"

    const-string v2, ">="

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1349
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto/16 :goto_25

    .line 1351
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_df
    const-string v1, "gnu.kawa.xml.NodeCompare"

    const-string v2, "$Eq"

    const-string v3, "is"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1352
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto/16 :goto_25

    .line 1354
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_eb
    const-string v1, "gnu.kawa.xml.NodeCompare"

    const-string v2, "$Ne"

    const-string v3, "isnot"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1355
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto/16 :goto_25

    .line 1357
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_f7
    const-string v1, "gnu.kawa.xml.NodeCompare"

    const-string v2, "$Gr"

    const-string v3, ">>"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1358
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto/16 :goto_25

    .line 1360
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_103
    const-string v1, "gnu.kawa.xml.NodeCompare"

    const-string v2, "$Ls"

    const-string v3, "<<"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1361
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto/16 :goto_25

    .line 1363
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_10f
    const-string v1, "gnu.xquery.util.IntegerRange"

    const-string v2, "integerRange"

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1364
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto/16 :goto_25

    .line 1366
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_119
    const-string v1, "gnu.kawa.xml.UnionNodes"

    const-string v2, "unionNodes"

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1367
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto/16 :goto_25

    .line 1369
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_123
    const-string v1, "gnu.kawa.xml.IntersectNodes"

    const-string v2, "intersectNodes"

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1371
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto/16 :goto_25

    .line 1373
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_12d
    const-string v1, "gnu.kawa.xml.IntersectNodes"

    const-string v2, "exceptNodes"

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1374
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto/16 :goto_25

    .line 1294
    nop

    :pswitch_data_138
    .packed-switch 0x192
        :pswitch_a3
        :pswitch_ad
        :pswitch_b7
        :pswitch_cb
        :pswitch_c1
        :pswitch_d5
        :pswitch_df
        :pswitch_eb
        :pswitch_f7
        :pswitch_103
        :pswitch_10f
        :pswitch_1b
        :pswitch_2a
        :pswitch_35
        :pswitch_40
        :pswitch_4b
        :pswitch_56
        :pswitch_119
        :pswitch_123
        :pswitch_12d
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_61
        :pswitch_6c
        :pswitch_77
        :pswitch_82
        :pswitch_8d
        :pswitch_98
    .end packed-switch
.end method

.method public mark()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-super {p0}, Lgnu/text/Lexer;->mark()V

    .line 471
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    iput v0, p0, Lgnu/xquery/lang/XQParser;->saveToken:I

    .line 472
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->saveValue:Ljava/lang/Object;

    .line 473
    return-void
.end method

.method public match(Ljava/lang/String;)Z
    .registers 9
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3159
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x41

    if-eq v5, v6, :cond_8

    .line 3171
    :cond_7
    :goto_7
    return v4

    .line 3161
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3162
    .local v3, "len":I
    iget v5, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-ne v5, v3, :cond_7

    .line 3164
    move v2, v3

    .local v2, "i":I
    :cond_11
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_20

    .line 3166
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3167
    .local v1, "cs":C
    iget-object v5, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v0, v5, v2

    .line 3168
    .local v0, "cb":C
    if-eq v1, v0, :cond_11

    goto :goto_7

    .line 3171
    .end local v0    # "cb":C
    .end local v1    # "cs":C
    :cond_20
    const/4 v4, 0x1

    goto :goto_7
.end method

.method match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 762
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 764
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->mark()V

    .line 765
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 766
    invoke-virtual {p0, p2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 768
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->reset()V

    .line 769
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 780
    :goto_19
    return v0

    .line 772
    :cond_1a
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->reset()V

    .line 773
    if-eqz p3, :cond_4a

    .line 775
    const/16 v1, 0x65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' must be followed by \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XPST0003"

    invoke-virtual {p0, v1, v2, v3}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 780
    :cond_4a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public maybeSetLine(Lgnu/expr/Declaration;II)V
    .registers 5
    .param p1, "decl"    # Lgnu/expr/Declaration;
    .param p2, "line"    # I
    .param p3, "column"    # I

    .prologue
    .line 4442
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4443
    .local v0, "file":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 4445
    invoke-virtual {p1, v0}, Lgnu/expr/Declaration;->setFile(Ljava/lang/String;)V

    .line 4446
    invoke-virtual {p1, p2, p3}, Lgnu/expr/Declaration;->setLine(II)V

    .line 4448
    :cond_c
    return-void
.end method

.method public maybeSetLine(Lgnu/expr/Expression;II)V
    .registers 6
    .param p1, "exp"    # Lgnu/expr/Expression;
    .param p2, "line"    # I
    .param p3, "column"    # I

    .prologue
    .line 4431
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4432
    .local v0, "file":Ljava/lang/String;
    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lgnu/expr/Expression;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    instance-of v1, p1, Lgnu/expr/QuoteExp;

    if-nez v1, :cond_16

    .line 4435
    invoke-virtual {p1, v0}, Lgnu/expr/Expression;->setFile(Ljava/lang/String;)V

    .line 4436
    invoke-virtual {p1, p2, p3}, Lgnu/expr/Expression;->setLine(II)V

    .line 4438
    :cond_16
    return-void
.end method

.method protected namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "function"    # Z

    .prologue
    .line 3668
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 3669
    .local v1, "colon":I
    if-ltz v1, :cond_4f

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 3672
    .local v4, "prefix":Ljava/lang/String;
    :goto_11
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    iget-object v7, p0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    invoke-static {v4, v6, v7}, Lgnu/xquery/util/QNameUtils;->lookupPrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v5

    .line 3675
    .local v5, "uri":Ljava/lang/String;
    if-nez v5, :cond_47

    .line 3677
    if-gez v1, :cond_57

    .line 3678
    const-string v5, ""

    .line 3691
    :cond_1f
    :goto_1f
    if-nez v5, :cond_47

    .line 3693
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    const/16 v7, 0x65

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown namespace prefix \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "XPST0081"

    invoke-virtual {v6, v7, v8, v9}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3696
    const-string v5, "(unknown namespace)"

    .line 3699
    :cond_47
    if-gez v1, :cond_7a

    move-object v3, p1

    .line 3700
    .local v3, "local":Ljava/lang/String;
    :goto_4a
    invoke-static {v5, v3, v4}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v6

    return-object v6

    .line 3669
    .end local v3    # "local":Ljava/lang/String;
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "uri":Ljava/lang/String;
    :cond_4f
    if-eqz p2, :cond_54

    const-string v4, "(functions)"

    goto :goto_11

    :cond_54
    sget-object v4, Lgnu/xquery/lang/XQuery;->DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

    goto :goto_11

    .line 3679
    .restart local v4    # "prefix":Ljava/lang/String;
    .restart local v5    # "uri":Ljava/lang/String;
    :cond_57
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v6}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 3683
    :try_start_5f
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3684
    .local v0, "cl":Ljava/lang/Class;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "class:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_75} :catch_77

    move-result-object v5

    goto :goto_1f

    .line 3686
    .end local v0    # "cl":Ljava/lang/Class;
    :catch_77
    move-exception v2

    .line 3688
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1f

    .line 3699
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_7a
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4a
.end method

.method public parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;
    .registers 53
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3730
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    .line 3731
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v18

    .line 3732
    .local v18, "ch":I
    if-gez v18, :cond_f

    .line 3733
    const/16 v27, 0x0

    .line 4267
    :cond_e
    :goto_e
    return-object v27

    .line 3734
    :cond_f
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->parseCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lgnu/xquery/lang/XQParser;->parseCount:I

    .line 3735
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 3736
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v6

    add-int/lit8 v44, v6, 0x1

    .line 3737
    .local v44, "startLine":I
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v6

    add-int/lit8 v43, v6, 0x1

    .line 3740
    .local v43, "startColumn":I
    const/16 v6, 0x23

    move/from16 v0, v18

    if-ne v0, v6, :cond_6d

    const/4 v6, 0x1

    move/from16 v0, v44

    if-ne v0, v6, :cond_6d

    const/4 v6, 0x1

    move/from16 v0, v43

    if-ne v0, v6, :cond_6d

    .line 3742
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    .line 3743
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v18

    const/16 v6, 0x21

    move/from16 v0, v18

    if-ne v0, v6, :cond_53

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v18

    const/16 v6, 0x2f

    move/from16 v0, v18

    if-eq v0, v6, :cond_5a

    .line 3744
    :cond_53
    const-string v6, "\'#\' is only allowed in initial \'#!/PROGRAM\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 3745
    :cond_5a
    :goto_5a
    const/16 v6, 0xd

    move/from16 v0, v18

    if-eq v0, v6, :cond_6d

    const/16 v6, 0xa

    move/from16 v0, v18

    if-eq v0, v6, :cond_6d

    if-ltz v18, :cond_6d

    .line 3746
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v18

    goto :goto_5a

    .line 3749
    :cond_6d
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_77

    .line 3750
    const/16 v27, 0x0

    goto :goto_e

    .line 3751
    :cond_77
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    .line 3753
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x41

    if-ne v6, v9, :cond_a3

    const-string v9, "namespace"

    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 3756
    sget-boolean v6, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-eqz v6, :cond_9d

    .line 3757
    const/16 v6, 0x77

    const-string v9, "use \'declare namespace\' instead of \'namespace\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 3758
    :cond_9d
    const/16 v6, 0x4e

    move-object/from16 v0, p0

    iput v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 3766
    :cond_a3
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    sparse-switch v6, :sswitch_data_ba4

    .line 4261
    const/4 v6, -0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v27

    .line 4262
    .local v27, "exp":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0xa

    if-ne v6, v9, :cond_c1

    .line 4263
    const/16 v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 4264
    :cond_c1
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v44

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 4265
    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eqz v6, :cond_e

    .line 4266
    const/16 v6, 0x65

    const-string v9, "query body in a library module"

    const-string v10, "XPST0003"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v10}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 3769
    .end local v27    # "exp":Lgnu/expr/Expression;
    :sswitch_df
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v6

    add-int/lit8 v23, v6, 0x1

    .line 3770
    .local v23, "declLine":I
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v6

    add-int/lit8 v22, v6, 0x1

    .line 3771
    .local v22, "declColumn":I
    const-string v6, "unexpected end-of-file after \'define QName\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    move-result v36

    .line 3772
    .local v36, "next":I
    const/16 v6, 0x28

    move/from16 v0, v36

    if-ne v0, v6, :cond_112

    .line 3774
    const-string v6, "\'missing \'function\' after \'define\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 3775
    const/16 v6, 0x41

    move-object/from16 v0, p0

    iput v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 3776
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQParser;->parseFunctionDefinition(II)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 3779
    :cond_112
    const-string v6, "missing keyword after \'define\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 3782
    .end local v22    # "declColumn":I
    .end local v23    # "declLine":I
    .end local v36    # "next":I
    :sswitch_11c
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v6

    add-int/lit8 v23, v6, 0x1

    .line 3783
    .restart local v23    # "declLine":I
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v6

    add-int/lit8 v22, v6, 0x1

    .line 3784
    .restart local v22    # "declColumn":I
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3785
    const-string v6, "unexpected end-of-file after \'define function\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    .line 3786
    const/16 v6, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v40

    .line 3787
    .local v40, "save":C
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQParser;->parseFunctionDefinition(II)Lgnu/expr/Expression;

    move-result-object v27

    .line 3788
    .restart local v27    # "exp":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3789
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 3790
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v44

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3791
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    goto/16 :goto_e

    .line 3795
    .end local v22    # "declColumn":I
    .end local v23    # "declLine":I
    .end local v27    # "exp":Lgnu/expr/Expression;
    .end local v40    # "save":C
    :sswitch_160
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3796
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v21

    .line 3797
    .local v21, "decl":Lgnu/expr/Declaration;
    if-nez v21, :cond_173

    .line 3798
    const-string v6, "missing Variable"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 3799
    :cond_173
    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v35

    .line 3800
    .local v35, "name":Ljava/lang/Object;
    move-object/from16 v0, v35

    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_1a4

    .line 3802
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lgnu/xquery/lang/XQParser;->curLine:I

    move-object/from16 v0, p0

    iget v11, v0, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {v6, v9, v10, v11}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 3803
    check-cast v35, Ljava/lang/String;

    .end local v35    # "name":Ljava/lang/Object;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v6}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->setSymbol(Ljava/lang/Object;)V

    .line 3805
    :cond_1a4
    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eqz v6, :cond_1d7

    .line 3807
    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/Symbol;

    invoke-virtual {v6}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v48

    .line 3808
    .local v48, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    move-object/from16 v0, v48

    if-eq v0, v6, :cond_1d7

    const-string v6, "http://www.w3.org/2005/xquery-local-functions"

    move-object/from16 v0, v48

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1cc

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v6

    if-eqz v6, :cond_1d7

    .line 3810
    :cond_1cc
    const/16 v6, 0x65

    const-string v9, "variable not in namespace of library module"

    const-string v10, "XQST0048"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v10}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3813
    .end local v48    # "uri":Ljava/lang/String;
    :cond_1d7
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3814
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3815
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v47

    .line 3816
    .local v47, "type":Lgnu/expr/Expression;
    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 3818
    const-wide/16 v10, 0x4000

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3819
    const/16 v30, 0x0

    .line 3820
    .local v30, "init":Lgnu/expr/Expression;
    const/16 v42, 0x0

    .line 3821
    .local v42, "sawEq":Z
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x192

    if-eq v6, v9, :cond_208

    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x4c

    if-ne v6, v9, :cond_21c

    .line 3823
    :cond_208
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x192

    if-ne v6, v9, :cond_217

    .line 3824
    const-string v6, "declare variable contains \'=\' instead of \':=\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 3825
    :cond_217
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3826
    const/16 v42, 0x1

    .line 3828
    :cond_21c
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x7b

    if-ne v6, v9, :cond_25d

    .line 3830
    const-string v6, "obsolete \'{\' in variable declaration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 3831
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v30

    .line 3832
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 3854
    :cond_232
    :goto_232
    if-eqz v47, :cond_23c

    .line 3855
    move-object/from16 v0, v30

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v30

    .line 3856
    :cond_23c
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3857
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lgnu/expr/SetExp;->makeDefinition(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/SetExp;

    move-result-object v27

    .line 3858
    .restart local v27    # "exp":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v44

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3859
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    goto/16 :goto_e

    .line 3834
    .end local v27    # "exp":Lgnu/expr/Expression;
    :cond_25d
    const-string v6, "external"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a1

    .line 3836
    const/4 v6, 0x2

    new-array v15, v6, [Lgnu/expr/Expression;

    const/4 v6, 0x0

    new-instance v9, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v9, v10}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v9

    aput-object v9, v15, v6

    const/4 v9, 0x1

    if-nez v47, :cond_29e

    sget-object v6, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    :goto_280
    aput-object v6, v15, v9

    .line 3841
    .local v15, "args":[Lgnu/expr/Expression;
    new-instance v30, Lgnu/expr/ApplyExp;

    .end local v30    # "init":Lgnu/expr/Expression;
    sget-object v6, Lgnu/xquery/lang/XQParser;->getExternalFunction:Lgnu/expr/QuoteExp;

    move-object/from16 v0, v30

    invoke-direct {v0, v6, v15}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 3842
    .restart local v30    # "init":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curLine:I

    move-object/from16 v0, p0

    iget v9, v0, Lgnu/xquery/lang/XQParser;->curColumn:I

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6, v9}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3843
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_232

    .end local v15    # "args":[Lgnu/expr/Expression;
    :cond_29e
    move-object/from16 v6, v47

    .line 3836
    goto :goto_280

    .line 3847
    :cond_2a1
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v30

    .line 3848
    const/16 v25, 0x0

    .line 3849
    .local v25, "err":Lgnu/expr/Expression;
    if-eqz v42, :cond_2ab

    if-nez v30, :cond_2b3

    .line 3850
    :cond_2ab
    const-string v6, "expected \':= init\' or \'external\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    .line 3851
    :cond_2b3
    if-nez v30, :cond_232

    .line 3852
    move-object/from16 v30, v25

    goto/16 :goto_232

    .line 3864
    .end local v21    # "decl":Lgnu/expr/Declaration;
    .end local v25    # "err":Lgnu/expr/Expression;
    .end local v30    # "init":Lgnu/expr/Expression;
    .end local v42    # "sawEq":Z
    .end local v47    # "type":Lgnu/expr/Expression;
    :sswitch_2b9
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v20, v0

    .line 3865
    .local v20, "command":I
    const/16 v6, 0x4d

    move/from16 v0, v20

    if-ne v0, v6, :cond_304

    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eqz v6, :cond_304

    .line 3867
    const/16 v6, 0x65

    const-string v9, "duplicate module declaration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 3870
    :cond_2d4
    :goto_2d4
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz v6, :cond_31a

    const/4 v6, 0x1

    :goto_2db
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v36

    .line 3871
    .restart local v36    # "next":I
    if-ltz v36, :cond_434

    .line 3873
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 3874
    move/from16 v0, v36

    int-to-char v6, v0

    invoke-static {v6}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v6

    if-eqz v6, :cond_434

    .line 3876
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3877
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x41

    if-eq v6, v9, :cond_31c

    .line 3878
    const-string v6, "missing namespace prefix"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 3868
    .end local v36    # "next":I
    :cond_304
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    if-eqz v6, :cond_2d4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v6, :cond_2d4

    .line 3869
    const/16 v6, 0x65

    const-string v9, "namespace declared after function/variable/option"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_2d4

    .line 3870
    :cond_31a
    const/4 v6, 0x0

    goto :goto_2db

    .line 3879
    .restart local v36    # "next":I
    :cond_31c
    new-instance v39, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move-object/from16 v0, v39

    invoke-direct {v0, v6, v9, v10}, Ljava/lang/String;-><init>([CII)V

    .line 3880
    .local v39, "prefix":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3881
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x192

    if-eq v6, v9, :cond_341

    .line 3882
    const-string v6, "missing \'=\' in namespace declaration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 3883
    :cond_341
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3884
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x22

    if-eq v6, v9, :cond_356

    .line 3885
    const-string v6, "missing uri in namespace declaration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 3886
    :cond_356
    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v6, v9, v10, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v48

    .line 3887
    .restart local v48    # "uri":Ljava/lang/String;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v39

    .line 3888
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v37, v0

    .line 3889
    .local v37, "ns":Lgnu/xml/NamespaceBinding;
    :goto_372
    sget-object v6, Lgnu/xquery/lang/XQParser;->builtinNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v0, v37

    if-eq v0, v6, :cond_3a4

    .line 3892
    invoke-virtual/range {v37 .. v37}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v39

    if-ne v6, v0, :cond_424

    .line 3894
    const/16 v6, 0x65

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "duplicate declarations for the same namespace prefix \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "XQST0033"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v10}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3901
    :cond_3a4
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQParser;->pushNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 3902
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2, v6}, Lgnu/xquery/lang/XQParser;->checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3903
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 3904
    const/16 v6, 0x4d

    move/from16 v0, v20

    if-ne v0, v6, :cond_430

    .line 3906
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v8

    .line 3907
    .local v8, "module":Lgnu/expr/ModuleExp;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v48 .. v48}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v9, 0x2e

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lgnu/xquery/lang/XQuery;->makeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3909
    .local v4, "className":Ljava/lang/String;
    invoke-virtual {v8, v4}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 3910
    new-instance v6, Lgnu/bytecode/ClassType;

    invoke-direct {v6, v4}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iput-object v6, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 3911
    move-object/from16 v0, p1

    iget-object v6, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v8, v6}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 3912
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v32

    .line 3913
    .local v32, "manager":Lgnu/expr/ModuleManager;
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleManager;->find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;

    move-result-object v5

    .line 3914
    .local v5, "info":Lgnu/expr/ModuleInfo;
    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Lgnu/expr/ModuleInfo;->setNamespaceUri(Ljava/lang/String;)V

    .line 3915
    move-object/from16 v0, p1

    iget-object v6, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v8, v6}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 3916
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_42a

    .line 3917
    const-string v6, "zero-length module namespace"

    const-string v9, "XQST0088"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 3890
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "info":Lgnu/expr/ModuleInfo;
    .end local v8    # "module":Lgnu/expr/ModuleExp;
    .end local v32    # "manager":Lgnu/expr/ModuleManager;
    :cond_424
    invoke-virtual/range {v37 .. v37}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v37

    goto/16 :goto_372

    .line 3918
    .restart local v4    # "className":Ljava/lang/String;
    .restart local v5    # "info":Lgnu/expr/ModuleInfo;
    .restart local v8    # "module":Lgnu/expr/ModuleExp;
    .restart local v32    # "manager":Lgnu/expr/ModuleManager;
    :cond_42a
    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    .line 3920
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "info":Lgnu/expr/ModuleInfo;
    .end local v8    # "module":Lgnu/expr/ModuleExp;
    .end local v32    # "manager":Lgnu/expr/ModuleManager;
    :cond_430
    sget-object v27, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto/16 :goto_e

    .line 3925
    .end local v20    # "command":I
    .end local v36    # "next":I
    .end local v37    # "ns":Lgnu/xml/NamespaceBinding;
    .end local v39    # "prefix":Ljava/lang/String;
    .end local v48    # "uri":Ljava/lang/String;
    :cond_434
    :sswitch_434
    const-string v6, "\'import schema\' not implemented"

    const-string v9, "XQST0009"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->fatal(Ljava/lang/String;Ljava/lang/String;)V

    .line 3928
    :sswitch_43d
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3929
    const/16 v39, 0x0

    .line 3930
    .restart local v39    # "prefix":Ljava/lang/String;
    const-string v6, "namespace"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_489

    .line 3932
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3933
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x41

    if-eq v6, v9, :cond_461

    .line 3934
    const-string v6, "missing namespace prefix"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 3935
    :cond_461
    new-instance v39, Ljava/lang/String;

    .end local v39    # "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move-object/from16 v0, v39

    invoke-direct {v0, v6, v9, v10}, Ljava/lang/String;-><init>([CII)V

    .line 3936
    .restart local v39    # "prefix":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3937
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x192

    if-eq v6, v9, :cond_486

    .line 3938
    const-string v6, "missing \'=\' in namespace declaration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 3939
    :cond_486
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3941
    :cond_489
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x22

    if-eq v6, v9, :cond_49b

    .line 3942
    const-string v6, "missing uri in namespace declaration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 3943
    :cond_49b
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-nez v6, :cond_4ad

    .line 3944
    const-string v6, "zero-length target namespace"

    const-string v9, "XQST0088"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 3945
    :cond_4ad
    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v6, v9, v10, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v48

    .line 3946
    .restart local v48    # "uri":Ljava/lang/String;
    if-eqz v39, :cond_4d6

    .line 3948
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2, v6}, Lgnu/xquery/lang/XQParser;->checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3949
    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v6, v1}, Lgnu/xquery/lang/XQParser;->pushNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 3951
    :cond_4d6
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3953
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lgnu/expr/ModuleManager;->find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;

    .line 3956
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v8

    .line 3957
    .restart local v8    # "module":Lgnu/expr/ModuleExp;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 3958
    .local v7, "forms":Ljava/util/Vector;
    invoke-static/range {v48 .. v48}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 3959
    .local v38, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v6}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v6, v1, v2}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V

    .line 3960
    const-string v6, "at"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c5

    .line 3964
    :cond_50a
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3965
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x22

    if-eq v6, v9, :cond_51f

    .line 3966
    const-string v6, "missing module location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 3967
    :cond_51f
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move-object/from16 v0, v16

    invoke-direct {v0, v6, v9, v10}, Ljava/lang/String;-><init>([CII)V

    .line 3968
    .local v16, "at":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v48 .. v48}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v9, 0x2e

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Lgnu/xquery/lang/XQuery;->makeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3971
    .restart local v4    # "className":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v0, v8}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v5

    .line 3972
    .restart local v5    # "info":Lgnu/expr/ModuleInfo;
    if-nez v5, :cond_572

    .line 3973
    const/16 v6, 0x65

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "malformed URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v9}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 3974
    :cond_572
    const/4 v6, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v9}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    .line 3976
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz v6, :cond_5c3

    const/4 v6, 0x1

    :goto_57f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v36

    .line 3977
    .restart local v36    # "next":I
    const/16 v6, 0x2c

    move/from16 v0, v36

    if-eq v0, v6, :cond_50a

    .line 3979
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 3983
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4018
    .end local v4    # "className":Ljava/lang/String;
    .end local v36    # "next":I
    :cond_595
    :goto_595
    move-object/from16 v0, p1

    iget-object v6, v0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    if-eqz v6, :cond_5b0

    move-object/from16 v0, p1

    iget-object v6, v0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    if-lez v6, :cond_5b0

    .line 4020
    const/16 v6, 0x65

    const-string v9, "module import forms a cycle"

    const-string v10, "XQST0073"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v10}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4022
    :cond_5b0
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v0, v6, [Lgnu/expr/Expression;

    move-object/from16 v31, v0

    .line 4023
    .local v31, "inits":[Lgnu/expr/Expression;
    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4024
    invoke-static/range {v31 .. v31}, Lgnu/expr/BeginExp;->canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 3976
    .end local v31    # "inits":[Lgnu/expr/Expression;
    .restart local v4    # "className":Ljava/lang/String;
    :cond_5c3
    const/4 v6, 0x0

    goto :goto_57f

    .line 3987
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "info":Lgnu/expr/ModuleInfo;
    .end local v16    # "at":Ljava/lang/String;
    :cond_5c5
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v32

    .line 3988
    .restart local v32    # "manager":Lgnu/expr/ModuleManager;
    const/16 v34, 0x0

    .line 3991
    .local v34, "n":I
    :try_start_5cb
    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleManager;->loadPackageInfo(Ljava/lang/String;)V
    :try_end_5d2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5cb .. :try_end_5d2} :catch_ba1
    .catch Ljava/lang/Throwable; {:try_start_5cb .. :try_end_5d2} :catch_60a

    .line 4002
    :goto_5d2
    const/16 v29, 0x0

    .line 4004
    .local v29, "i":I
    :goto_5d4
    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleManager;->getModule(I)Lgnu/expr/ModuleInfo;

    move-result-object v5

    .line 4005
    .restart local v5    # "info":Lgnu/expr/ModuleInfo;
    if-nez v5, :cond_634

    .line 4012
    if-nez v34, :cond_5fc

    .line 4013
    const/16 v6, 0x65

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no module found for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v48

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 4014
    :cond_5fc
    const/16 v16, 0x0

    .line 4015
    .restart local v16    # "at":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x3b

    if-eq v6, v9, :cond_595

    .line 4016
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    goto :goto_595

    .line 3998
    .end local v5    # "info":Lgnu/expr/ModuleInfo;
    .end local v16    # "at":Ljava/lang/String;
    .end local v29    # "i":I
    :catch_60a
    move-exception v26

    .line 4000
    .local v26, "ex":Ljava/lang/Throwable;
    const/16 v6, 0x65

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error loading map for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v48

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_5d2

    .line 4007
    .end local v26    # "ex":Ljava/lang/Throwable;
    .restart local v5    # "info":Lgnu/expr/ModuleInfo;
    .restart local v29    # "i":I
    :cond_634
    invoke-virtual {v5}, Lgnu/expr/ModuleInfo;->getNamespaceUri()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_643

    .line 4002
    :goto_640
    add-int/lit8 v29, v29, 0x1

    goto :goto_5d4

    .line 4009
    :cond_643
    add-int/lit8 v34, v34, 0x1

    .line 4010
    invoke-virtual {v5}, Lgnu/expr/ModuleInfo;->getClassName()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    move-object v10, v5

    move-object v12, v7

    move-object v13, v8

    move-object/from16 v14, p1

    invoke-static/range {v9 .. v14}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    goto :goto_640

    .line 4027
    .end local v5    # "info":Lgnu/expr/ModuleInfo;
    .end local v7    # "forms":Ljava/util/Vector;
    .end local v8    # "module":Lgnu/expr/ModuleExp;
    .end local v29    # "i":I
    .end local v32    # "manager":Lgnu/expr/ModuleManager;
    .end local v34    # "n":I
    .end local v38    # "packageName":Ljava/lang/String;
    .end local v39    # "prefix":Ljava/lang/String;
    .end local v48    # "uri":Ljava/lang/String;
    :sswitch_653
    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    if-eqz v6, :cond_66a

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v6, :cond_66a

    .line 4028
    const/16 v6, 0x65

    const-string v9, "duplicate default collation declaration"

    const-string v10, "XQST0038"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v10}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4029
    :cond_66a
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseURILiteral()Ljava/lang/Object;

    move-result-object v49

    .line 4030
    .local v49, "val":Ljava/lang/Object;
    move-object/from16 v0, v49

    instance-of v6, v0, Lgnu/expr/Expression;

    if-eqz v6, :cond_67a

    .line 4031
    check-cast v49, Lgnu/expr/Expression;

    .end local v49    # "val":Ljava/lang/Object;
    move-object/from16 v27, v49

    goto/16 :goto_e

    .restart local v49    # "val":Ljava/lang/Object;
    :cond_67a
    move-object/from16 v19, v49

    .line 4032
    check-cast v19, Ljava/lang/String;

    .line 4035
    .local v19, "collation":Ljava/lang/String;
    :try_start_67e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4036
    invoke-static/range {v19 .. v19}, Lgnu/xquery/util/NamedCollator;->make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;
    :try_end_68e
    .catch Ljava/lang/Exception; {:try_start_67e .. :try_end_68e} :catch_695

    .line 4043
    :goto_68e
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4044
    sget-object v27, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto/16 :goto_e

    .line 4038
    :catch_695
    move-exception v26

    .line 4040
    .local v26, "ex":Ljava/lang/Exception;
    sget-object v6, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    move-object/from16 v0, p0

    iput-object v6, v0, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    .line 4041
    const/16 v6, 0x65

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown collation \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "XQST0038"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v10}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_68e

    .line 4048
    .end local v19    # "collation":Ljava/lang/String;
    .end local v26    # "ex":Ljava/lang/Exception;
    .end local v49    # "val":Ljava/lang/Object;
    :sswitch_6c1
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x4f

    if-ne v6, v9, :cond_724

    const/16 v28, 0x1

    .line 4049
    .local v28, "forFunctions":Z
    :goto_6cb
    if-eqz v28, :cond_727

    const-string v39, "(functions)"

    .line 4051
    .restart local v39    # "prefix":Ljava/lang/String;
    :goto_6cf
    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    sget-object v9, Lgnu/xquery/lang/XQParser;->builtinNamespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v0, v39

    invoke-virtual {v6, v0, v9}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_72a

    .line 4052
    const/16 v6, 0x65

    const-string v9, "duplicate default namespace declaration"

    const-string v10, "XQST0066"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v10}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4057
    :cond_6e8
    :goto_6e8
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4058
    const-string v6, "namespace"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_740

    .line 4059
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4068
    :goto_6f8
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x192

    if-eq v6, v9, :cond_708

    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x4c

    if-ne v6, v9, :cond_712

    .line 4070
    :cond_708
    const-string v6, "extra \'=\' in default namespace declaration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 4071
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4073
    :cond_712
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x22

    if-eq v6, v9, :cond_764

    .line 4074
    const-string v6, "missing namespace uri"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->declError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 4048
    .end local v28    # "forFunctions":Z
    .end local v39    # "prefix":Ljava/lang/String;
    :cond_724
    const/16 v28, 0x0

    goto :goto_6cb

    .line 4049
    .restart local v28    # "forFunctions":Z
    :cond_727
    sget-object v39, Lgnu/xquery/lang/XQuery;->DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

    goto :goto_6cf

    .line 4055
    .restart local v39    # "prefix":Ljava/lang/String;
    :cond_72a
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    if-eqz v6, :cond_6e8

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v6, :cond_6e8

    .line 4056
    const/16 v6, 0x65

    const-string v9, "default namespace declared after function/variable/option"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_6e8

    .line 4062
    :cond_740
    const-string v33, "expected \'namespace\' keyword"

    .line 4063
    .local v33, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x22

    if-eq v6, v9, :cond_75c

    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x192

    if-eq v6, v9, :cond_75c

    .line 4064
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->declError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 4066
    :cond_75c
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    goto :goto_6f8

    .line 4075
    .end local v33    # "msg":Ljava/lang/String;
    :cond_764
    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v6, v9, v10, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v48

    .line 4076
    .restart local v48    # "uri":Ljava/lang/String;
    if-eqz v28, :cond_7a4

    .line 4078
    const/4 v6, 0x1

    new-array v6, v6, [Lgnu/mapping/Namespace;

    move-object/from16 v0, p0

    iput-object v6, v0, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 4079
    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    const/4 v9, 0x0

    invoke-static/range {v48 .. v48}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v10

    aput-object v10, v6, v9

    .line 4085
    :goto_78a
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQParser;->pushNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 4086
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2, v6}, Lgnu/xquery/lang/XQParser;->checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4087
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4088
    sget-object v27, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto/16 :goto_e

    .line 4083
    :cond_7a4
    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->defaultElementNamespace:Ljava/lang/String;

    goto :goto_78a

    .line 4091
    .end local v28    # "forFunctions":Z
    .end local v39    # "prefix":Ljava/lang/String;
    .end local v48    # "uri":Ljava/lang/String;
    :sswitch_7ab
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4092
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x192

    if-ne v6, v9, :cond_7c0

    .line 4094
    const-string v6, "obsolate \'=\' in boundary-space declaration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 4095
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4097
    :cond_7c0
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->boundarySpaceDeclarationSeen:Z

    if-eqz v6, :cond_7d5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v6, :cond_7d5

    .line 4098
    const-string v6, "duplicate \'declare boundary-space\' seen"

    const-string v9, "XQST0068"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4099
    :cond_7d5
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lgnu/xquery/lang/XQParser;->boundarySpaceDeclarationSeen:Z

    .line 4100
    const-string v6, "preserve"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7f0

    .line 4101
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lgnu/xquery/lang/XQParser;->boundarySpacePreserve:Z

    .line 4111
    :goto_7e9
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4112
    sget-object v27, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto/16 :goto_e

    .line 4102
    :cond_7f0
    const-string v6, "strip"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_800

    .line 4103
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lgnu/xquery/lang/XQParser;->boundarySpacePreserve:Z

    goto :goto_7e9

    .line 4104
    :cond_800
    const-string v6, "skip"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_817

    .line 4106
    const-string v6, "update: declare boundary-space skip -> strip"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 4107
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lgnu/xquery/lang/XQParser;->boundarySpacePreserve:Z

    goto :goto_7e9

    .line 4110
    :cond_817
    const-string v6, "boundary-space declaration must be preserve or strip"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 4115
    :sswitch_821
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4116
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->constructionModeDeclarationSeen:Z

    if-eqz v6, :cond_839

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v6, :cond_839

    .line 4117
    const-string v6, "duplicate \'declare construction\' seen"

    const-string v9, "XQST0067"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4118
    :cond_839
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lgnu/xquery/lang/XQParser;->constructionModeDeclarationSeen:Z

    .line 4119
    const-string v6, "strip"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_854

    .line 4120
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lgnu/xquery/lang/XQParser;->constructionModeStrip:Z

    .line 4125
    :goto_84d
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4126
    sget-object v27, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto/16 :goto_e

    .line 4121
    :cond_854
    const-string v6, "preserve"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_864

    .line 4122
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lgnu/xquery/lang/XQParser;->constructionModeStrip:Z

    goto :goto_84d

    .line 4124
    :cond_864
    const-string v6, "construction declaration must be strip or preserve"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 4129
    :sswitch_86e
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4130
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesDeclarationSeen:Z

    if-eqz v6, :cond_886

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v6, :cond_886

    .line 4131
    const-string v6, "duplicate \'declare copy-namespaces\' seen"

    const-string v9, "XQST0055"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4132
    :cond_886
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesDeclarationSeen:Z

    .line 4133
    const-string v6, "preserve"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8b4

    .line 4134
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    or-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    .line 4139
    :goto_89f
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4140
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x2c

    if-eq v6, v9, :cond_8d3

    .line 4141
    const-string v6, "missing \',\' in copy-namespaces declaration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 4135
    :cond_8b4
    const-string v6, "no-preserve"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8c9

    .line 4136
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    and-int/lit8 v6, v6, -0x2

    move-object/from16 v0, p0

    iput v6, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    goto :goto_89f

    .line 4138
    :cond_8c9
    const-string v6, "expected \'preserve\' or \'no-preserve\' after \'declare copy-namespaces\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 4142
    :cond_8d3
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4143
    const-string v6, "inherit"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8f1

    .line 4144
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    or-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iput v6, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    .line 4149
    :goto_8ea
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4150
    sget-object v27, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto/16 :goto_e

    .line 4145
    :cond_8f1
    const-string v6, "no-inherit"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_906

    .line 4146
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    and-int/lit8 v6, v6, -0x3

    move-object/from16 v0, p0

    iput v6, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    goto :goto_8ea

    .line 4148
    :cond_906
    const-string v6, "expected \'inherit\' or \'no-inherit\' in copy-namespaces declaration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 4153
    :sswitch_910
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4154
    const-string v6, "empty"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v41

    .line 4155
    .local v41, "sawEmpty":Z
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->emptyOrderDeclarationSeen:Z

    if-eqz v6, :cond_930

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v6, :cond_930

    .line 4156
    const-string v6, "duplicate \'declare default empty order\' seen"

    const-string v9, "XQST0069"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4157
    :cond_930
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lgnu/xquery/lang/XQParser;->emptyOrderDeclarationSeen:Z

    .line 4158
    if-eqz v41, :cond_951

    .line 4159
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4162
    :goto_93a
    const-string v6, "greatest"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_959

    .line 4163
    const/16 v6, 0x47

    move-object/from16 v0, p0

    iput-char v6, v0, Lgnu/xquery/lang/XQParser;->defaultEmptyOrder:C

    .line 4168
    :goto_94a
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4169
    sget-object v27, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto/16 :goto_e

    .line 4161
    :cond_951
    const-string v6, "expected \'empty greatest\' or \'empty least\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_93a

    .line 4164
    :cond_959
    const-string v6, "least"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_96a

    .line 4165
    const/16 v6, 0x4c

    move-object/from16 v0, p0

    iput-char v6, v0, Lgnu/xquery/lang/XQParser;->defaultEmptyOrder:C

    goto :goto_94a

    .line 4167
    :cond_96a
    const-string v6, "expected \'empty greatest\' or \'empty least\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 4172
    .end local v41    # "sawEmpty":Z
    :sswitch_974
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4173
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x51

    if-eq v6, v9, :cond_992

    .line 4174
    const-string v6, "expected QName after \'declare option\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4187
    :goto_986
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4188
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    .line 4189
    sget-object v27, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto/16 :goto_e

    .line 4177
    :cond_992
    new-instance v45, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move-object/from16 v0, v45

    invoke-direct {v0, v6, v9, v10}, Ljava/lang/String;-><init>([CII)V

    .line 4178
    .local v45, "str":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lgnu/xquery/lang/XQParser;->curLine:I

    move-object/from16 v0, p0

    iget v11, v0, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {v6, v9, v10, v11}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 4179
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v6}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v46

    .line 4180
    .local v46, "sym":Lgnu/mapping/Symbol;
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4181
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x22

    if-eq v6, v9, :cond_9ee

    .line 4182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "expected string literal after \'declare option "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v9, 0x27

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_986

    .line 4185
    :cond_9ee
    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v6, v9, v10, v11}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v6}, Lgnu/xquery/lang/XQParser;->handleOption(Lgnu/mapping/Symbol;Ljava/lang/String;)V

    goto :goto_986

    .line 4192
    .end local v45    # "str":Ljava/lang/String;
    .end local v46    # "sym":Lgnu/mapping/Symbol;
    :sswitch_a04
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->orderingModeSeen:Z

    if-eqz v6, :cond_a19

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v6, :cond_a19

    .line 4193
    const-string v6, "duplicate \'declare ordering\' seen"

    const-string v9, "XQST0065"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4194
    :cond_a19
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lgnu/xquery/lang/XQParser;->orderingModeSeen:Z

    .line 4195
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4196
    const-string v6, "ordered"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a37

    .line 4197
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lgnu/xquery/lang/XQParser;->orderingModeUnordered:Z

    .line 4202
    :goto_a30
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4203
    sget-object v27, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto/16 :goto_e

    .line 4198
    :cond_a37
    const-string v6, "unordered"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a47

    .line 4199
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lgnu/xquery/lang/XQParser;->orderingModeUnordered:Z

    goto :goto_a30

    .line 4201
    :cond_a47
    const-string v6, "ordering declaration must be ordered or unordered"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 4206
    :sswitch_a51
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->parseCount:I

    const/4 v9, 0x1

    if-eq v6, v9, :cond_ac6

    .line 4207
    const/16 v6, 0x65

    const-string v9, "\'xquery version\' does not start module"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 4210
    :cond_a61
    :goto_a61
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4211
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x22

    if-ne v6, v9, :cond_ad6

    .line 4213
    new-instance v50, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move-object/from16 v0, v50

    invoke-direct {v0, v6, v9, v10}, Ljava/lang/String;-><init>([CII)V

    .line 4214
    .local v50, "version":Ljava/lang/String;
    const-string v6, "1.0"

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_aa4

    .line 4215
    const/16 v6, 0x65

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unrecognized xquery version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v50

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "XQST0031"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v10}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4216
    :cond_aa4
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4220
    const-string v6, "encoding"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b54

    .line 4222
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4223
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x22

    if-eq v6, v9, :cond_ae0

    .line 4224
    const-string v6, "invalid encoding specification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 4208
    .end local v50    # "version":Ljava/lang/String;
    :cond_ac6
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->commentCount:I

    if-lez v6, :cond_a61

    .line 4209
    const/16 v6, 0x77

    const-string v9, "comments should not precede \'xquery version\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_a61

    .line 4219
    :cond_ad6
    const-string v6, "missing version string after \'xquery version\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v27

    goto/16 :goto_e

    .line 4227
    .restart local v50    # "version":Ljava/lang/String;
    :cond_ae0
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move-object/from16 v0, v24

    invoke-direct {v0, v6, v9, v10}, Ljava/lang/String;-><init>([CII)V

    .line 4228
    .local v24, "encoding":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v29, v0

    .line 4229
    .restart local v29    # "i":I
    if-nez v29, :cond_b41

    const/16 v17, 0x1

    .line 4230
    .local v17, "bad":Z
    :cond_afa
    :goto_afa
    add-int/lit8 v29, v29, -0x1

    if-ltz v29, :cond_b44

    if-nez v17, :cond_b44

    .line 4232
    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v18, v6, v29

    .line 4233
    const/16 v6, 0x41

    move/from16 v0, v18

    if-lt v0, v6, :cond_b12

    const/16 v6, 0x5a

    move/from16 v0, v18

    if-le v0, v6, :cond_afa

    :cond_b12
    const/16 v6, 0x61

    move/from16 v0, v18

    if-lt v0, v6, :cond_b1e

    const/16 v6, 0x7a

    move/from16 v0, v18

    if-le v0, v6, :cond_afa

    .line 4235
    :cond_b1e
    if-eqz v29, :cond_b3e

    const/16 v6, 0x30

    move/from16 v0, v18

    if-lt v0, v6, :cond_b2c

    const/16 v6, 0x39

    move/from16 v0, v18

    if-le v0, v6, :cond_afa

    :cond_b2c
    const/16 v6, 0x2e

    move/from16 v0, v18

    if-eq v0, v6, :cond_afa

    const/16 v6, 0x5f

    move/from16 v0, v18

    if-eq v0, v6, :cond_afa

    const/16 v6, 0x2d

    move/from16 v0, v18

    if-eq v0, v6, :cond_afa

    .line 4238
    :cond_b3e
    const/16 v17, 0x1

    goto :goto_afa

    .line 4229
    .end local v17    # "bad":Z
    :cond_b41
    const/16 v17, 0x0

    goto :goto_afa

    .line 4240
    .restart local v17    # "bad":Z
    :cond_b44
    if-eqz v17, :cond_b51

    .line 4241
    const/16 v6, 0x65

    const-string v9, "invalid encoding name syntax"

    const-string v10, "XQST0087"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v10}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4243
    :cond_b51
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4246
    .end local v17    # "bad":Z
    .end local v24    # "encoding":Ljava/lang/String;
    .end local v29    # "i":I
    :cond_b54
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x3b

    if-eq v6, v9, :cond_b63

    .line 4247
    const-string v6, "missing \';\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4248
    :cond_b63
    sget-object v27, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto/16 :goto_e

    .line 4251
    .end local v50    # "version":Ljava/lang/String;
    :sswitch_b67
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->baseURIDeclarationSeen:Z

    if-eqz v6, :cond_b7c

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v6, :cond_b7c

    .line 4252
    const-string v6, "duplicate \'declare base-uri\' seen"

    const-string v9, "XQST0032"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4253
    :cond_b7c
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lgnu/xquery/lang/XQParser;->baseURIDeclarationSeen:Z

    .line 4254
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseURILiteral()Ljava/lang/Object;

    move-result-object v49

    .line 4255
    .restart local v49    # "val":Ljava/lang/Object;
    move-object/from16 v0, v49

    instance-of v6, v0, Lgnu/expr/Expression;

    if-eqz v6, :cond_b91

    .line 4256
    check-cast v49, Lgnu/expr/Expression;

    .end local v49    # "val":Ljava/lang/Object;
    move-object/from16 v27, v49

    goto/16 :goto_e

    .line 4257
    .restart local v49    # "val":Ljava/lang/Object;
    :cond_b91
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4258
    check-cast v49, Ljava/lang/String;

    .end local v49    # "val":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->setStaticBaseUri(Ljava/lang/String;)V

    .line 4259
    sget-object v27, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto/16 :goto_e

    .line 3993
    .restart local v7    # "forms":Ljava/util/Vector;
    .restart local v8    # "module":Lgnu/expr/ModuleExp;
    .restart local v32    # "manager":Lgnu/expr/ModuleManager;
    .restart local v34    # "n":I
    .restart local v38    # "packageName":Ljava/lang/String;
    .restart local v39    # "prefix":Ljava/lang/String;
    .restart local v48    # "uri":Ljava/lang/String;
    :catch_ba1
    move-exception v6

    goto/16 :goto_5d2

    .line 3766
    :sswitch_data_ba4
    .sparse-switch
        0x42 -> :sswitch_b67
        0x45 -> :sswitch_6c1
        0x47 -> :sswitch_653
        0x48 -> :sswitch_910
        0x49 -> :sswitch_43d
        0x4b -> :sswitch_821
        0x4c -> :sswitch_86e
        0x4d -> :sswitch_2b9
        0x4e -> :sswitch_2b9
        0x4f -> :sswitch_6c1
        0x50 -> :sswitch_11c
        0x53 -> :sswitch_7ab
        0x54 -> :sswitch_434
        0x55 -> :sswitch_a04
        0x56 -> :sswitch_160
        0x57 -> :sswitch_df
        0x59 -> :sswitch_a51
        0x6f -> :sswitch_974
    .end sparse-switch
.end method

.method parseBinaryExpr(I)Lgnu/expr/Expression;
    .registers 14
    .param p1, "prio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1673
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseUnaryExpr()Lgnu/expr/Expression;

    move-result-object v1

    .line 1676
    .local v1, "exp":Lgnu/expr/Expression;
    :goto_4
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperator()I

    move-result v7

    .line 1677
    .local v7, "token":I
    const/16 v9, 0xa

    if-eq v7, v9, :cond_18

    const/16 v9, 0x194

    if-ne v7, v9, :cond_19

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v9

    const/16 v10, 0x2f

    if-ne v9, v10, :cond_19

    .line 1683
    :cond_18
    return-object v1

    .line 1681
    :cond_19
    invoke-static {v7}, Lgnu/xquery/lang/XQParser;->priority(I)I

    move-result v6

    .line 1682
    .local v6, "tokPriority":I
    if-lt v6, p1, :cond_18

    .line 1684
    const/16 v9, 0x25

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v5

    .line 1685
    .local v5, "saveReadState":C
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1686
    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 1687
    const/16 v9, 0x1a6

    if-lt v7, v9, :cond_8b

    const/16 v9, 0x1a9

    if-gt v7, v9, :cond_8b

    .line 1689
    const/16 v9, 0x1a9

    if-eq v7, v9, :cond_3b

    const/16 v9, 0x1a8

    if-ne v7, v9, :cond_3f

    .line 1690
    :cond_3b
    const/16 v9, 0x43

    iput v9, p0, Lgnu/xquery/lang/XQParser;->parseContext:I

    .line 1691
    :cond_3f
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v8

    .line 1692
    .local v8, "type":Lgnu/expr/Expression;
    const/4 v9, 0x0

    iput v9, p0, Lgnu/xquery/lang/XQParser;->parseContext:I

    .line 1693
    const/4 v9, 0x2

    new-array v0, v9, [Lgnu/expr/Expression;

    .line 1695
    .local v0, "args":[Lgnu/expr/Expression;
    packed-switch v7, :pswitch_data_e4

    .line 1715
    const/4 v9, 0x0

    aput-object v8, v0, v9

    .line 1716
    const/4 v9, 0x1

    aput-object v1, v0, v9

    .line 1717
    new-instance v4, Lgnu/expr/ReferenceExp;

    sget-object v9, Lgnu/xquery/lang/XQResolveNames;->castAsDecl:Lgnu/expr/Declaration;

    invoke-direct {v4, v9}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 1720
    .local v4, "func":Lgnu/expr/Expression;
    :goto_59
    new-instance v1, Lgnu/expr/ApplyExp;

    .end local v1    # "exp":Lgnu/expr/Expression;
    invoke-direct {v1, v4, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 1721
    .restart local v1    # "exp":Lgnu/expr/Expression;
    goto :goto_4

    .line 1698
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_5f
    const/4 v9, 0x0

    aput-object v1, v0, v9

    .line 1699
    const/4 v9, 0x1

    aput-object v8, v0, v9

    .line 1700
    const-string v9, "gnu.xquery.lang.XQParser"

    const-string v10, "instanceOf"

    invoke-static {v9, v10}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    .line 1702
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto :goto_59

    .line 1704
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_6e
    const/4 v9, 0x0

    aput-object v1, v0, v9

    .line 1705
    const/4 v9, 0x1

    aput-object v8, v0, v9

    .line 1706
    new-instance v4, Lgnu/expr/ReferenceExp;

    sget-object v9, Lgnu/xquery/lang/XQResolveNames;->castableAsDecl:Lgnu/expr/Declaration;

    invoke-direct {v4, v9}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 1707
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto :goto_59

    .line 1709
    .end local v4    # "func":Lgnu/expr/Expression;
    :pswitch_7c
    const/4 v9, 0x0

    aput-object v8, v0, v9

    .line 1710
    const/4 v9, 0x1

    aput-object v1, v0, v9

    .line 1711
    const-string v9, "gnu.xquery.lang.XQParser"

    const-string v10, "treatAs"

    invoke-static {v9, v10}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    .line 1713
    .restart local v4    # "func":Lgnu/expr/Expression;
    goto :goto_59

    .line 1722
    .end local v0    # "args":[Lgnu/expr/Expression;
    .end local v4    # "func":Lgnu/expr/Expression;
    .end local v8    # "type":Lgnu/expr/Expression;
    :cond_8b
    const/16 v9, 0x1a6

    if-ne v7, v9, :cond_ab

    .line 1724
    const/4 v9, 0x2

    new-array v0, v9, [Lgnu/expr/Expression;

    const/4 v9, 0x0

    aput-object v1, v0, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v10

    aput-object v10, v0, v9

    .line 1725
    .restart local v0    # "args":[Lgnu/expr/Expression;
    new-instance v1, Lgnu/expr/ApplyExp;

    .end local v1    # "exp":Lgnu/expr/Expression;
    const-string v9, "gnu.xquery.lang.XQParser"

    const-string v10, "instanceOf"

    invoke-static {v9, v10}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    invoke-direct {v1, v9, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 1728
    .restart local v1    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_4

    .line 1731
    .end local v0    # "args":[Lgnu/expr/Expression;
    :cond_ab
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->parseBinaryExpr(I)Lgnu/expr/Expression;

    move-result-object v3

    .line 1732
    .local v3, "exp2":Lgnu/expr/Expression;
    const/16 v9, 0x191

    if-ne v7, v9, :cond_c7

    .line 1733
    new-instance v2, Lgnu/expr/IfExp;

    invoke-static {v1}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v9

    invoke-static {v3}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v10

    sget-object v11, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    invoke-direct {v2, v9, v10, v11}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    .end local v1    # "exp":Lgnu/expr/Expression;
    .local v2, "exp":Lgnu/expr/Expression;
    move-object v1, v2

    .end local v2    # "exp":Lgnu/expr/Expression;
    .restart local v1    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_4

    .line 1734
    :cond_c7
    const/16 v9, 0x190

    if-ne v7, v9, :cond_dd

    .line 1735
    new-instance v2, Lgnu/expr/IfExp;

    invoke-static {v1}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v9

    sget-object v10, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    invoke-static {v3}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v11

    invoke-direct {v2, v9, v10, v11}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    .end local v1    # "exp":Lgnu/expr/Expression;
    .restart local v2    # "exp":Lgnu/expr/Expression;
    move-object v1, v2

    .end local v2    # "exp":Lgnu/expr/Expression;
    .restart local v1    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_4

    .line 1737
    :cond_dd
    invoke-virtual {p0, v7, v1, v3}, Lgnu/xquery/lang/XQParser;->makeBinary(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    goto/16 :goto_4

    .line 1695
    nop

    :pswitch_data_e4
    .packed-switch 0x1a6
        :pswitch_5f
        :pswitch_7c
        :pswitch_6e
    .end packed-switch
.end method

.method parseContent(CLjava/util/Vector;)V
    .registers 23
    .param p1, "delimiter"    # C
    .param p2, "result"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2273
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2274
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v14

    .line 2275
    .local v14, "startSize":I
    add-int/lit8 v11, v14, -0x1

    .line 2276
    .local v11, "prevEnclosed":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/xquery/lang/XQParser;->boundarySpacePreserve:Z

    move/from16 v17, v0

    if-nez v17, :cond_8d

    const/16 v17, 0x3c

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_8d

    const/4 v12, 0x1

    .line 2277
    .local v12, "skipBoundarySpace":Z
    :goto_1f
    move v13, v12

    .line 2280
    .local v13, "skippable":Z
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v9

    .line 2281
    .local v9, "next":I
    move/from16 v0, p1

    if-ne v9, v0, :cond_f8

    .line 2283
    const/16 v17, 0x3c

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_ed

    .line 2285
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v9

    .line 2286
    const/16 v16, 0x0

    .line 2287
    .local v16, "text":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v17, v0

    if-lez v17, :cond_73

    .line 2289
    new-instance v15, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 2290
    .local v15, "str":Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v4, v0, [Lgnu/expr/Expression;

    const/16 v17, 0x0

    new-instance v18, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v18, v4, v17

    .line 2291
    .local v4, "args":[Lgnu/expr/Expression;
    new-instance v16, Lgnu/expr/ApplyExp;

    .end local v16    # "text":Lgnu/expr/Expression;
    sget-object v17, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 2293
    .end local v4    # "args":[Lgnu/expr/Expression;
    .end local v15    # "str":Ljava/lang/String;
    .restart local v16    # "text":Lgnu/expr/Expression;
    :cond_73
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2294
    const/16 v17, 0x2f

    move/from16 v0, v17

    if-ne v9, v0, :cond_8f

    .line 2296
    if-eqz v16, :cond_8c

    if-nez v13, :cond_8c

    .line 2297
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2400
    .end local v16    # "text":Lgnu/expr/Expression;
    :cond_8c
    return-void

    .line 2276
    .end local v9    # "next":I
    .end local v12    # "skipBoundarySpace":Z
    .end local v13    # "skippable":Z
    :cond_8d
    const/4 v12, 0x0

    goto :goto_1f

    .line 2300
    .restart local v9    # "next":I
    .restart local v12    # "skipBoundarySpace":Z
    .restart local v13    # "skippable":Z
    .restart local v16    # "text":Lgnu/expr/Expression;
    :cond_8f
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lgnu/xquery/lang/XQParser;->parseXMLConstructor(IZ)Lgnu/expr/Expression;

    move-result-object v5

    .line 2301
    .local v5, "content":Lgnu/expr/Expression;
    const/4 v8, 0x0

    .line 2302
    .local v8, "isCDATA":Z
    const/4 v6, 0x0

    .line 2303
    .local v6, "emptyCDATA":Z
    instance-of v0, v5, Lgnu/expr/ApplyExp;

    move/from16 v17, v0

    if-eqz v17, :cond_c8

    move-object v3, v5

    .line 2305
    check-cast v3, Lgnu/expr/ApplyExp;

    .line 2306
    .local v3, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v3}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v17

    sget-object v18, Lgnu/xquery/lang/XQParser;->makeCDATA:Lgnu/expr/Expression;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_c8

    .line 2308
    const/4 v8, 0x1

    .line 2309
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2310
    .restart local v15    # "str":Ljava/lang/String;
    if-eqz v15, :cond_e9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_e9

    const/4 v6, 0x1

    .line 2313
    .end local v3    # "aexp":Lgnu/expr/ApplyExp;
    .end local v15    # "str":Ljava/lang/String;
    :cond_c8
    :goto_c8
    if-eqz v16, :cond_d5

    if-eqz v13, :cond_ce

    if-eqz v8, :cond_d5

    .line 2314
    :cond_ce
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2315
    :cond_d5
    if-eqz v8, :cond_eb

    .line 2316
    const/4 v13, 0x0

    .line 2319
    :goto_d8
    if-nez v6, :cond_df

    .line 2320
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2321
    :cond_df
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    goto/16 :goto_20

    .line 2310
    .restart local v3    # "aexp":Lgnu/expr/ApplyExp;
    .restart local v15    # "str":Ljava/lang/String;
    :cond_e9
    const/4 v6, 0x0

    goto :goto_c8

    .line 2318
    .end local v3    # "aexp":Lgnu/expr/ApplyExp;
    .end local v15    # "str":Ljava/lang/String;
    :cond_eb
    move v13, v12

    goto :goto_d8

    .line 2324
    .end local v5    # "content":Lgnu/expr/Expression;
    .end local v6    # "emptyCDATA":Z
    .end local v8    # "isCDATA":Z
    .end local v16    # "text":Lgnu/expr/Expression;
    :cond_ed
    invoke-virtual/range {p0 .. p1}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v17

    if-eqz v17, :cond_f8

    .line 2326
    invoke-virtual/range {p0 .. p1}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    goto/16 :goto_20

    .line 2330
    :cond_f8
    move/from16 v0, p1

    if-eq v9, v0, :cond_104

    if-ltz v9, :cond_104

    const/16 v17, 0x7b

    move/from16 v0, v17

    if-ne v9, v0, :cond_1b9

    .line 2332
    :cond_104
    const/16 v17, 0x7b

    move/from16 v0, v17

    if-ne v9, v0, :cond_120

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v10

    .line 2333
    .local v10, "postBrace":I
    :goto_10e
    const/16 v17, 0x7b

    move/from16 v0, v17

    if-ne v10, v0, :cond_122

    .line 2335
    const/16 v17, 0x7b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 2336
    const/4 v13, 0x0

    .line 2337
    goto/16 :goto_20

    .line 2332
    .end local v10    # "postBrace":I
    :cond_120
    const/4 v10, -0x1

    goto :goto_10e

    .line 2342
    .restart local v10    # "postBrace":I
    :cond_122
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v17, v0

    if-lez v17, :cond_17d

    if-nez v13, :cond_17d

    .line 2343
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v19, v0

    invoke-direct/range {v16 .. v19}, Ljava/lang/String;-><init>([CII)V

    .line 2350
    .local v16, "text":Ljava/lang/String;
    :goto_13f
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v4, v0, [Lgnu/expr/Expression;

    const/16 v17, 0x0

    new-instance v18, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v18, v4, v17

    .line 2351
    .restart local v4    # "args":[Lgnu/expr/Expression;
    new-instance v17, Lgnu/expr/ApplyExp;

    sget-object v18, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2353
    .end local v4    # "args":[Lgnu/expr/Expression;
    .end local v16    # "text":Ljava/lang/String;
    :cond_164
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2354
    move/from16 v0, p1

    if-eq v9, v0, :cond_8c

    .line 2356
    if-gez v9, :cond_18e

    .line 2357
    const-string v17, "unexpected end-of-file"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 2344
    :cond_17d
    const/16 v17, 0x7b

    move/from16 v0, v17

    if-ne v9, v0, :cond_164

    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-ne v11, v0, :cond_164

    .line 2347
    const-string v16, ""

    .restart local v16    # "text":Ljava/lang/String;
    goto :goto_13f

    .line 2360
    .end local v16    # "text":Ljava/lang/String;
    :cond_18e
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 2361
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->enclosedExpressionsSeen:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xquery/lang/XQParser;->enclosedExpressionsSeen:I

    .line 2362
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v7

    .line 2363
    .local v7, "exp":Lgnu/expr/Expression;
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2364
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2365
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v11

    .line 2366
    move v13, v12

    goto/16 :goto_20

    .line 2369
    .end local v7    # "exp":Lgnu/expr/Expression;
    .end local v10    # "postBrace":I
    :cond_1b9
    const/16 v17, 0x7d

    move/from16 v0, v17

    if-ne v9, v0, :cond_1e5

    .line 2371
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v9

    .line 2372
    const/16 v17, 0x7d

    move/from16 v0, v17

    if-ne v9, v0, :cond_1d5

    .line 2374
    const/16 v17, 0x7d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 2375
    const/4 v13, 0x0

    goto/16 :goto_20

    .line 2379
    :cond_1d5
    const-string v17, "unexpected \'}\' in element content"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 2380
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto/16 :goto_20

    .line 2383
    :cond_1e5
    const/16 v17, 0x26

    move/from16 v0, v17

    if-ne v9, v0, :cond_1f1

    .line 2385
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEntityOrCharRef()V

    .line 2386
    const/4 v13, 0x0

    goto/16 :goto_20

    .line 2390
    :cond_1f1
    const/16 v17, 0x3c

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_20d

    const/16 v17, 0x9

    move/from16 v0, v17

    if-eq v9, v0, :cond_20b

    const/16 v17, 0xa

    move/from16 v0, v17

    if-eq v9, v0, :cond_20b

    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v9, v0, :cond_20d

    .line 2392
    :cond_20b
    const/16 v9, 0x20

    .line 2393
    :cond_20d
    const/16 v17, 0x3c

    move/from16 v0, v17

    if-ne v9, v0, :cond_220

    .line 2394
    const/16 v17, 0x65

    const-string v18, "\'<\' must be quoted in a direct attribute value"

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 2395
    :cond_220
    if-eqz v13, :cond_229

    .line 2396
    int-to-char v0, v9

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    .line 2397
    :cond_229
    int-to-char v0, v9

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    goto/16 :goto_20
.end method

.method public parseDataType()Lgnu/expr/Expression;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x19f

    const/16 v9, 0x19d

    const/16 v8, 0x3f

    const/4 v7, 0x1

    .line 1472
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseItemType()Lgnu/expr/Expression;

    move-result-object v1

    .line 1474
    .local v1, "etype":Lgnu/expr/Expression;
    if-nez v1, :cond_4a

    .line 1476
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0xee

    if-eq v5, v6, :cond_1a

    .line 1477
    const-string v5, "bad syntax - expected DataType"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    .line 1525
    :goto_19
    return-object v4

    .line 1478
    :cond_1a
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1479
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v5, v8, :cond_29

    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v5, v9, :cond_29

    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v5, v10, :cond_33

    .line 1481
    :cond_29
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1482
    const-string v5, "occurrence-indicator meaningless after empty-sequence()"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_19

    .line 1484
    :cond_33
    sget-object v5, Lgnu/kawa/reflect/OccurrenceType;->emptySequenceType:Lgnu/bytecode/Type;

    invoke-static {v5}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v1

    .line 1485
    const/4 v3, 0x0

    .line 1486
    .local v3, "min":I
    const/4 v2, 0x0

    .line 1508
    .local v2, "max":I
    :goto_3b
    iget v5, p0, Lgnu/xquery/lang/XQParser;->parseContext:I

    const/16 v6, 0x43

    if-ne v5, v6, :cond_62

    .line 1510
    if-eq v2, v7, :cond_62

    .line 1511
    const-string v5, "type to \'cast as\' or \'castable as\' must be a \'SingleType\'"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_19

    .line 1488
    .end local v2    # "max":I
    .end local v3    # "min":I
    :cond_4a
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v5, v8, :cond_51

    .line 1490
    const/4 v3, 0x0

    .line 1491
    .restart local v3    # "min":I
    const/4 v2, 0x1

    .restart local v2    # "max":I
    goto :goto_3b

    .line 1493
    .end local v2    # "max":I
    .end local v3    # "min":I
    :cond_51
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v5, v9, :cond_58

    .line 1495
    const/4 v3, 0x1

    .line 1496
    .restart local v3    # "min":I
    const/4 v2, -0x1

    .restart local v2    # "max":I
    goto :goto_3b

    .line 1498
    .end local v2    # "max":I
    .end local v3    # "min":I
    :cond_58
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v5, v10, :cond_5f

    .line 1500
    const/4 v3, 0x0

    .line 1501
    .restart local v3    # "min":I
    const/4 v2, -0x1

    .restart local v2    # "max":I
    goto :goto_3b

    .line 1505
    .end local v2    # "max":I
    .end local v3    # "min":I
    :cond_5f
    const/4 v3, 0x1

    .line 1506
    .restart local v3    # "min":I
    const/4 v2, 0x1

    .restart local v2    # "max":I
    goto :goto_3b

    .line 1513
    :cond_62
    if-eq v3, v2, :cond_8e

    .line 1515
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1516
    const/4 v5, 0x3

    new-array v0, v5, [Lgnu/expr/Expression;

    const/4 v5, 0x0

    aput-object v1, v0, v5

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v5

    invoke-static {v5}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v5

    aput-object v5, v0, v7

    const/4 v5, 0x2

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    invoke-static {v6}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v6

    aput-object v6, v0, v5

    .line 1519
    .local v0, "args":[Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/ApplyExp;

    sget-object v5, Lgnu/xquery/lang/XQParser;->proc_OccurrenceType_getInstance:Lgnu/expr/PrimProcedure;

    invoke-direct {v4, v5, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 1522
    .local v4, "otype":Lgnu/expr/ApplyExp;
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lgnu/expr/ApplyExp;->setFlag(I)V

    goto :goto_19

    .end local v0    # "args":[Lgnu/expr/Expression;
    .end local v4    # "otype":Lgnu/expr/ApplyExp;
    :cond_8e
    move-object v4, v1

    .line 1525
    goto :goto_19
.end method

.method parseElementConstructor()Lgnu/expr/Expression;
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2570
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 2571
    .local v24, "startTag":Ljava/lang/String;
    new-instance v26, Ljava/util/Vector;

    invoke-direct/range {v26 .. v26}, Ljava/util/Vector;-><init>()V

    .line 2573
    .local v26, "vec":Ljava/util/Vector;
    new-instance v29, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/16 v30, 0x1

    invoke-static/range {v29 .. v30}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2574
    const-string v29, "comment not allowed in element start tag"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2575
    const/16 v17, 0x0

    .line 2579
    .local v17, "nsBindings":Lgnu/xml/NamespaceBinding;
    :goto_40
    const/16 v21, 0x0

    .line 2580
    .local v21, "sawSpace":Z
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v8

    .line 2581
    .local v8, "ch":I
    :goto_46
    if-ltz v8, :cond_58

    int-to-char v0, v8

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v29

    if-eqz v29, :cond_58

    .line 2583
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v8

    .line 2584
    const/16 v21, 0x1

    goto :goto_46

    .line 2586
    :cond_58
    if-ltz v8, :cond_66

    const/16 v29, 0x3e

    move/from16 v0, v29

    if-eq v8, v0, :cond_66

    const/16 v29, 0x2f

    move/from16 v0, v29

    if-ne v8, v0, :cond_93

    .line 2679
    :cond_66
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2680
    const/4 v10, 0x0

    .line 2681
    .local v10, "empty":Z
    const/16 v29, 0x2f

    move/from16 v0, v29

    if-ne v8, v0, :cond_80

    .line 2683
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v8

    .line 2684
    const/16 v29, 0x3e

    move/from16 v0, v29

    if-ne v8, v0, :cond_292

    .line 2685
    const/4 v10, 0x1

    .line 2689
    :cond_80
    :goto_80
    if-nez v10, :cond_342

    .line 2691
    const/16 v29, 0x3e

    move/from16 v0, v29

    if-eq v8, v0, :cond_299

    .line 2692
    const-string v29, "missing \'>\' after start element"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    .line 2719
    .end local v10    # "empty":Z
    :goto_92
    return-object v20

    .line 2588
    :cond_93
    if-nez v21, :cond_9e

    .line 2589
    const-string v29, "missing space before attribute"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 2590
    :cond_9e
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 2591
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2592
    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->size()I

    move-result v27

    .line 2593
    .local v27, "vecSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x41

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_c6

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x51

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_66

    .line 2595
    :cond_c6
    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v6, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 2596
    .local v6, "attrName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v29

    add-int/lit8 v23, v29, 0x1

    .line 2597
    .local v23, "startLine":I
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v30, v0

    sub-int v22, v29, v30

    .line 2598
    .local v22, "startColumn":I
    const/4 v9, 0x0

    .line 2599
    .local v9, "definingNamespace":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x41

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_143

    .line 2601
    const-string v29, "xmlns"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10e

    .line 2602
    const-string v9, ""

    .line 2609
    :cond_10e
    :goto_10e
    if-eqz v9, :cond_15a

    const/4 v13, 0x0

    .line 2612
    .local v13, "makeAttr":Lgnu/expr/Expression;
    :goto_111
    new-instance v29, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v29

    invoke-direct {v0, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2613
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v8

    .line 2614
    const/16 v29, 0x3d

    move/from16 v0, v29

    if-eq v8, v0, :cond_15d

    .line 2616
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2617
    const-string v29, "missing \'=\' after attribute"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_92

    .line 2606
    .end local v13    # "makeAttr":Lgnu/expr/Expression;
    :cond_143
    const-string v29, "xmlns:"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_10e

    .line 2607
    const/16 v29, 0x6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    goto :goto_10e

    .line 2609
    :cond_15a
    sget-object v13, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    goto :goto_111

    .line 2619
    .restart local v13    # "makeAttr":Lgnu/expr/Expression;
    :cond_15d
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v8

    .line 2620
    move-object/from16 v0, p0

    iget v11, v0, Lgnu/xquery/lang/XQParser;->enclosedExpressionsSeen:I

    .line 2621
    .local v11, "enclosedExpressionsStart":I
    const/16 v29, 0x7b

    move/from16 v0, v29

    if-ne v8, v0, :cond_1de

    .line 2623
    const-string v29, "enclosed attribute value expression should be quoted"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 2624
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2628
    :goto_17f
    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->size()I

    move-result v29

    sub-int v15, v29, v27

    .line 2629
    .local v15, "n":I
    if-eqz v9, :cond_264

    .line 2631
    const-string v16, ""

    .line 2632
    .local v16, "ns":Ljava/lang/String;
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v15, v0, :cond_1eb

    .line 2633
    const-string v16, ""

    .line 2646
    :goto_191
    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->setSize(I)V

    .line 2647
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v29

    invoke-virtual {v0, v9, v1, v2}, Lgnu/xquery/lang/XQParser;->checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2648
    const-string v29, ""

    move-object/from16 v0, v29

    if-ne v9, v0, :cond_1a6

    .line 2649
    const/4 v9, 0x0

    .line 2650
    :cond_1a6
    move-object/from16 v19, v17

    .line 2651
    .local v19, "nsb":Lgnu/xml/NamespaceBinding;
    :goto_1a8
    if-eqz v19, :cond_1c5

    .line 2653
    invoke-virtual/range {v19 .. v19}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    if-ne v0, v9, :cond_25e

    .line 2655
    const/16 v30, 0x65

    if-nez v9, :cond_239

    const-string v29, "duplicate default namespace declaration"

    :goto_1b8
    const-string v31, "XQST0071"

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 2663
    :cond_1c5
    new-instance v18, Lgnu/xml/NamespaceBinding;

    const-string v29, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1d1

    const/16 v16, 0x0

    .end local v16    # "ns":Ljava/lang/String;
    :cond_1d1
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v9, v1, v2}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .end local v17    # "nsBindings":Lgnu/xml/NamespaceBinding;
    .local v18, "nsBindings":Lgnu/xml/NamespaceBinding;
    move-object/from16 v17, v18

    .line 2667
    .end local v18    # "nsBindings":Lgnu/xml/NamespaceBinding;
    .restart local v17    # "nsBindings":Lgnu/xml/NamespaceBinding;
    goto/16 :goto_40

    .line 2627
    .end local v15    # "n":I
    .end local v19    # "nsb":Lgnu/xml/NamespaceBinding;
    :cond_1de
    int-to-char v0, v8

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQParser;->parseContent(CLjava/util/Vector;)V

    goto :goto_17f

    .line 2634
    .restart local v15    # "n":I
    .restart local v16    # "ns":Ljava/lang/String;
    :cond_1eb
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->enclosedExpressionsSeen:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-le v0, v11, :cond_1ff

    .line 2635
    const-string v29, "enclosed expression not allowed in namespace declaration"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_191

    .line 2638
    :cond_1ff
    add-int/lit8 v29, v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v28

    .line 2640
    .local v28, "x":Ljava/lang/Object;
    move-object/from16 v0, v28

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v29, v0

    if-eqz v29, :cond_229

    move-object/from16 v7, v28

    check-cast v7, Lgnu/expr/ApplyExp;

    .local v7, "ax":Lgnu/expr/ApplyExp;
    invoke-virtual {v7}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v29

    sget-object v30, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_229

    .line 2642
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v28

    .line 2643
    .end local v7    # "ax":Lgnu/expr/ApplyExp;
    .end local v28    # "x":Ljava/lang/Object;
    :cond_229
    check-cast v28, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v28 .. v28}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_191

    .line 2655
    .restart local v19    # "nsb":Lgnu/xml/NamespaceBinding;
    :cond_239
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "duplicate namespace prefix \'"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v31, 0x27

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_1b8

    .line 2651
    :cond_25e
    invoke-virtual/range {v19 .. v19}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v19

    goto/16 :goto_1a8

    .line 2670
    .end local v16    # "ns":Ljava/lang/String;
    .end local v19    # "nsb":Lgnu/xml/NamespaceBinding;
    :cond_264
    new-array v5, v15, [Lgnu/expr/Expression;

    .line 2671
    .local v5, "args":[Lgnu/expr/Expression;
    move v12, v15

    .local v12, "i":I
    :goto_267
    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_27a

    .line 2672
    add-int v29, v27, v12

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lgnu/expr/Expression;

    aput-object v29, v5, v12

    goto :goto_267

    .line 2673
    :cond_27a
    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->setSize(I)V

    .line 2674
    new-instance v4, Lgnu/expr/ApplyExp;

    invoke-direct {v4, v13, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 2675
    .local v4, "aexp":Lgnu/expr/ApplyExp;
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2676
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_40

    .line 2687
    .end local v4    # "aexp":Lgnu/expr/ApplyExp;
    .end local v5    # "args":[Lgnu/expr/Expression;
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v9    # "definingNamespace":Ljava/lang/String;
    .end local v11    # "enclosedExpressionsStart":I
    .end local v12    # "i":I
    .end local v13    # "makeAttr":Lgnu/expr/Expression;
    .end local v15    # "n":I
    .end local v22    # "startColumn":I
    .end local v23    # "startLine":I
    .end local v27    # "vecSize":I
    .restart local v10    # "empty":Z
    :cond_292
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto/16 :goto_80

    .line 2693
    :cond_299
    const/16 v29, 0x3c

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQParser;->parseContent(CLjava/util/Vector;)V

    .line 2694
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v8

    .line 2695
    if-ltz v8, :cond_330

    .line 2697
    int-to-char v0, v8

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v29

    if-nez v29, :cond_2bf

    .line 2698
    const-string v29, "invalid tag syntax after \'</\'"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_92

    .line 2699
    :cond_2bf
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2700
    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v31, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 2701
    .local v25, "tag":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_31c

    .line 2702
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "\'<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">\' closed by \'</"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">\'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_92

    .line 2703
    :cond_31c
    const-string v29, "comment not allowed in element end tag"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2704
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v8

    .line 2705
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2707
    .end local v25    # "tag":Ljava/lang/String;
    :cond_330
    const/16 v29, 0x3e

    move/from16 v0, v29

    if-eq v8, v0, :cond_342

    .line 2708
    const-string v29, "missing \'>\' after end element"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_92

    .line 2710
    :cond_342
    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v5, v0, [Lgnu/expr/Expression;

    .line 2711
    .restart local v5    # "args":[Lgnu/expr/Expression;
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 2712
    new-instance v14, Lgnu/kawa/xml/MakeElement;

    invoke-direct {v14}, Lgnu/kawa/xml/MakeElement;-><init>()V

    .line 2713
    .local v14, "mkElement":Lgnu/kawa/xml/MakeElement;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v14, Lgnu/kawa/xml/MakeElement;->copyNamespacesMode:I

    .line 2717
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 2718
    new-instance v20, Lgnu/expr/ApplyExp;

    new-instance v29, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v29

    invoke-direct {v0, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 2719
    .local v20, "result":Lgnu/expr/Expression;
    goto/16 :goto_92
.end method

.method parseEnclosedExpr()Lgnu/expr/Expression;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2408
    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2409
    .local v1, "saveErrorIfComment":Ljava/lang/String;
    const/4 v5, 0x0

    iput-object v5, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2410
    const/16 v5, 0x7b

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v2

    .line 2411
    .local v2, "saveReadState":C
    const-string v5, "unexpected end-of-file after \'{\'"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    .line 2412
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 2413
    .local v4, "startLine":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 2414
    .local v3, "startColumn":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2415
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v0

    .line 2418
    .local v0, "exp":Lgnu/expr/Expression;
    :goto_23
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_32

    .line 2433
    :goto_29
    invoke-virtual {p0, v0, v4, v3}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2434
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2435
    iput-object v1, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2436
    return-object v0

    .line 2420
    :cond_32
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_43

    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x29

    if-eq v5, v6, :cond_43

    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_4a

    .line 2422
    :cond_43
    const-string v5, "missing \'}\'"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 2423
    goto :goto_29

    .line 2425
    :cond_4a
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_5f

    .line 2426
    const-string v5, "missing \'}\' or \',\'"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 2430
    :goto_56
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v5

    invoke-static {v0, v5}, Lgnu/xquery/lang/XQParser;->makeExprSequence(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_23

    .line 2428
    :cond_5f
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_56
.end method

.method parseEntityOrCharRef()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3b

    .line 2197
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v3

    .line 2198
    .local v3, "next":I
    const/16 v7, 0x23

    if-ne v3, v7, :cond_74

    .line 2201
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v3

    .line 2202
    const/16 v7, 0x78

    if-ne v3, v7, :cond_2d

    .line 2204
    const/16 v0, 0x10

    .line 2205
    .local v0, "base":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v3

    .line 2209
    :goto_18
    const/4 v6, 0x0

    .line 2210
    .local v6, "value":I
    :goto_19
    if-ltz v3, :cond_22

    .line 2212
    int-to-char v1, v3

    .line 2213
    .local v1, "ch":C
    invoke-static {v1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 2214
    .local v2, "digit":I
    if-gez v2, :cond_30

    .line 2222
    .end local v1    # "ch":C
    .end local v2    # "digit":I
    :cond_22
    if-eq v3, v8, :cond_3b

    .line 2224
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 2225
    const-string v7, "invalid character reference"

    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 2257
    .end local v0    # "base":I
    .end local v6    # "value":I
    :goto_2c
    return-void

    .line 2208
    :cond_2d
    const/16 v0, 0xa

    .restart local v0    # "base":I
    goto :goto_18

    .line 2216
    .restart local v1    # "ch":C
    .restart local v2    # "digit":I
    .restart local v6    # "value":I
    :cond_30
    const/high16 v7, 0x8000000

    if-ge v6, v7, :cond_22

    .line 2218
    mul-int/2addr v6, v0

    .line 2219
    add-int/2addr v6, v2

    .line 2220
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v3

    .line 2221
    goto :goto_19

    .line 2228
    .end local v1    # "ch":C
    .end local v2    # "digit":I
    :cond_3b
    if-lez v6, :cond_42

    const v7, 0xd7ff

    if-le v6, v7, :cond_55

    :cond_42
    const v7, 0xe000

    if-lt v6, v7, :cond_4c

    const v7, 0xfffd

    if-le v6, v7, :cond_55

    :cond_4c
    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_59

    const v7, 0x10ffff

    if-gt v6, v7, :cond_59

    .line 2231
    :cond_55
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    goto :goto_2c

    .line 2233
    :cond_59
    const/16 v7, 0x65

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid character value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "XQST0090"

    invoke-virtual {p0, v7, v8, v9}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 2237
    .end local v0    # "base":I
    .end local v6    # "value":I
    :cond_74
    iget v5, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2238
    .local v5, "saveLength":I
    :goto_76
    if-ltz v3, :cond_7f

    .line 2240
    int-to-char v1, v3

    .line 2241
    .restart local v1    # "ch":C
    invoke-static {v1}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v7

    if-nez v7, :cond_8a

    .line 2246
    .end local v1    # "ch":C
    :cond_7f
    if-eq v3, v8, :cond_92

    .line 2248
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 2249
    const-string v7, "invalid entity reference"

    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_2c

    .line 2243
    .restart local v1    # "ch":C
    :cond_8a
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 2244
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v3

    .line 2245
    goto :goto_76

    .line 2252
    .end local v1    # "ch":C
    :cond_92
    new-instance v4, Ljava/lang/String;

    iget-object v7, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v8, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    sub-int/2addr v8, v5

    invoke-direct {v4, v7, v5, v8}, Ljava/lang/String;-><init>([CII)V

    .line 2254
    .local v4, "ref":Ljava/lang/String;
    iput v5, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2255
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->appendNamedEntity(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method parseExpr()Lgnu/expr/Expression;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1638
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method parseExprSequence(IZ)Lgnu/expr/Expression;
    .registers 8
    .param p1, "rightToken"    # I
    .param p2, "optional"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 2752
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v2, p1, :cond_9

    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v2, v4, :cond_13

    .line 2754
    :cond_9
    if-nez p2, :cond_10

    .line 2755
    const-string v2, "missing expression"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 2756
    :cond_10
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 2773
    :cond_12
    :goto_12
    return-object v0

    .line 2758
    :cond_13
    const/4 v0, 0x0

    .line 2761
    .local v0, "exp":Lgnu/expr/Expression;
    :goto_14
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v1

    .line 2763
    .local v1, "exp1":Lgnu/expr/Expression;
    if-nez v0, :cond_3e

    move-object v0, v1

    .line 2764
    :goto_1b
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v2, p1, :cond_12

    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v2, v4, :cond_12

    .line 2766
    iget v2, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-nez v2, :cond_2d

    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_12

    .line 2768
    :cond_2d
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_46

    .line 2769
    const/16 v2, 0x29

    if-ne p1, v2, :cond_43

    const-string v2, "expected \')\'"

    :goto_39
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_12

    .line 2763
    :cond_3e
    invoke-static {v0, v1}, Lgnu/xquery/lang/XQParser;->makeExprSequence(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_1b

    .line 2769
    :cond_43
    const-string v2, "confused by syntax error"

    goto :goto_39

    .line 2771
    :cond_46
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_14
.end method

.method final parseExprSingle()Lgnu/expr/Expression;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1644
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 1645
    .local v1, "startLine":I
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 1646
    .local v0, "startColumn":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    .line 1647
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    packed-switch v2, :pswitch_data_38

    .line 1666
    const/16 v2, 0x190

    invoke-static {v2}, Lgnu/xquery/lang/XQParser;->priority(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->parseBinaryExpr(I)Lgnu/expr/Expression;

    move-result-object v2

    :goto_18
    return-object v2

    .line 1654
    :pswitch_19
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseIfExpr()Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_18

    .line 1656
    :pswitch_1e
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseTypeSwitch()Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_18

    .line 1658
    :pswitch_23
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->parseFLWRExpression(Z)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_18

    .line 1660
    :pswitch_28
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->parseFLWRExpression(Z)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_18

    .line 1662
    :pswitch_2d
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->parseQuantifiedExpr(Z)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_18

    .line 1664
    :pswitch_32
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->parseQuantifiedExpr(Z)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_18

    .line 1647
    nop

    :pswitch_data_38
    .packed-switch 0xf1
        :pswitch_19
        :pswitch_1e
        :pswitch_23
        :pswitch_28
        :pswitch_2d
        :pswitch_32
    .end packed-switch
.end method

.method public parseFLWRExpression(Z)Lgnu/expr/Expression;
    .registers 23
    .param p1, "isFor"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3208
    move-object/from16 v0, p0

    iget v9, v0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    .line 3209
    .local v9, "flworDeclsSave":I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    .line 3210
    invoke-virtual/range {p0 .. p1}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v8

    .line 3212
    .local v8, "exp":Lgnu/expr/Expression;
    const-string v18, "order"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_25f

    .line 3214
    if-eqz p1, :cond_7f

    const/16 v18, 0x66

    :goto_24
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v14

    .line 3215
    .local v14, "saveNesting":C
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3216
    const-string v18, "by"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_82

    .line 3217
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3220
    :goto_3e
    new-instance v15, Ljava/util/Stack;

    invoke-direct {v15}, Ljava/util/Stack;-><init>()V

    .line 3223
    .local v15, "specs":Ljava/util/Stack;
    :goto_43
    const/4 v6, 0x0

    .line 3224
    .local v6, "descending":Z
    move-object/from16 v0, p0

    iget-char v7, v0, Lgnu/xquery/lang/XQParser;->defaultEmptyOrder:C

    .line 3226
    .local v7, "emptyOrder":C
    new-instance v11, Lgnu/expr/LambdaExp;

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    invoke-direct {v11, v0}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 3227
    .local v11, "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v0, p0

    iget v10, v0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    .local v10, "i":I
    :goto_61
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_8c

    .line 3228
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    .line 3227
    add-int/lit8 v10, v10, 0x1

    goto :goto_61

    .line 3214
    .end local v6    # "descending":Z
    .end local v7    # "emptyOrder":C
    .end local v10    # "i":I
    .end local v11    # "lexp":Lgnu/expr/LambdaExp;
    .end local v14    # "saveNesting":C
    .end local v15    # "specs":Ljava/util/Stack;
    :cond_7f
    const/16 v18, 0x6c

    goto :goto_24

    .line 3219
    .restart local v14    # "saveNesting":C
    :cond_82
    const-string v18, "missing \'by\' following \'order\'"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_3e

    .line 3229
    .restart local v6    # "descending":Z
    .restart local v7    # "emptyOrder":C
    .restart local v10    # "i":I
    .restart local v11    # "lexp":Lgnu/expr/LambdaExp;
    .restart local v15    # "specs":Ljava/util/Stack;
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3230
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3231
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3232
    invoke-virtual {v15, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3234
    const-string v18, "ascending"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_167

    .line 3235
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3241
    :cond_bc
    :goto_bc
    const-string v18, "empty"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_dc

    .line 3243
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3244
    const-string v18, "greatest"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_179

    .line 3246
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3247
    const/16 v7, 0x47

    .line 3258
    :cond_dc
    :goto_dc
    new-instance v19, Lgnu/expr/QuoteExp;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_197

    const-string v18, "D"

    :goto_e7
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3259
    move-object/from16 v0, p0

    iget-object v5, v0, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    .line 3260
    .local v5, "collation":Lgnu/xquery/util/NamedCollator;
    const-string v18, "collation"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_136

    .line 3262
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseURILiteral()Ljava/lang/Object;

    move-result-object v16

    .line 3263
    .local v16, "uri":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v18, v0

    if-eqz v18, :cond_133

    .line 3267
    :try_start_121
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3268
    .local v17, "uriString":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lgnu/xquery/util/NamedCollator;->make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_132} :catch_19b

    move-result-object v5

    .line 3275
    .end local v17    # "uriString":Ljava/lang/String;
    :cond_133
    :goto_133
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3277
    .end local v16    # "uri":Ljava/lang/Object;
    :cond_136
    new-instance v18, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3278
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v18, v0

    const/16 v19, 0x2c

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1ca

    .line 3282
    const-string v18, "return"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1cf

    .line 3283
    const-string v18, "expected \'return\' clause"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v8

    .line 3307
    .end local v5    # "collation":Lgnu/xquery/util/NamedCollator;
    .end local v6    # "descending":Z
    .end local v7    # "emptyOrder":C
    .end local v8    # "exp":Lgnu/expr/Expression;
    .end local v10    # "i":I
    .end local v11    # "lexp":Lgnu/expr/LambdaExp;
    .end local v14    # "saveNesting":C
    .end local v15    # "specs":Ljava/util/Stack;
    :goto_166
    return-object v8

    .line 3236
    .restart local v6    # "descending":Z
    .restart local v7    # "emptyOrder":C
    .restart local v8    # "exp":Lgnu/expr/Expression;
    .restart local v10    # "i":I
    .restart local v11    # "lexp":Lgnu/expr/LambdaExp;
    .restart local v14    # "saveNesting":C
    .restart local v15    # "specs":Ljava/util/Stack;
    :cond_167
    const-string v18, "descending"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_bc

    .line 3238
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3239
    const/4 v6, 0x1

    goto/16 :goto_bc

    .line 3249
    :cond_179
    const-string v18, "least"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_18c

    .line 3251
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3252
    const/16 v7, 0x4c

    goto/16 :goto_dc

    .line 3255
    :cond_18c
    const-string v18, "\'empty\' sequence order must be \'greatest\' or \'least\'"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto/16 :goto_dc

    .line 3258
    :cond_197
    const-string v18, "A"

    goto/16 :goto_e7

    .line 3270
    .restart local v5    # "collation":Lgnu/xquery/util/NamedCollator;
    .restart local v16    # "uri":Ljava/lang/Object;
    :catch_19b
    move-exception v12

    .line 3272
    .local v12, "name":Ljava/lang/Exception;
    const/16 v18, 0x65

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "unknown collation \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "XQST0076"

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_133

    .line 3280
    .end local v12    # "name":Ljava/lang/Exception;
    .end local v16    # "uri":Ljava/lang/Object;
    :cond_1ca
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto/16 :goto_43

    .line 3284
    :cond_1cf
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3286
    new-instance v11, Lgnu/expr/LambdaExp;

    .end local v11    # "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    invoke-direct {v11, v0}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 3288
    .restart local v11    # "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v0, p0

    iget v10, v0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    :goto_1eb
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_209

    .line 3289
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    .line 3288
    add-int/lit8 v10, v10, 0x1

    goto :goto_1eb

    .line 3290
    :cond_209
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3291
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3292
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3293
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3294
    invoke-virtual {v15}, Ljava/util/Stack;->size()I

    move-result v13

    .line 3295
    .local v13, "nspecs":I
    add-int/lit8 v18, v13, 0x2

    move/from16 v0, v18

    new-array v4, v0, [Lgnu/expr/Expression;

    .line 3296
    .local v4, "args":[Lgnu/expr/Expression;
    const/16 v18, 0x0

    aput-object v8, v4, v18

    .line 3297
    const/16 v18, 0x1

    aput-object v11, v4, v18

    .line 3298
    const/4 v10, 0x0

    :goto_23f
    if-ge v10, v13, :cond_24e

    .line 3299
    add-int/lit8 v19, v10, 0x2

    invoke-virtual {v15, v10}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lgnu/expr/Expression;

    aput-object v18, v4, v19

    .line 3298
    add-int/lit8 v10, v10, 0x1

    goto :goto_23f

    .line 3300
    :cond_24e
    new-instance v8, Lgnu/expr/ApplyExp;

    .end local v8    # "exp":Lgnu/expr/Expression;
    const-string v18, "gnu.xquery.util.OrderedMap"

    const-string v19, "orderedMap"

    invoke-static/range {v18 .. v19}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto/16 :goto_166

    .line 3305
    .end local v4    # "args":[Lgnu/expr/Expression;
    .end local v5    # "collation":Lgnu/xquery/util/NamedCollator;
    .end local v6    # "descending":Z
    .end local v7    # "emptyOrder":C
    .end local v10    # "i":I
    .end local v11    # "lexp":Lgnu/expr/LambdaExp;
    .end local v13    # "nspecs":I
    .end local v14    # "saveNesting":C
    .end local v15    # "specs":Ljava/util/Stack;
    .restart local v8    # "exp":Lgnu/expr/Expression;
    :cond_25f
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    .line 3306
    move-object/from16 v0, p0

    iput v9, v0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    goto/16 :goto_166
.end method

.method public parseFLWRInner(Z)Lgnu/expr/Expression;
    .registers 34
    .param p1, "isFor"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3321
    if-eqz p1, :cond_3a

    const/16 v28, 0x66

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v20

    .line 3322
    .local v20, "saveNesting":C
    const/16 v28, 0x24

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 3323
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v12

    .line 3324
    .local v12, "decl":Lgnu/expr/Declaration;
    if-nez v12, :cond_3d

    .line 3325
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "missing Variable - saw "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->tokenString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    .line 3479
    :goto_39
    return-object v25

    .line 3321
    .end local v12    # "decl":Lgnu/expr/Declaration;
    .end local v20    # "saveNesting":C
    :cond_3a
    const/16 v28, 0x6c

    goto :goto_4

    .line 3326
    .restart local v12    # "decl":Lgnu/expr/Declaration;
    .restart local v20    # "saveNesting":C
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    move-object/from16 v28, v0

    if-nez v28, :cond_164

    .line 3327
    const/16 v28, 0x8

    move/from16 v0, v28

    new-array v0, v0, [Lgnu/expr/Declaration;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    .line 3334
    :cond_53
    :goto_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move/from16 v29, v0

    add-int/lit8 v30, v29, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    aput-object v12, v28, v29

    .line 3335
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3337
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v27

    .line 3339
    .local v27, "type":Lgnu/expr/Expression;
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v14, v0, [Lgnu/expr/Expression;

    .line 3340
    .local v14, "inits":[Lgnu/expr/Expression;
    const/16 v18, 0x0

    .line 3341
    .local v18, "posDecl":Lgnu/expr/Declaration;
    if-eqz p1, :cond_1ce

    .line 3343
    const-string v28, "at"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v21

    .line 3344
    .local v21, "sawAt":Z
    new-instance v16, Lgnu/expr/LambdaExp;

    if-eqz v21, :cond_1ae

    const/16 v28, 0x2

    :goto_8a
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 3345
    .local v16, "lexp":Lgnu/expr/LambdaExp;
    if-eqz v21, :cond_b6

    .line 3347
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3348
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v28, v0

    const/16 v29, 0x24

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_ab

    .line 3350
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v18

    .line 3351
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3353
    :cond_ab
    if-nez v18, :cond_b6

    .line 3354
    const-string v28, "missing Variable after \'at\'"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 3356
    :cond_b6
    move-object/from16 v25, v16

    .line 3357
    .local v25, "sc":Lgnu/expr/ScopeExp;
    const-string v28, "in"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1b2

    .line 3358
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3379
    .end local v16    # "lexp":Lgnu/expr/LambdaExp;
    .end local v21    # "sawAt":Z
    :goto_c7
    const/16 v28, 0x0

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v29

    aput-object v29, v14, v28

    .line 3380
    if-eqz v27, :cond_e3

    if-nez p1, :cond_e3

    .line 3381
    const/16 v28, 0x0

    const/16 v29, 0x0

    aget-object v29, v14, v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v29

    aput-object v29, v14, v28

    .line 3382
    :cond_e3
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3383
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3384
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3385
    if-eqz v27, :cond_103

    .line 3386
    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 3387
    :cond_103
    if-eqz p1, :cond_114

    .line 3389
    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3390
    const-wide/32 v28, 0x40000

    move-wide/from16 v0, v28

    invoke-virtual {v12, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3392
    :cond_114
    if-eqz v18, :cond_139

    .line 3394
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3395
    sget-object v28, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 3396
    const/16 v28, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3397
    const-wide/32 v28, 0x40000

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3400
    :cond_139
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v28, v0

    const/16 v29, 0x2c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_253

    .line 3402
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3403
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v28, v0

    const/16 v29, 0x24

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_201

    .line 3404
    const-string v28, "missing $NAME after \',\'"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    goto/16 :goto_39

    .line 3328
    .end local v14    # "inits":[Lgnu/expr/Expression;
    .end local v18    # "posDecl":Lgnu/expr/Declaration;
    .end local v25    # "sc":Lgnu/expr/ScopeExp;
    .end local v27    # "type":Lgnu/expr/Expression;
    :cond_164
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_53

    .line 3330
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Lgnu/expr/Declaration;

    move-object/from16 v26, v0

    .line 3331
    .local v26, "tmp":[Lgnu/expr/Declaration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move/from16 v31, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3332
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    goto/16 :goto_53

    .line 3344
    .end local v26    # "tmp":[Lgnu/expr/Declaration;
    .restart local v14    # "inits":[Lgnu/expr/Expression;
    .restart local v18    # "posDecl":Lgnu/expr/Declaration;
    .restart local v21    # "sawAt":Z
    .restart local v27    # "type":Lgnu/expr/Expression;
    :cond_1ae
    const/16 v28, 0x1

    goto/16 :goto_8a

    .line 3361
    .restart local v16    # "lexp":Lgnu/expr/LambdaExp;
    .restart local v25    # "sc":Lgnu/expr/ScopeExp;
    :cond_1b2
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v28, v0

    const/16 v29, 0x4c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c3

    .line 3362
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3363
    :cond_1c3
    const-string v28, "missing \'in\' in \'for\' clause"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_c7

    .line 3368
    .end local v16    # "lexp":Lgnu/expr/LambdaExp;
    .end local v21    # "sawAt":Z
    .end local v25    # "sc":Lgnu/expr/ScopeExp;
    :cond_1ce
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v28, v0

    const/16 v29, 0x4c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1e8

    .line 3369
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3376
    :goto_1df
    new-instance v15, Lgnu/expr/LetExp;

    invoke-direct {v15, v14}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 3377
    .local v15, "let":Lgnu/expr/LetExp;
    move-object/from16 v25, v15

    .restart local v25    # "sc":Lgnu/expr/ScopeExp;
    goto/16 :goto_c7

    .line 3372
    .end local v15    # "let":Lgnu/expr/LetExp;
    .end local v25    # "sc":Lgnu/expr/ScopeExp;
    :cond_1e8
    const-string v28, "in"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1f7

    .line 3373
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3374
    :cond_1f7
    const-string v28, "missing \':=\' in \'let\' clause"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_1df

    .line 3405
    .restart local v25    # "sc":Lgnu/expr/ScopeExp;
    :cond_201
    invoke-virtual/range {p0 .. p1}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v7

    .line 3466
    .local v7, "body":Lgnu/expr/Expression;
    :goto_205
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3467
    if-eqz p1, :cond_3c5

    move-object/from16 v16, v25

    .line 3469
    check-cast v16, Lgnu/expr/LambdaExp;

    .line 3470
    .restart local v16    # "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v0, v16

    iput-object v7, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3471
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v6, v0, [Lgnu/expr/Expression;

    const/16 v28, 0x0

    aput-object v25, v6, v28

    const/16 v28, 0x1

    const/16 v29, 0x0

    aget-object v29, v14, v29

    aput-object v29, v6, v28

    .line 3472
    .local v6, "args":[Lgnu/expr/Expression;
    new-instance v25, Lgnu/expr/ApplyExp;

    .end local v25    # "sc":Lgnu/expr/ScopeExp;
    const-string v29, "gnu.kawa.functions.ValuesMap"

    move-object/from16 v0, v16

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_3c1

    const-string v28, "valuesMap"

    :goto_242
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto/16 :goto_39

    .line 3407
    .end local v6    # "args":[Lgnu/expr/Expression;
    .end local v7    # "body":Lgnu/expr/Expression;
    .end local v16    # "lexp":Lgnu/expr/LambdaExp;
    .restart local v25    # "sc":Lgnu/expr/ScopeExp;
    :cond_253
    const-string v28, "for"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_288

    .line 3409
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3410
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v28, v0

    const/16 v29, 0x24

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_27c

    .line 3411
    const-string v28, "missing $NAME after \'for\'"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    goto/16 :goto_39

    .line 3412
    :cond_27c
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v7

    .restart local v7    # "body":Lgnu/expr/Expression;
    goto/16 :goto_205

    .line 3414
    .end local v7    # "body":Lgnu/expr/Expression;
    :cond_288
    const-string v28, "let"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2bd

    .line 3416
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3417
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v28, v0

    const/16 v29, 0x24

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2b1

    .line 3418
    const-string v28, "missing $NAME after \'let\'"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    goto/16 :goto_39

    .line 3419
    :cond_2b1
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v7

    .restart local v7    # "body":Lgnu/expr/Expression;
    goto/16 :goto_205

    .line 3424
    .end local v7    # "body":Lgnu/expr/Expression;
    :cond_2bd
    const/16 v28, 0x77

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v19

    .line 3425
    .local v19, "save":C
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v28, v0

    const/16 v29, 0xc4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_32e

    .line 3427
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3428
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v11

    .line 3436
    .local v11, "cond":Lgnu/expr/Expression;
    :goto_2dc
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3437
    const-string v28, "stable"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v24

    .line 3438
    .local v24, "sawStable":Z
    if-eqz v24, :cond_2f2

    .line 3439
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3440
    :cond_2f2
    const-string v28, "return"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v23

    .line 3441
    .local v23, "sawReturn":Z
    const-string v28, "order"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v22

    .line 3442
    .local v22, "sawOrder":Z
    if-nez v23, :cond_341

    if-nez v22, :cond_341

    const-string v28, "let"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_341

    const-string v28, "for"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_341

    .line 3443
    const-string v28, "missing \'return\' clause"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    goto/16 :goto_39

    .line 3430
    .end local v11    # "cond":Lgnu/expr/Expression;
    .end local v22    # "sawOrder":Z
    .end local v23    # "sawReturn":Z
    .end local v24    # "sawStable":Z
    :cond_32e
    const-string v28, "where"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_33f

    .line 3432
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v11

    .restart local v11    # "cond":Lgnu/expr/Expression;
    goto :goto_2dc

    .line 3435
    .end local v11    # "cond":Lgnu/expr/Expression;
    :cond_33f
    const/4 v11, 0x0

    .restart local v11    # "cond":Lgnu/expr/Expression;
    goto :goto_2dc

    .line 3444
    .restart local v22    # "sawOrder":Z
    .restart local v23    # "sawReturn":Z
    .restart local v24    # "sawStable":Z
    :cond_341
    if-nez v22, :cond_34c

    .line 3445
    const-string v28, "unexpected eof-of-file after \'return\'"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    .line 3446
    :cond_34c
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v28

    add-int/lit8 v10, v28, 0x1

    .line 3447
    .local v10, "bodyLine":I
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v28

    add-int/lit8 v9, v28, 0x1

    .line 3448
    .local v9, "bodyColumn":I
    if-eqz v23, :cond_35d

    .line 3449
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3450
    :cond_35d
    if-eqz v22, :cond_3bb

    .line 3452
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    move/from16 v29, v0

    sub-int v17, v28, v29

    .line 3453
    .local v17, "ndecls":I
    move/from16 v0, v17

    new-array v6, v0, [Lgnu/expr/Expression;

    .line 3454
    .restart local v6    # "args":[Lgnu/expr/Expression;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_372
    move/from16 v0, v17

    if-ge v13, v0, :cond_390

    .line 3455
    new-instance v28, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    move/from16 v30, v0

    add-int v30, v30, v13

    aget-object v29, v29, v30

    invoke-direct/range {v28 .. v29}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v28, v6, v13

    .line 3454
    add-int/lit8 v13, v13, 0x1

    goto :goto_372

    .line 3456
    :cond_390
    new-instance v7, Lgnu/expr/ApplyExp;

    new-instance v28, Lgnu/expr/PrimProcedure;

    const-string v29, "gnu.xquery.util.OrderedMap"

    const-string v30, "makeTuple$V"

    const/16 v31, 0x1

    invoke-direct/range {v28 .. v31}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v28

    invoke-direct {v7, v0, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .restart local v7    # "body":Lgnu/expr/Expression;
    move-object v8, v7

    .line 3462
    .end local v6    # "args":[Lgnu/expr/Expression;
    .end local v7    # "body":Lgnu/expr/Expression;
    .end local v13    # "i":I
    .end local v17    # "ndecls":I
    .local v8, "body":Lgnu/expr/Expression;
    :goto_3a3
    if-eqz v11, :cond_3d0

    .line 3463
    new-instance v7, Lgnu/expr/IfExp;

    invoke-static {v11}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v28

    sget-object v29, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v7, v0, v8, v1}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    .line 3464
    .end local v8    # "body":Lgnu/expr/Expression;
    .restart local v7    # "body":Lgnu/expr/Expression;
    :goto_3b4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10, v9}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    goto/16 :goto_205

    .line 3461
    .end local v7    # "body":Lgnu/expr/Expression;
    :cond_3bb
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v7

    .restart local v7    # "body":Lgnu/expr/Expression;
    move-object v8, v7

    .end local v7    # "body":Lgnu/expr/Expression;
    .restart local v8    # "body":Lgnu/expr/Expression;
    goto :goto_3a3

    .line 3472
    .end local v8    # "body":Lgnu/expr/Expression;
    .end local v9    # "bodyColumn":I
    .end local v10    # "bodyLine":I
    .end local v11    # "cond":Lgnu/expr/Expression;
    .end local v19    # "save":C
    .end local v22    # "sawOrder":Z
    .end local v23    # "sawReturn":Z
    .end local v24    # "sawStable":Z
    .end local v25    # "sc":Lgnu/expr/ScopeExp;
    .restart local v6    # "args":[Lgnu/expr/Expression;
    .restart local v7    # "body":Lgnu/expr/Expression;
    .restart local v16    # "lexp":Lgnu/expr/LambdaExp;
    :cond_3c1
    const-string v28, "valuesMapWithPos"

    goto/16 :goto_242

    .end local v6    # "args":[Lgnu/expr/Expression;
    .end local v16    # "lexp":Lgnu/expr/LambdaExp;
    .restart local v25    # "sc":Lgnu/expr/ScopeExp;
    :cond_3c5
    move-object/from16 v28, v25

    .line 3478
    check-cast v28, Lgnu/expr/LetExp;

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    goto/16 :goto_39

    .end local v7    # "body":Lgnu/expr/Expression;
    .restart local v8    # "body":Lgnu/expr/Expression;
    .restart local v9    # "bodyColumn":I
    .restart local v10    # "bodyLine":I
    .restart local v11    # "cond":Lgnu/expr/Expression;
    .restart local v19    # "save":C
    .restart local v22    # "sawOrder":Z
    .restart local v23    # "sawReturn":Z
    .restart local v24    # "sawStable":Z
    :cond_3d0
    move-object v7, v8

    .end local v8    # "body":Lgnu/expr/Expression;
    .restart local v7    # "body":Lgnu/expr/Expression;
    goto :goto_3b4
.end method

.method public parseFunctionDefinition(II)Lgnu/expr/Expression;
    .registers 16
    .param p1, "declLine"    # I
    .param p2, "declColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3544
    iget v9, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x51

    if-eq v9, v10, :cond_13

    iget v9, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x41

    if-eq v9, v10, :cond_13

    .line 3545
    const-string v9, "missing function name"

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    .line 3630
    :goto_12
    return-object v6

    .line 3546
    :cond_13
    new-instance v3, Ljava/lang/String;

    iget-object v9, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v10, 0x0

    iget v11, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v3, v9, v10, v11}, Ljava/lang/String;-><init>([CII)V

    .line 3547
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v9

    iget-object v10, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v10}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v12, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {v9, v10, v11, v12}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 3548
    const/4 v9, 0x1

    invoke-virtual {p0, v3, v9}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v7

    .line 3549
    .local v7, "sym":Lgnu/mapping/Symbol;
    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    .line 3550
    .local v8, "uri":Ljava/lang/String;
    const-string v9, "http://www.w3.org/XML/1998/namespace"

    if-eq v8, v9, :cond_47

    const-string v9, "http://www.w3.org/2001/XMLSchema"

    if-eq v8, v9, :cond_47

    const-string v9, "http://www.w3.org/2001/XMLSchema-instance"

    if-eq v8, v9, :cond_47

    const-string v9, "http://www.w3.org/2005/xpath-functions"

    if-ne v8, v9, :cond_8a

    .line 3555
    :cond_47
    const/16 v9, 0x65

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cannot declare function in standard namespace \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "XQST0045"

    invoke-virtual {p0, v9, v10, v11}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3570
    :cond_67
    :goto_67
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3571
    iget v9, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x28

    if-eq v9, v10, :cond_c5

    .line 3572
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "missing parameter list:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    goto :goto_12

    .line 3559
    :cond_8a
    const-string v9, ""

    if-ne v8, v9, :cond_a3

    .line 3561
    iget-object v9, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v9}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v9

    if-eqz v9, :cond_a0

    const/16 v9, 0x65

    :goto_98
    const-string v10, "cannot declare function in empty namespace"

    const-string v11, "XQST0060"

    invoke-virtual {p0, v9, v10, v11}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    :cond_a0
    const/16 v9, 0x77

    goto :goto_98

    .line 3565
    :cond_a3
    iget-object v9, p0, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eqz v9, :cond_67

    iget-object v9, p0, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eq v8, v9, :cond_67

    const-string v9, "http://www.w3.org/2005/xquery-local-functions"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bb

    iget-object v9, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v9}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v9

    if-eqz v9, :cond_67

    .line 3568
    :cond_bb
    const/16 v9, 0x65

    const-string v10, "function not in namespace of library module"

    const-string v11, "XQST0048"

    invoke-virtual {p0, v9, v10, v11}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 3573
    :cond_c5
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3574
    new-instance v2, Lgnu/expr/LambdaExp;

    invoke-direct {v2}, Lgnu/expr/LambdaExp;-><init>()V

    .line 3575
    .local v2, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {p0, v2, p1, p2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3576
    invoke-virtual {v2, v3}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 3577
    iget-object v9, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v9}, Lgnu/expr/Compilation;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v9

    invoke-virtual {v9, v7}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 3578
    .local v0, "decl":Lgnu/expr/Declaration;
    iget-object v9, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v9}, Lgnu/expr/Compilation;->isStatic()Z

    move-result v9

    if-eqz v9, :cond_ea

    .line 3579
    const-wide/16 v10, 0x800

    invoke-virtual {v0, v10, v11}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3580
    :cond_ea
    const/16 v9, 0x800

    invoke-virtual {v2, v9}, Lgnu/expr/LambdaExp;->setFlag(I)V

    .line 3581
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 3582
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 3583
    invoke-virtual {p0, v0, p1, p2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Declaration;II)V

    .line 3584
    iget-object v9, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v9, v2}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3585
    iget v9, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x29

    if-eq v9, v10, :cond_116

    .line 3590
    :goto_105
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v4

    .line 3591
    .local v4, "param":Lgnu/expr/Declaration;
    if-nez v4, :cond_13d

    .line 3592
    const-string v9, "missing parameter name"

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 3601
    :goto_110
    iget v9, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x29

    if-ne v9, v10, :cond_157

    .line 3621
    .end local v4    # "param":Lgnu/expr/Declaration;
    :cond_116
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3622
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v5

    .line 3623
    .local v5, "retType":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v9

    iput-object v9, v2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3624
    iget-object v9, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v9, v2}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3625
    if-eqz v5, :cond_12f

    .line 3626
    iget-object v9, p0, Lgnu/xquery/lang/XQParser;->interpreter:Lgnu/xquery/lang/XQuery;

    invoke-virtual {v2, v5, v9}, Lgnu/expr/LambdaExp;->setCoercedReturnValue(Lgnu/expr/Expression;Lgnu/expr/Language;)V

    .line 3627
    :cond_12f
    new-instance v6, Lgnu/expr/SetExp;

    invoke-direct {v6, v0, v2}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 3628
    .local v6, "sexp":Lgnu/expr/SetExp;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 3629
    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    goto/16 :goto_12

    .line 3595
    .end local v5    # "retType":Lgnu/expr/Expression;
    .end local v6    # "sexp":Lgnu/expr/SetExp;
    .restart local v4    # "param":Lgnu/expr/Declaration;
    :cond_13d
    invoke-virtual {v2, v4}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3596
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3597
    iget v9, v2, Lgnu/expr/LambdaExp;->min_args:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v2, Lgnu/expr/LambdaExp;->min_args:I

    .line 3598
    iget v9, v2, Lgnu/expr/LambdaExp;->max_args:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v2, Lgnu/expr/LambdaExp;->max_args:I

    .line 3599
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v9

    invoke-virtual {v4, v9}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    goto :goto_110

    .line 3603
    :cond_157
    iget v9, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x2c

    if-eq v9, v10, :cond_186

    .line 3605
    const-string v9, "missing \',\' in parameter list"

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    .line 3608
    .local v1, "err":Lgnu/expr/Expression;
    :cond_163
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3609
    iget v9, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ltz v9, :cond_176

    iget v9, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x3b

    if-eq v9, v10, :cond_176

    iget v9, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x3b

    if-ne v9, v10, :cond_179

    :cond_176
    move-object v6, v1

    .line 3610
    goto/16 :goto_12

    .line 3611
    :cond_179
    iget v9, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x29

    if-eq v9, v10, :cond_116

    .line 3613
    iget v9, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_163

    goto :goto_105

    .line 3618
    .end local v1    # "err":Lgnu/expr/Expression;
    :cond_186
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto/16 :goto_105
.end method

.method public parseIfExpr()Lgnu/expr/Expression;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3135
    const/16 v5, 0x69

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v2

    .line 3136
    .local v2, "saveReadState1":C
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3137
    const/16 v5, 0x28

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v3

    .line 3138
    .local v3, "saveReadState2":C
    const/16 v5, 0x29

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v0

    .line 3139
    .local v0, "cond":Lgnu/expr/Expression;
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3140
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_23

    .line 3141
    const-string v5, "missing \')\' - unexpected end-of-file"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 3142
    :cond_23
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3143
    const-string v5, "then"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_55

    .line 3144
    const-string v5, "missing \'then\'"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 3147
    :goto_33
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v4

    .line 3148
    .local v4, "thenPart":Lgnu/expr/Expression;
    const-string v5, "else"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_59

    .line 3149
    const-string v5, "missing \'else\'"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 3152
    :goto_44
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3153
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v1

    .line 3154
    .local v1, "elsePart":Lgnu/expr/Expression;
    new-instance v5, Lgnu/expr/IfExp;

    invoke-static {v0}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v6

    invoke-direct {v5, v6, v4, v1}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    return-object v5

    .line 3146
    .end local v1    # "elsePart":Lgnu/expr/Expression;
    .end local v4    # "thenPart":Lgnu/expr/Expression;
    :cond_55
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_33

    .line 3151
    .restart local v4    # "thenPart":Lgnu/expr/Expression;
    :cond_59
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_44
.end method

.method parseIntersectExceptExpr()Lgnu/expr/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1781
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parsePathExpr()Lgnu/expr/Expression;

    move-result-object v0

    .line 1784
    .local v0, "exp":Lgnu/expr/Expression;
    :goto_4
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperator()I

    move-result v2

    .line 1785
    .local v2, "op":I
    const/16 v3, 0x1a4

    if-eq v2, v3, :cond_11

    const/16 v3, 0x1a5

    if-eq v2, v3, :cond_11

    .line 1791
    return-object v0

    .line 1787
    :cond_11
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1788
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parsePathExpr()Lgnu/expr/Expression;

    move-result-object v1

    .line 1789
    .local v1, "exp2":Lgnu/expr/Expression;
    invoke-virtual {p0, v2, v0, v1}, Lgnu/xquery/lang/XQParser;->makeBinary(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1790
    goto :goto_4
.end method

.method public parseItemType()Lgnu/expr/Expression;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1586
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    .line 1587
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseMaybeKindTest()Lgnu/expr/Expression;

    move-result-object v0

    .line 1589
    .local v0, "etype":Lgnu/expr/Expression;
    if-eqz v0, :cond_16

    .line 1591
    iget v4, p0, Lgnu/xquery/lang/XQParser;->parseContext:I

    const/16 v5, 0x43

    if-ne v4, v5, :cond_15

    .line 1593
    sget-object v3, Lgnu/kawa/xml/XDataType;->anyAtomicType:Lgnu/kawa/xml/XDataType;

    .line 1613
    .local v3, "type":Lgnu/bytecode/Type;
    :goto_11
    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    .end local v0    # "etype":Lgnu/expr/Expression;
    .end local v3    # "type":Lgnu/bytecode/Type;
    :cond_15
    :goto_15
    return-object v0

    .line 1597
    .restart local v0    # "etype":Lgnu/expr/Expression;
    :cond_16
    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0xed

    if-ne v4, v5, :cond_24

    .line 1599
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1600
    invoke-static {}, Lgnu/kawa/reflect/SingletonType;->getInstance()Lgnu/kawa/reflect/SingletonType;

    move-result-object v3

    .restart local v3    # "type":Lgnu/bytecode/Type;
    goto :goto_11

    .line 1602
    .end local v3    # "type":Lgnu/bytecode/Type;
    :cond_24
    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x41

    if-eq v4, v5, :cond_30

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x51

    if-ne v4, v5, :cond_50

    .line 1604
    :cond_30
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v5, 0x0

    iget v6, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v2, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    .line 1605
    .local v2, "tname":Ljava/lang/String;
    new-instance v1, Lgnu/expr/ReferenceExp;

    invoke-direct {v1, v2}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 1606
    .local v1, "rexp":Lgnu/expr/ReferenceExp;
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Lgnu/expr/ReferenceExp;->setFlag(I)V

    .line 1607
    iget v4, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v5, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {p0, v1, v4, v5}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 1608
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-object v0, v1

    .line 1609
    goto :goto_15

    .line 1612
    .end local v1    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v2    # "tname":Ljava/lang/String;
    :cond_50
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public parseMaybeKindTest()Lgnu/expr/Expression;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1536
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    packed-switch v3, :pswitch_data_60

    .line 1578
    const/4 v2, 0x0

    .line 1580
    :goto_7
    return-object v2

    .line 1540
    :pswitch_8
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0xec

    if-ne v3, v4, :cond_f

    const/4 v2, 0x1

    :cond_f
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->parseNamedNodeType(Z)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_7

    .line 1543
    :pswitch_14
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1544
    sget-object v1, Lgnu/kawa/xml/NodeType;->textNodeTest:Lgnu/kawa/xml/NodeType;

    .line 1580
    .local v1, "type":Lgnu/bytecode/Type;
    :goto_19
    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    goto :goto_7

    .line 1548
    .end local v1    # "type":Lgnu/bytecode/Type;
    :pswitch_1e
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1549
    sget-object v1, Lgnu/kawa/xml/NodeType;->commentNodeTest:Lgnu/kawa/xml/NodeType;

    .line 1550
    .restart local v1    # "type":Lgnu/bytecode/Type;
    goto :goto_19

    .line 1553
    .end local v1    # "type":Lgnu/bytecode/Type;
    :pswitch_24
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1554
    sget-object v1, Lgnu/kawa/xml/NodeType;->documentNodeTest:Lgnu/kawa/xml/NodeType;

    .line 1555
    .restart local v1    # "type":Lgnu/bytecode/Type;
    goto :goto_19

    .line 1558
    .end local v1    # "type":Lgnu/bytecode/Type;
    :pswitch_2a
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1559
    sget-object v1, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    .line 1560
    .restart local v1    # "type":Lgnu/bytecode/Type;
    goto :goto_19

    .line 1563
    .end local v1    # "type":Lgnu/bytecode/Type;
    :pswitch_30
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1564
    const/4 v0, 0x0

    .line 1565
    .local v0, "piTarget":Ljava/lang/String;
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x41

    if-eq v3, v4, :cond_40

    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x22

    if-ne v3, v4, :cond_4c

    .line 1567
    :cond_40
    new-instance v0, Ljava/lang/String;

    .end local v0    # "piTarget":Ljava/lang/String;
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v3, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 1568
    .restart local v0    # "piTarget":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1570
    :cond_4c
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x29

    if-ne v2, v3, :cond_5a

    .line 1571
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1574
    :goto_55
    invoke-static {v0}, Lgnu/kawa/xml/ProcessingInstructionType;->getInstance(Ljava/lang/String;)Lgnu/kawa/xml/ProcessingInstructionType;

    move-result-object v1

    .line 1575
    .restart local v1    # "type":Lgnu/bytecode/Type;
    goto :goto_19

    .line 1573
    .end local v1    # "type":Lgnu/bytecode/Type;
    :cond_5a
    const-string v2, "expected \')\'"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_55

    .line 1536
    :pswitch_data_60
    .packed-switch 0xe6
        :pswitch_2a
        :pswitch_14
        :pswitch_1e
        :pswitch_30
        :pswitch_24
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method parseMaybePrimaryExpr()Lgnu/expr/Expression;
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2867
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curLine:I

    move/from16 v23, v0

    .line 2868
    .local v23, "startLine":I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curColumn:I

    move/from16 v22, v0

    .line 2869
    .local v22, "startColumn":I
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    move-result v26

    .line 2874
    .local v26, "token":I
    sparse-switch v26, :sswitch_data_5e2

    .line 3117
    const/4 v9, 0x0

    .line 3129
    :cond_14
    :goto_14
    return-object v9

    .line 2877
    :sswitch_15
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseParenExpr()Lgnu/expr/Expression;

    move-result-object v9

    .line 3128
    .local v9, "exp":Lgnu/expr/Expression;
    :cond_19
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_14

    .line 2881
    .end local v9    # "exp":Lgnu/expr/Expression;
    :sswitch_1d
    new-instance v10, Ljava/util/Stack;

    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    .line 2884
    .local v10, "extArgs":Ljava/util/Stack;
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2886
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x51

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_a1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x41

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_a1

    .line 2887
    const-string v29, "missing pragma name"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v16

    .line 2890
    .local v16, "qname":Lgnu/expr/Expression;
    :goto_4b
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2891
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 2893
    .local v20, "sbuf":Ljava/lang/StringBuffer;
    const/16 v21, -0x1

    .line 2894
    .local v21, "spaces":I
    :cond_57
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    .local v6, "ch":I
    add-int/lit8 v21, v21, 0x1

    .line 2895
    if-ltz v6, :cond_68

    int-to-char v0, v6

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v29

    if-nez v29, :cond_57

    .line 2896
    :cond_68
    :goto_68
    const/16 v29, 0x23

    move/from16 v0, v29

    if-ne v6, v0, :cond_7a

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v29

    const/16 v30, 0x29

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_b9

    .line 2898
    :cond_7a
    if-gez v6, :cond_85

    .line 2899
    const-string v29, "pragma ended by end-of-file"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 2900
    :cond_85
    if-nez v21, :cond_90

    .line 2901
    const-string v29, "missing space between pragma and extension content"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 2902
    :cond_90
    const/16 v21, 0x1

    .line 2903
    int-to-char v0, v6

    move/from16 v29, v0

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2904
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    goto :goto_68

    .line 2889
    .end local v6    # "ch":I
    .end local v16    # "qname":Lgnu/expr/Expression;
    .end local v20    # "sbuf":Ljava/lang/StringBuffer;
    .end local v21    # "spaces":I
    :cond_a1
    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v32, v0

    invoke-direct/range {v29 .. v32}, Ljava/lang/String;-><init>([CII)V

    invoke-static/range {v29 .. v29}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v16

    .restart local v16    # "qname":Lgnu/expr/Expression;
    goto :goto_4b

    .line 2906
    .restart local v6    # "ch":I
    .restart local v20    # "sbuf":Ljava/lang/StringBuffer;
    .restart local v21    # "spaces":I
    :cond_b9
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    .line 2907
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2908
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2909
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0xc5

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_22

    .line 2912
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x7b

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_14f

    .line 2914
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2915
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x7d

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_134

    .line 2917
    const/16 v29, 0x7b

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v19

    .line 2918
    .local v19, "saveReadState":C
    const/16 v29, 0x7d

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2919
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2920
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_134

    .line 2921
    const-string v29, "missing \'}\' - unexpected end-of-file"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 2923
    .end local v19    # "saveReadState":C
    :cond_134
    invoke-virtual {v10}, Ljava/util/Stack;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v5, v0, [Lgnu/expr/Expression;

    .line 2924
    .local v5, "args":[Lgnu/expr/Expression;
    invoke-virtual {v10, v5}, Ljava/util/Stack;->copyInto([Ljava/lang/Object;)V

    .line 2925
    new-instance v9, Lgnu/expr/ApplyExp;

    new-instance v29, Lgnu/expr/ReferenceExp;

    sget-object v30, Lgnu/xquery/lang/XQResolveNames;->handleExtensionDecl:Lgnu/expr/Declaration;

    invoke-direct/range {v29 .. v30}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v0, v29

    invoke-direct {v9, v0, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .restart local v9    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_19

    .line 2928
    .end local v5    # "args":[Lgnu/expr/Expression;
    .end local v9    # "exp":Lgnu/expr/Expression;
    :cond_14f
    const-string v29, "missing \'{\' after pragma"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    .line 2929
    .restart local v9    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_19

    .line 2932
    .end local v6    # "ch":I
    .end local v9    # "exp":Lgnu/expr/Expression;
    .end local v10    # "extArgs":Ljava/util/Stack;
    .end local v16    # "qname":Lgnu/expr/Expression;
    .end local v20    # "sbuf":Ljava/lang/StringBuffer;
    .end local v21    # "spaces":I
    :sswitch_15b
    const-string v29, "saw unexpected \'{\' - assume you meant \'(\'"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    .line 2933
    .restart local v9    # "exp":Lgnu/expr/Expression;
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    goto/16 :goto_19

    .line 2937
    .end local v9    # "exp":Lgnu/expr/Expression;
    :sswitch_16a
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v15

    .line 2938
    .local v15, "next":I
    const/16 v29, 0x2f

    move/from16 v0, v29

    if-ne v15, v0, :cond_210

    .line 2940
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2942
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x41

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1a1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x51

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1a1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x43

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_20d

    .line 2944
    :cond_1a1
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "saw end tag \'</"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v33, v0

    invoke-direct/range {v30 .. v33}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">\' not in an element constructor"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2947
    .local v13, "msg":Ljava/lang/String;
    :goto_1cd
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 2948
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 2949
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    .line 2950
    .restart local v9    # "exp":Lgnu/expr/Expression;
    :goto_1df
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x195

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0xa

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_14

    .line 2951
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_1df

    .line 2946
    .end local v9    # "exp":Lgnu/expr/Expression;
    .end local v13    # "msg":Ljava/lang/String;
    :cond_20d
    const-string v13, "saw end tag \'</\' not in an element constructor"

    .restart local v13    # "msg":Ljava/lang/String;
    goto :goto_1cd

    .line 2956
    .end local v13    # "msg":Ljava/lang/String;
    :cond_210
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v15, v1}, Lgnu/xquery/lang/XQParser;->parseXMLConstructor(IZ)Lgnu/expr/Expression;

    move-result-object v9

    .line 2957
    .restart local v9    # "exp":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v9, v1, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    goto/16 :goto_19

    .line 2962
    .end local v9    # "exp":Lgnu/expr/Expression;
    .end local v15    # "next":I
    :sswitch_225
    new-instance v9, Lgnu/expr/QuoteExp;

    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v32, v0

    invoke-direct/range {v29 .. v32}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v9, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 2963
    .restart local v9    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_19

    .line 2966
    .end local v9    # "exp":Lgnu/expr/Expression;
    :sswitch_245
    new-instance v9, Lgnu/expr/QuoteExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v31, v0

    const/16 v32, 0xa

    const/16 v33, 0x0

    invoke-static/range {v29 .. v33}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v9, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 2968
    .restart local v9    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_19

    .line 2972
    .end local v9    # "exp":Lgnu/expr/Expression;
    :sswitch_264
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 2976
    .local v24, "str":Ljava/lang/String;
    const/16 v29, 0x31

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_299

    .line 2977
    :try_start_287
    new-instance v27, Ljava/math/BigDecimal;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2980
    :goto_290
    new-instance v9, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v27

    invoke-direct {v9, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .restart local v9    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_19

    .line 2979
    .end local v9    # "exp":Lgnu/expr/Expression;
    :cond_299
    new-instance v27, Ljava/lang/Double;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_2a2
    .catch Ljava/lang/Throwable; {:try_start_287 .. :try_end_2a2} :catch_2a3

    .local v27, "val":Ljava/lang/Double;
    goto :goto_290

    .line 2982
    .end local v27    # "val":Ljava/lang/Double;
    :catch_2a3
    move-exception v8

    .line 2984
    .local v8, "ex":Ljava/lang/Throwable;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "invalid decimal literal: \'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    .line 2986
    .restart local v9    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_19

    .line 2988
    .end local v8    # "ex":Ljava/lang/Throwable;
    .end local v9    # "exp":Lgnu/expr/Expression;
    .end local v24    # "str":Ljava/lang/String;
    :sswitch_2cb
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseVariable()Ljava/lang/Object;

    move-result-object v14

    .line 2989
    .local v14, "name":Ljava/lang/Object;
    if-nez v14, :cond_2dd

    .line 2990
    const-string v29, "missing Variable"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    goto/16 :goto_14

    .line 2991
    :cond_2dd
    new-instance v9, Lgnu/expr/ReferenceExp;

    invoke-direct {v9, v14}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 2992
    .restart local v9    # "exp":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curLine:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curColumn:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v9, v1, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    goto/16 :goto_19

    .line 2995
    .end local v9    # "exp":Lgnu/expr/Expression;
    .end local v14    # "name":Ljava/lang/Object;
    :sswitch_2f9
    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v14, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 2996
    .local v14, "name":Ljava/lang/String;
    const/16 v29, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v18

    .line 2997
    .local v18, "save":C
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2998
    new-instance v28, Ljava/util/Vector;

    const/16 v29, 0xa

    invoke-direct/range {v28 .. v29}, Ljava/util/Vector;-><init>(I)V

    .line 2999
    .local v28, "vec":Ljava/util/Vector;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x29

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_34b

    .line 3003
    :goto_334
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v4

    .line 3004
    .local v4, "arg":Lgnu/expr/Expression;
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3005
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x29

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_385

    .line 3012
    .end local v4    # "arg":Lgnu/expr/Expression;
    :cond_34b
    invoke-virtual/range {v28 .. v28}, Ljava/util/Vector;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v5, v0, [Lgnu/expr/Expression;

    .line 3014
    .restart local v5    # "args":[Lgnu/expr/Expression;
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 3015
    new-instance v17, Lgnu/expr/ReferenceExp;

    const/16 v29, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-direct {v0, v14, v1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 3016
    .local v17, "rexp":Lgnu/expr/ReferenceExp;
    const/16 v29, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->setProcedureName(Z)V

    .line 3017
    new-instance v9, Lgnu/expr/ApplyExp;

    move-object/from16 v0, v17

    invoke-direct {v9, v0, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 3018
    .restart local v9    # "exp":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v9, v1, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3019
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    goto/16 :goto_19

    .line 3007
    .end local v5    # "args":[Lgnu/expr/Expression;
    .end local v9    # "exp":Lgnu/expr/Expression;
    .end local v17    # "rexp":Lgnu/expr/ReferenceExp;
    .restart local v4    # "arg":Lgnu/expr/Expression;
    :cond_385
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x2c

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_39f

    .line 3008
    const-string v29, "missing \')\' after function call"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    goto/16 :goto_14

    .line 3009
    :cond_39f
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_334

    .line 3028
    .end local v4    # "arg":Lgnu/expr/Expression;
    .end local v14    # "name":Ljava/lang/String;
    .end local v18    # "save":C
    .end local v28    # "vec":Ljava/util/Vector;
    :sswitch_3a3
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3029
    new-instance v28, Ljava/util/Vector;

    invoke-direct/range {v28 .. v28}, Ljava/util/Vector;-><init>()V

    .line 3032
    .restart local v28    # "vec":Ljava/util/Vector;
    const/16 v29, 0xfb

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_3bb

    const/16 v29, 0xfc

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_470

    .line 3035
    :cond_3bb
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x41

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_3d7

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x51

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_44b

    .line 3036
    :cond_3d7
    const/16 v29, 0xfb

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_448

    const/16 v29, 0x1

    :goto_3e1
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->parseNameTest(Z)Lgnu/expr/Expression;

    move-result-object v7

    .line 3041
    .local v7, "element":Lgnu/expr/Expression;
    :goto_3e9
    const/16 v29, 0xfb

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_46a

    const/16 v29, 0x1

    :goto_3f3
    move/from16 v0, v29

    invoke-static {v7, v0}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3042
    const/16 v29, 0xfb

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_46d

    .line 3044
    new-instance v12, Lgnu/kawa/xml/MakeElement;

    invoke-direct {v12}, Lgnu/kawa/xml/MakeElement;-><init>()V

    .line 3045
    .local v12, "mk":Lgnu/kawa/xml/MakeElement;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v12, Lgnu/kawa/xml/MakeElement;->copyNamespacesMode:I

    .line 3046
    new-instance v11, Lgnu/expr/QuoteExp;

    invoke-direct {v11, v12}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 3050
    .end local v12    # "mk":Lgnu/kawa/xml/MakeElement;
    .local v11, "func":Lgnu/expr/Expression;
    :goto_418
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3082
    .end local v7    # "element":Lgnu/expr/Expression;
    :goto_41b
    const/16 v29, 0x7b

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v19

    .line 3083
    .restart local v19    # "saveReadState":C
    const-string v29, "unexpected end-of-file after \'{\'"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    .line 3084
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x7b

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_515

    .line 3085
    const-string v29, "missing \'{\'"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    goto/16 :goto_14

    .line 3036
    .end local v11    # "func":Lgnu/expr/Expression;
    .end local v19    # "saveReadState":C
    :cond_448
    const/16 v29, 0x0

    goto :goto_3e1

    .line 3037
    :cond_44b
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x7b

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_45e

    .line 3038
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v7

    .restart local v7    # "element":Lgnu/expr/Expression;
    goto :goto_3e9

    .line 3040
    .end local v7    # "element":Lgnu/expr/Expression;
    :cond_45e
    const-string v29, "missing element/attribute name"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    goto/16 :goto_14

    .line 3041
    .restart local v7    # "element":Lgnu/expr/Expression;
    :cond_46a
    const/16 v29, 0x0

    goto :goto_3f3

    .line 3049
    :cond_46d
    sget-object v11, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    .restart local v11    # "func":Lgnu/expr/Expression;
    goto :goto_418

    .line 3052
    .end local v7    # "element":Lgnu/expr/Expression;
    .end local v11    # "func":Lgnu/expr/Expression;
    :cond_470
    const/16 v29, 0x100

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_481

    .line 3053
    const-string v29, "gnu.kawa.xml.DocumentConstructor"

    const-string v30, "documentConstructor"

    invoke-static/range {v29 .. v30}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    .restart local v11    # "func":Lgnu/expr/Expression;
    goto :goto_41b

    .line 3055
    .end local v11    # "func":Lgnu/expr/Expression;
    :cond_481
    const/16 v29, 0xfe

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_492

    .line 3056
    const-string v29, "gnu.kawa.xml.CommentConstructor"

    const-string v30, "commentConstructor"

    invoke-static/range {v29 .. v30}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    .restart local v11    # "func":Lgnu/expr/Expression;
    goto :goto_41b

    .line 3058
    .end local v11    # "func":Lgnu/expr/Expression;
    :cond_492
    const/16 v29, 0xff

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_50b

    .line 3061
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x41

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4dc

    .line 3062
    new-instance v25, Lgnu/expr/QuoteExp;

    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v32, v0

    invoke-direct/range {v29 .. v32}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 3074
    .local v25, "target":Lgnu/expr/Expression;
    :cond_4c8
    :goto_4c8
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3075
    const-string v29, "gnu.kawa.xml.MakeProcInst"

    const-string v30, "makeProcInst"

    invoke-static/range {v29 .. v30}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    .line 3077
    .restart local v11    # "func":Lgnu/expr/Expression;
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto/16 :goto_41b

    .line 3064
    .end local v11    # "func":Lgnu/expr/Expression;
    .end local v25    # "target":Lgnu/expr/Expression;
    :cond_4dc
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x7b

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4ef

    .line 3066
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v25

    .restart local v25    # "target":Lgnu/expr/Expression;
    goto :goto_4c8

    .line 3070
    .end local v25    # "target":Lgnu/expr/Expression;
    :cond_4ef
    const-string v29, "expected NCName or \'{\' after \'processing-instruction\'"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    .line 3071
    .restart local v25    # "target":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x51

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_4c8

    move-object/from16 v9, v25

    .line 3072
    goto/16 :goto_14

    .line 3080
    .end local v25    # "target":Lgnu/expr/Expression;
    :cond_50b
    const-string v29, "gnu.kawa.xml.MakeText"

    const-string v30, "makeText"

    invoke-static/range {v29 .. v30}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    .restart local v11    # "func":Lgnu/expr/Expression;
    goto/16 :goto_41b

    .line 3086
    .restart local v19    # "saveReadState":C
    :cond_515
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3087
    const/16 v29, 0xfd

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_530

    const/16 v29, 0xfe

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_530

    const/16 v29, 0xff

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_56d

    .line 3089
    :cond_530
    const/16 v30, 0x7d

    const/16 v29, 0xff

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_56a

    const/16 v29, 0x1

    :goto_53c
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3099
    :cond_549
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3100
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x7d

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_59b

    .line 3101
    const-string v29, "missing \'}\'"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    goto/16 :goto_14

    .line 3089
    :cond_56a
    const/16 v29, 0x0

    goto :goto_53c

    .line 3090
    :cond_56d
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x7d

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_549

    .line 3092
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3093
    :goto_582
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    move/from16 v29, v0

    const/16 v30, 0x2c

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_549

    .line 3095
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3096
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_582

    .line 3102
    :cond_59b
    invoke-virtual/range {v28 .. v28}, Ljava/util/Vector;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v5, v0, [Lgnu/expr/Expression;

    .line 3103
    .restart local v5    # "args":[Lgnu/expr/Expression;
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 3104
    new-instance v9, Lgnu/expr/ApplyExp;

    invoke-direct {v9, v11, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 3105
    .restart local v9    # "exp":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v9, v1, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3106
    const/16 v29, 0x100

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_5c6

    const/16 v29, 0xfb

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_19

    .line 3107
    :cond_5c6
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lgnu/xquery/lang/XQParser;->wrapWithBaseUri(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v9

    goto/16 :goto_19

    .line 3112
    .end local v5    # "args":[Lgnu/expr/Expression;
    .end local v9    # "exp":Lgnu/expr/Expression;
    .end local v11    # "func":Lgnu/expr/Expression;
    .end local v19    # "saveReadState":C
    .end local v28    # "vec":Ljava/util/Vector;
    :sswitch_5ce
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3113
    const/16 v29, 0x7d

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v9

    .line 3114
    .restart local v9    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_19

    .line 2874
    nop

    :sswitch_data_5e2
    .sparse-switch
        0x22 -> :sswitch_225
        0x24 -> :sswitch_2cb
        0x28 -> :sswitch_15
        0x30 -> :sswitch_245
        0x31 -> :sswitch_264
        0x32 -> :sswitch_264
        0x46 -> :sswitch_2f9
        0x7b -> :sswitch_15b
        0xc5 -> :sswitch_1d
        0xf9 -> :sswitch_5ce
        0xfa -> :sswitch_5ce
        0xfb -> :sswitch_3a3
        0xfc -> :sswitch_3a3
        0xfd -> :sswitch_3a3
        0xfe -> :sswitch_3a3
        0xff -> :sswitch_3a3
        0x100 -> :sswitch_3a3
        0x194 -> :sswitch_16a
    .end sparse-switch
.end method

.method parseNameTest(Z)Lgnu/expr/Expression;
    .registers 15
    .param p1, "attribute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3a

    const/16 v8, 0x2a

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1828
    const/4 v2, 0x0

    .local v2, "local":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1829
    .local v5, "prefix":Ljava/lang/String;
    iget v6, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x51

    if-ne v6, v7, :cond_6f

    .line 1831
    iget v1, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 1832
    .local v1, "colon":I
    :cond_11
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    add-int/lit8 v1, v1, -0x1

    aget-char v6, v6, v1

    if-ne v6, v9, :cond_11

    .line 1833
    new-instance v5, Ljava/lang/String;

    .end local v5    # "prefix":Ljava/lang/String;
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    invoke-direct {v5, v6, v10, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1834
    .restart local v5    # "prefix":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 1835
    new-instance v2, Ljava/lang/String;

    .end local v2    # "local":Ljava/lang/String;
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v7, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    sub-int/2addr v7, v1

    invoke-direct {v2, v6, v1, v7}, Ljava/lang/String;-><init>([CII)V

    .line 1879
    .end local v1    # "colon":I
    .restart local v2    # "local":Ljava/lang/String;
    :cond_2c
    :goto_2c
    if-eqz v5, :cond_32

    .line 1880
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 1881
    :cond_32
    new-array v0, v12, [Lgnu/expr/Expression;

    .line 1882
    .local v0, "args":[Lgnu/expr/Expression;
    new-instance v6, Lgnu/expr/ApplyExp;

    new-instance v7, Lgnu/expr/ReferenceExp;

    sget-object v8, Lgnu/xquery/lang/XQResolveNames;->resolvePrefixDecl:Lgnu/expr/Declaration;

    invoke-direct {v7, v8}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    new-array v8, v11, [Lgnu/expr/Expression;

    invoke-static {v5}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-direct {v6, v7, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    aput-object v6, v0, v10

    .line 1884
    new-instance v7, Lgnu/expr/QuoteExp;

    if-nez v2, :cond_107

    const-string v6, ""

    :goto_50
    invoke-direct {v7, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v7, v0, v11

    .line 1885
    const/4 v6, 0x2

    new-instance v7, Lgnu/expr/QuoteExp;

    invoke-direct {v7, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v7, v0, v6

    .line 1886
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v6, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    const-string v7, "make"

    invoke-virtual {v6, v7, v12}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v6

    invoke-direct {v3, v6, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 1889
    .local v3, "make":Lgnu/expr/ApplyExp;
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 1890
    .end local v0    # "args":[Lgnu/expr/Expression;
    .end local v3    # "make":Lgnu/expr/ApplyExp;
    :goto_6e
    return-object v3

    .line 1838
    :cond_6f
    iget v6, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x19f

    if-ne v6, v7, :cond_c5

    .line 1840
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v4

    .line 1841
    .local v4, "next":I
    const-string v2, ""

    .line 1842
    if-eq v4, v9, :cond_8b

    .line 1843
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 1862
    :cond_80
    :goto_80
    new-instance v6, Lgnu/mapping/Symbol;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v2}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    invoke-static {v6}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    goto :goto_6e

    .line 1846
    :cond_8b
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v4

    .line 1847
    if-gez v4, :cond_96

    .line 1848
    const-string v6, "unexpected end-of-file after \'*:\'"

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 1849
    :cond_96
    int-to-char v6, v4

    invoke-static {v6}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 1851
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 1852
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1853
    iget v6, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x41

    if-eq v6, v7, :cond_af

    .line 1854
    const-string v6, "invalid name test"

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_80

    .line 1856
    :cond_af
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v8, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v6, v7, v10, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_80

    .line 1859
    :cond_bd
    if-eq v4, v8, :cond_80

    .line 1860
    const-string v6, "missing local-name after \'*:\'"

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_80

    .line 1864
    .end local v4    # "next":I
    :cond_c5
    iget v6, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x41

    if-ne v6, v7, :cond_e9

    .line 1866
    new-instance v2, Ljava/lang/String;

    .end local v2    # "local":Ljava/lang/String;
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v7, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v2, v6, v10, v7}, Ljava/lang/String;-><init>([CII)V

    .line 1867
    .restart local v2    # "local":Ljava/lang/String;
    if-eqz p1, :cond_e6

    .line 1868
    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v6, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v6

    invoke-direct {v3, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_6e

    .line 1869
    :cond_e6
    const/4 v5, 0x0

    goto/16 :goto_2c

    .line 1871
    :cond_e9
    iget v6, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x43

    if-ne v6, v7, :cond_2c

    .line 1873
    new-instance v5, Ljava/lang/String;

    .end local v5    # "prefix":Ljava/lang/String;
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v7, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v5, v6, v10, v7}, Ljava/lang/String;-><init>([CII)V

    .line 1874
    .restart local v5    # "prefix":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v4

    .line 1875
    .restart local v4    # "next":I
    if-eq v4, v8, :cond_103

    .line 1876
    const-string v6, "invalid characters after \'NCName:\'"

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 1877
    :cond_103
    const-string v2, ""

    goto/16 :goto_2c

    .end local v4    # "next":I
    .restart local v0    # "args":[Lgnu/expr/Expression;
    :cond_107
    move-object v6, v2

    .line 1884
    goto/16 :goto_50
.end method

.method public parseNamedNodeType(Z)Lgnu/expr/Expression;
    .registers 9
    .param p1, "attribute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x51

    const/16 v5, 0x41

    const/16 v4, 0x29

    .line 1394
    const/4 v1, 0x0

    .line 1395
    .local v1, "tname":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1396
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v2, v4, :cond_1c

    .line 1398
    sget-object v2, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    .line 1399
    .local v0, "qname":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1428
    :goto_17
    invoke-static {p1, v0, v1}, Lgnu/xquery/lang/XQParser;->makeNamedNodeType(ZLgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 1403
    .end local v0    # "qname":Lgnu/expr/Expression;
    :cond_1c
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v2, v6, :cond_24

    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v2, v5, :cond_48

    .line 1404
    :cond_24
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->parseNameTest(Z)Lgnu/expr/Expression;

    move-result-object v0

    .line 1412
    .restart local v0    # "qname":Lgnu/expr/Expression;
    :goto_28
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1413
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_40

    .line 1415
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1416
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v2, v6, :cond_3c

    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v2, v5, :cond_5a

    .line 1418
    :cond_3c
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v1

    .line 1423
    :cond_40
    :goto_40
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v2, v4, :cond_60

    .line 1424
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_17

    .line 1407
    .end local v0    # "qname":Lgnu/expr/Expression;
    :cond_48
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x19f

    if-eq v2, v3, :cond_53

    .line 1408
    const-string v2, "expected QName or *"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 1409
    :cond_53
    sget-object v2, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    .restart local v0    # "qname":Lgnu/expr/Expression;
    goto :goto_28

    .line 1421
    :cond_5a
    const-string v2, "expected QName"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_40

    .line 1426
    :cond_60
    const-string v2, "expected \')\' after element"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_17
.end method

.method parseNodeTest(I)Lgnu/expr/Expression;
    .registers 14
    .param p1, "axis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1896
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    move-result v7

    .line 1897
    .local v7, "token":I
    const/4 v8, 0x1

    new-array v0, v8, [Lgnu/expr/Expression;

    .line 1899
    .local v0, "args":[Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseMaybeKindTest()Lgnu/expr/Expression;

    move-result-object v4

    .line 1901
    .local v4, "etype":Lgnu/expr/Expression;
    if-eqz v4, :cond_47

    .line 1903
    const/4 v8, 0x0

    aput-object v4, v0, v8

    .line 1917
    :goto_10
    iget-object v8, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    iget-object v8, v8, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    sget-object v9, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v3

    .line 1919
    .local v3, "dotDecl":Lgnu/expr/Declaration;
    if-nez v3, :cond_a0

    .line 1920
    const-string v8, "node test when context item is undefined"

    const-string v9, "XPDY0002"

    invoke-virtual {p0, v8, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    .line 1923
    .local v2, "dot":Lgnu/expr/Expression;
    :goto_25
    if-nez v4, :cond_2a

    .line 1924
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1927
    :cond_2a
    const/4 v8, 0x3

    if-eq p1, v8, :cond_30

    const/4 v8, -0x1

    if-ne p1, v8, :cond_a9

    .line 1928
    :cond_30
    sget-object v5, Lgnu/xquery/lang/XQParser;->makeChildAxisStep:Lgnu/expr/QuoteExp;

    .line 1953
    .local v5, "makeAxisStep":Lgnu/expr/Expression;
    :goto_32
    new-instance v6, Lgnu/expr/ApplyExp;

    invoke-direct {v6, v5, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 1954
    .local v6, "mkAxis":Lgnu/expr/ApplyExp;
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 1955
    new-instance v8, Lgnu/expr/ApplyExp;

    const/4 v9, 0x1

    new-array v9, v9, [Lgnu/expr/Expression;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-direct {v8, v6, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .end local v2    # "dot":Lgnu/expr/Expression;
    .end local v3    # "dotDecl":Lgnu/expr/Declaration;
    .end local v5    # "makeAxisStep":Lgnu/expr/Expression;
    .end local v6    # "mkAxis":Lgnu/expr/ApplyExp;
    :goto_46
    return-object v8

    .line 1905
    :cond_47
    iget v8, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x41

    if-eq v8, v9, :cond_5f

    iget v8, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x51

    if-eq v8, v9, :cond_5f

    iget v8, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x43

    if-eq v8, v9, :cond_5f

    iget v8, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x19f

    if-ne v8, v9, :cond_7a

    .line 1908
    :cond_5f
    const/4 v10, 0x0

    const/4 v8, 0x2

    if-ne p1, v8, :cond_75

    const/4 v8, 0x1

    move v9, v8

    :goto_65
    const/4 v8, 0x2

    if-ne p1, v8, :cond_78

    const/4 v8, 0x1

    :goto_69
    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->parseNameTest(Z)Lgnu/expr/Expression;

    move-result-object v8

    const/4 v11, 0x0

    invoke-static {v9, v8, v11}, Lgnu/xquery/lang/XQParser;->makeNamedNodeType(ZLgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v8

    aput-object v8, v0, v10

    goto :goto_10

    :cond_75
    const/4 v8, 0x0

    move v9, v8

    goto :goto_65

    :cond_78
    const/4 v8, 0x0

    goto :goto_69

    .line 1912
    :cond_7a
    if-ltz p1, :cond_9e

    .line 1913
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unsupported axis \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    aget-object v9, v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "::\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v8

    goto :goto_46

    .line 1915
    :cond_9e
    const/4 v8, 0x0

    goto :goto_46

    .line 1922
    .restart local v3    # "dotDecl":Lgnu/expr/Declaration;
    :cond_a0
    new-instance v2, Lgnu/expr/ReferenceExp;

    sget-object v8, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-direct {v2, v8, v3}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .restart local v2    # "dot":Lgnu/expr/Expression;
    goto/16 :goto_25

    .line 1929
    :cond_a9
    const/4 v8, 0x4

    if-ne p1, v8, :cond_af

    .line 1930
    sget-object v5, Lgnu/xquery/lang/XQParser;->makeDescendantAxisStep:Lgnu/expr/QuoteExp;

    .restart local v5    # "makeAxisStep":Lgnu/expr/Expression;
    goto :goto_32

    .line 1934
    .end local v5    # "makeAxisStep":Lgnu/expr/Expression;
    :cond_af
    packed-switch p1, :pswitch_data_fc

    .line 1946
    :pswitch_b2
    new-instance v8, Ljava/lang/Error;

    invoke-direct {v8}, Ljava/lang/Error;-><init>()V

    throw v8

    .line 1936
    :pswitch_b8
    const-string v1, "DescendantOrSelf"

    .line 1948
    .local v1, "axisName":Ljava/lang/String;
    :goto_ba
    new-instance v8, Lgnu/expr/PrimProcedure;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gnu.kawa.xml."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Axis"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "make"

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v8}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v5

    .restart local v5    # "makeAxisStep":Lgnu/expr/Expression;
    goto/16 :goto_32

    .line 1937
    .end local v1    # "axisName":Ljava/lang/String;
    .end local v5    # "makeAxisStep":Lgnu/expr/Expression;
    :pswitch_e1
    const-string v1, "Self"

    .restart local v1    # "axisName":Ljava/lang/String;
    goto :goto_ba

    .line 1938
    .end local v1    # "axisName":Ljava/lang/String;
    :pswitch_e4
    const-string v1, "Parent"

    .restart local v1    # "axisName":Ljava/lang/String;
    goto :goto_ba

    .line 1939
    .end local v1    # "axisName":Ljava/lang/String;
    :pswitch_e7
    const-string v1, "Ancestor"

    .restart local v1    # "axisName":Ljava/lang/String;
    goto :goto_ba

    .line 1940
    .end local v1    # "axisName":Ljava/lang/String;
    :pswitch_ea
    const-string v1, "AncestorOrSelf"

    .restart local v1    # "axisName":Ljava/lang/String;
    goto :goto_ba

    .line 1941
    .end local v1    # "axisName":Ljava/lang/String;
    :pswitch_ed
    const-string v1, "Following"

    .restart local v1    # "axisName":Ljava/lang/String;
    goto :goto_ba

    .line 1942
    .end local v1    # "axisName":Ljava/lang/String;
    :pswitch_f0
    const-string v1, "FollowingSibling"

    .restart local v1    # "axisName":Ljava/lang/String;
    goto :goto_ba

    .line 1943
    .end local v1    # "axisName":Ljava/lang/String;
    :pswitch_f3
    const-string v1, "Preceding"

    .restart local v1    # "axisName":Ljava/lang/String;
    goto :goto_ba

    .line 1944
    .end local v1    # "axisName":Ljava/lang/String;
    :pswitch_f6
    const-string v1, "PrecedingSibling"

    .restart local v1    # "axisName":Ljava/lang/String;
    goto :goto_ba

    .line 1945
    .end local v1    # "axisName":Ljava/lang/String;
    :pswitch_f9
    const-string v1, "Attribute"

    .restart local v1    # "axisName":Ljava/lang/String;
    goto :goto_ba

    .line 1934
    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_e7
        :pswitch_ea
        :pswitch_f9
        :pswitch_b2
        :pswitch_b2
        :pswitch_b8
        :pswitch_ed
        :pswitch_f0
        :pswitch_b2
        :pswitch_e4
        :pswitch_f3
        :pswitch_f6
        :pswitch_e1
    .end packed-switch
.end method

.method public parseOptionalTypeDeclaration()Lgnu/expr/Expression;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1463
    const-string v0, "as"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1464
    const/4 v0, 0x0

    .line 1466
    :goto_9
    return-object v0

    .line 1465
    :cond_a
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1466
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_9
.end method

.method parseParenExpr()Lgnu/expr/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2740
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2741
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v1

    .line 2742
    .local v1, "saveReadState":C
    const/16 v2, 0x29

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v0

    .line 2743
    .local v0, "exp":Lgnu/expr/Expression;
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2744
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1d

    .line 2745
    const-string v2, "missing \')\' - unexpected end-of-file"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 2746
    :cond_1d
    return-object v0
.end method

.method parsePathExpr()Lgnu/expr/Expression;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1798
    iget v6, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_e

    iget v6, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x44

    if-ne v6, v7, :cond_5b

    .line 1800
    :cond_e
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    iget-object v6, v6, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    sget-object v7, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {v6, v7, v5}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v1

    .line 1802
    .local v1, "dotDecl":Lgnu/expr/Declaration;
    if-nez v1, :cond_51

    .line 1803
    const-string v6, "context item is undefined"

    const-string v7, "XPDY0002"

    invoke-virtual {p0, v6, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1806
    .local v0, "dot":Lgnu/expr/Expression;
    :goto_22
    new-instance v3, Lgnu/expr/ApplyExp;

    const-string v6, "gnu.xquery.util.NodeUtils"

    invoke-static {v6}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    const-string v7, "rootDocument"

    invoke-virtual {v6, v7, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v6

    new-array v7, v4, [Lgnu/expr/Expression;

    aput-object v0, v7, v5

    invoke-direct {v3, v6, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 1809
    .local v3, "step1":Lgnu/expr/Expression;
    iget v6, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz v6, :cond_59

    :goto_3b
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v2

    .line 1810
    .local v2, "next":I
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 1811
    if-ltz v2, :cond_4c

    const/16 v4, 0x29

    if-eq v2, v4, :cond_4c

    const/16 v4, 0x7d

    if-ne v2, v4, :cond_5f

    .line 1813
    :cond_4c
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-object v4, v3

    .line 1819
    .end local v0    # "dot":Lgnu/expr/Expression;
    .end local v1    # "dotDecl":Lgnu/expr/Declaration;
    .end local v2    # "next":I
    :goto_50
    return-object v4

    .line 1805
    .end local v3    # "step1":Lgnu/expr/Expression;
    .restart local v1    # "dotDecl":Lgnu/expr/Declaration;
    :cond_51
    new-instance v0, Lgnu/expr/ReferenceExp;

    sget-object v6, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-direct {v0, v6, v1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .restart local v0    # "dot":Lgnu/expr/Expression;
    goto :goto_22

    .restart local v3    # "step1":Lgnu/expr/Expression;
    :cond_59
    move v4, v5

    .line 1809
    goto :goto_3b

    .line 1818
    .end local v0    # "dot":Lgnu/expr/Expression;
    .end local v1    # "dotDecl":Lgnu/expr/Declaration;
    .end local v3    # "step1":Lgnu/expr/Expression;
    :cond_5b
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseStepExpr()Lgnu/expr/Expression;

    move-result-object v3

    .line 1819
    .restart local v3    # "step1":Lgnu/expr/Expression;
    :cond_5f
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->parseRelativePathExpr(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_50
.end method

.method parsePrimaryExpr()Lgnu/expr/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2183
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseMaybePrimaryExpr()Lgnu/expr/Expression;

    move-result-object v0

    .line 2184
    .local v0, "exp":Lgnu/expr/Expression;
    if-nez v0, :cond_16

    .line 2186
    const-string v2, "missing expression"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 2187
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_14

    .line 2188
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    :cond_14
    move-object v1, v0

    .line 2191
    .end local v0    # "exp":Lgnu/expr/Expression;
    .local v1, "exp":Lgnu/expr/Expression;
    :goto_15
    return-object v1

    .end local v1    # "exp":Lgnu/expr/Expression;
    .restart local v0    # "exp":Lgnu/expr/Expression;
    :cond_16
    move-object v1, v0

    .end local v0    # "exp":Lgnu/expr/Expression;
    .restart local v1    # "exp":Lgnu/expr/Expression;
    goto :goto_15
.end method

.method public parseQuantifiedExpr(Z)Lgnu/expr/Expression;
    .registers 14
    .param p1, "isEvery"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3488
    if-eqz p1, :cond_2c

    const/16 v9, 0x65

    :goto_4
    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v7

    .line 3489
    .local v7, "saveNesting":C
    const/16 v9, 0x24

    iput v9, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 3490
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v4

    .line 3491
    .local v4, "decl":Lgnu/expr/Declaration;
    if-nez v4, :cond_2f

    .line 3492
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "missing Variable token:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    .line 3536
    :goto_2b
    return-object v9

    .line 3488
    .end local v4    # "decl":Lgnu/expr/Declaration;
    .end local v7    # "saveNesting":C
    :cond_2c
    const/16 v9, 0x73

    goto :goto_4

    .line 3493
    .restart local v4    # "decl":Lgnu/expr/Declaration;
    .restart local v7    # "saveNesting":C
    :cond_2f
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3495
    new-instance v6, Lgnu/expr/LambdaExp;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 3496
    .local v6, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {v6, v4}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3497
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3498
    const-wide/32 v10, 0x40000

    invoke-virtual {v4, v10, v11}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3499
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v9

    invoke-virtual {v4, v9}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 3501
    const-string v9, "in"

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 3502
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3509
    :goto_57
    const/4 v9, 0x1

    new-array v5, v9, [Lgnu/expr/Expression;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v10

    aput-object v10, v5, v9

    .line 3510
    .local v5, "inits":[Lgnu/expr/Expression;
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3511
    iget-object v9, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v9, v6}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3513
    iget v9, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_b7

    .line 3515
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3516
    iget v9, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x24

    if-eq v9, v10, :cond_8e

    .line 3517
    const-string v9, "missing $NAME after \',\'"

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    goto :goto_2b

    .line 3505
    .end local v5    # "inits":[Lgnu/expr/Expression;
    :cond_7f
    iget v9, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v10, 0x4c

    if-ne v9, v10, :cond_88

    .line 3506
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3507
    :cond_88
    const-string v9, "missing \'in\' in QuantifiedExpr"

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_57

    .line 3518
    .restart local v5    # "inits":[Lgnu/expr/Expression;
    :cond_8e
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->parseQuantifiedExpr(Z)Lgnu/expr/Expression;

    move-result-object v1

    .line 3533
    .local v1, "body":Lgnu/expr/Expression;
    :goto_92
    iget-object v9, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v9, v6}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3534
    iput-object v1, v6, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3535
    const/4 v9, 0x2

    new-array v0, v9, [Lgnu/expr/Expression;

    const/4 v9, 0x0

    aput-object v6, v0, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aget-object v10, v5, v10

    aput-object v10, v0, v9

    .line 3536
    .local v0, "args":[Lgnu/expr/Expression;
    new-instance v10, Lgnu/expr/ApplyExp;

    const-string v11, "gnu.xquery.util.ValuesEvery"

    if-eqz p1, :cond_f5

    const-string v9, "every"

    :goto_ad
    invoke-static {v11, v9}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    invoke-direct {v10, v9, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v9, v10

    goto/16 :goto_2b

    .line 3522
    .end local v0    # "args":[Lgnu/expr/Expression;
    .end local v1    # "body":Lgnu/expr/Expression;
    :cond_b7
    const-string v9, "satisfies"

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v8

    .line 3523
    .local v8, "sawSatisfies":Z
    if-nez v8, :cond_d7

    const-string v9, "every"

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d7

    const-string v9, "some"

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d7

    .line 3524
    const-string v9, "missing \'satisfies\' clause"

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    goto/16 :goto_2b

    .line 3525
    :cond_d7
    const-string v9, "unexpected eof-of-file after \'satisfies\'"

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    .line 3526
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v9

    add-int/lit8 v3, v9, 0x1

    .line 3527
    .local v3, "bodyLine":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v9

    add-int/lit8 v2, v9, 0x1

    .line 3528
    .local v2, "bodyColumn":I
    if-eqz v8, :cond_ed

    .line 3529
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3530
    :cond_ed
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v1

    .line 3531
    .restart local v1    # "body":Lgnu/expr/Expression;
    invoke-virtual {p0, v1, v3, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    goto :goto_92

    .line 3536
    .end local v2    # "bodyColumn":I
    .end local v3    # "bodyLine":I
    .end local v8    # "sawSatisfies":Z
    .restart local v0    # "args":[Lgnu/expr/Expression;
    :cond_f5
    const-string v9, "some"

    goto :goto_ad
.end method

.method parseRelativePathExpr(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 14
    .param p1, "exp"    # Lgnu/expr/Expression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1967
    const/4 v2, 0x0

    .line 1969
    .local v2, "beforeSlashSlash":Lgnu/expr/Expression;
    :goto_1
    iget v10, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v11, 0x2f

    if-eq v10, v11, :cond_d

    iget v10, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v11, 0x44

    if-ne v10, v11, :cond_a4

    .line 1971
    :cond_d
    iget v10, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v11, 0x44

    if-ne v10, v11, :cond_75

    const/4 v3, 0x1

    .line 1973
    .local v3, "descendants":Z
    :goto_14
    new-instance v8, Lgnu/expr/LambdaExp;

    const/4 v10, 0x3

    invoke-direct {v8, v10}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 1974
    .local v8, "lexp":Lgnu/expr/LambdaExp;
    sget-object v10, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {v8, v10}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v5

    .line 1975
    .local v5, "dotDecl":Lgnu/expr/Declaration;
    const-wide/32 v10, 0x40000

    invoke-virtual {v5, v10, v11}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1976
    sget-object v10, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v5, v10}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 1977
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1978
    sget-object v10, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    sget-object v11, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v8, v10, v11}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 1979
    sget-object v10, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    sget-object v11, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v8, v10, v11}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 1980
    iget-object v10, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v10, v8}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 1981
    if-eqz v3, :cond_77

    .line 1983
    const/16 v10, 0x2f

    iput v10, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 1984
    new-instance v4, Lgnu/expr/ReferenceExp;

    sget-object v10, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-direct {v4, v10, v5}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 1985
    .local v4, "dot":Lgnu/expr/Expression;
    const/4 v10, 0x1

    new-array v1, v10, [Lgnu/expr/Expression;

    const/4 v10, 0x0

    aput-object v4, v1, v10

    .line 1986
    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v9, Lgnu/kawa/xml/DescendantOrSelfAxis;->anyNode:Lgnu/kawa/xml/DescendantOrSelfAxis;

    .line 1987
    .local v9, "op":Lgnu/kawa/xml/TreeScanner;
    new-instance v10, Lgnu/expr/ApplyExp;

    invoke-direct {v10, v9, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    iput-object v10, v8, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1988
    move-object v2, p1

    .line 2010
    .end local v1    # "args":[Lgnu/expr/Expression;
    .end local v4    # "dot":Lgnu/expr/Expression;
    .end local v9    # "op":Lgnu/kawa/xml/TreeScanner;
    :goto_5f
    iget-object v10, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v10, v8}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2046
    const/4 v10, 0x2

    new-array v1, v10, [Lgnu/expr/Expression;

    const/4 v10, 0x0

    aput-object p1, v1, v10

    const/4 v10, 0x1

    aput-object v8, v1, v10

    .line 2047
    .restart local v1    # "args":[Lgnu/expr/Expression;
    new-instance p1, Lgnu/expr/ApplyExp;

    .end local p1    # "exp":Lgnu/expr/Expression;
    sget-object v10, Lgnu/xquery/util/RelativeStep;->relativeStep:Lgnu/xquery/util/RelativeStep;

    invoke-direct {p1, v10, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 2048
    .restart local p1    # "exp":Lgnu/expr/Expression;
    goto :goto_1

    .line 1971
    .end local v1    # "args":[Lgnu/expr/Expression;
    .end local v3    # "descendants":Z
    .end local v5    # "dotDecl":Lgnu/expr/Declaration;
    .end local v8    # "lexp":Lgnu/expr/LambdaExp;
    :cond_75
    const/4 v3, 0x0

    goto :goto_14

    .line 1992
    .restart local v3    # "descendants":Z
    .restart local v5    # "dotDecl":Lgnu/expr/Declaration;
    .restart local v8    # "lexp":Lgnu/expr/LambdaExp;
    :cond_77
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1993
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseStepExpr()Lgnu/expr/Expression;

    move-result-object v6

    .line 1998
    .local v6, "exp2":Lgnu/expr/Expression;
    if-eqz v2, :cond_a0

    instance-of v10, v6, Lgnu/expr/ApplyExp;

    if-eqz v10, :cond_a0

    move-object v10, v6

    check-cast v10, Lgnu/expr/ApplyExp;

    invoke-virtual {v10}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v7

    .local v7, "func":Lgnu/expr/Expression;
    instance-of v10, v7, Lgnu/expr/ApplyExp;

    if-eqz v10, :cond_a0

    move-object v0, v7

    check-cast v0, Lgnu/expr/ApplyExp;

    .local v0, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v10

    sget-object v11, Lgnu/xquery/lang/XQParser;->makeChildAxisStep:Lgnu/expr/QuoteExp;

    if-ne v10, v11, :cond_a0

    .line 2003
    sget-object v10, Lgnu/xquery/lang/XQParser;->makeDescendantAxisStep:Lgnu/expr/QuoteExp;

    invoke-virtual {v0, v10}, Lgnu/expr/ApplyExp;->setFunction(Lgnu/expr/Expression;)V

    .line 2004
    move-object p1, v2

    .line 2007
    .end local v0    # "aexp":Lgnu/expr/ApplyExp;
    .end local v7    # "func":Lgnu/expr/Expression;
    :cond_a0
    iput-object v6, v8, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2008
    const/4 v2, 0x0

    goto :goto_5f

    .line 2049
    .end local v3    # "descendants":Z
    .end local v5    # "dotDecl":Lgnu/expr/Declaration;
    .end local v6    # "exp2":Lgnu/expr/Expression;
    .end local v8    # "lexp":Lgnu/expr/LambdaExp;
    :cond_a4
    return-object p1
.end method

.method parseSeparator()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3706
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 3707
    .local v2, "startLine":I
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 3708
    .local v1, "startColumn":I
    iget v3, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    :goto_15
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v0

    .line 3709
    .local v0, "next":I
    const/16 v3, 0x3b

    if-ne v0, v3, :cond_20

    .line 3719
    :cond_1d
    :goto_1d
    return-void

    .line 3708
    .end local v0    # "next":I
    :cond_1e
    const/4 v3, 0x0

    goto :goto_15

    .line 3711
    .restart local v0    # "next":I
    :cond_20
    sget-boolean v3, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-eqz v3, :cond_33

    const/16 v3, 0xa

    if-eq v0, v3, :cond_33

    .line 3713
    iput v2, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 3714
    iput v1, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 3715
    const/16 v3, 0x77

    const-string v4, "missing \';\' after declaration"

    invoke-virtual {p0, v3, v4}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 3717
    :cond_33
    if-ltz v0, :cond_1d

    .line 3718
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto :goto_1d
.end method

.method parseStepExpr()Lgnu/expr/Expression;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x2e

    const/16 v5, 0xc

    const/16 v6, 0x9

    const/4 v10, 0x0

    const/4 v7, -0x1

    .line 2056
    iget v8, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v8, v11, :cond_12

    iget v8, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x33

    if-ne v8, v9, :cond_54

    .line 2058
    :cond_12
    iget v8, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v8, v11, :cond_48

    move v1, v5

    .line 2059
    .local v1, "axis":I
    :goto_17
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2060
    iget-object v8, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    iget-object v8, v8, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    sget-object v9, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {v8, v9, v10}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v2

    .line 2062
    .local v2, "dotDecl":Lgnu/expr/Declaration;
    if-nez v2, :cond_4a

    .line 2063
    const-string v8, "context item is undefined"

    const-string v9, "XPDY0002"

    invoke-virtual {p0, v8, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    .line 2066
    .local v3, "exp":Lgnu/expr/Expression;
    :goto_2e
    if-ne v1, v6, :cond_40

    .line 2068
    const/4 v6, 0x1

    new-array v0, v6, [Lgnu/expr/Expression;

    aput-object v3, v0, v10

    .line 2069
    .local v0, "args":[Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/ApplyExp;

    .end local v3    # "exp":Lgnu/expr/Expression;
    sget-object v6, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-static {v6}, Lgnu/kawa/xml/ParentAxis;->make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/ParentAxis;

    move-result-object v6

    invoke-direct {v3, v6, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 2073
    .end local v0    # "args":[Lgnu/expr/Expression;
    .restart local v3    # "exp":Lgnu/expr/Expression;
    :cond_40
    if-ne v1, v5, :cond_52

    move v5, v7

    :goto_43
    invoke-virtual {p0, v3, v5}, Lgnu/xquery/lang/XQParser;->parseStepQualifiers(Lgnu/expr/Expression;I)Lgnu/expr/Expression;

    move-result-object v5

    .line 2106
    .end local v2    # "dotDecl":Lgnu/expr/Declaration;
    .end local v3    # "exp":Lgnu/expr/Expression;
    :goto_47
    return-object v5

    .end local v1    # "axis":I
    :cond_48
    move v1, v6

    .line 2058
    goto :goto_17

    .line 2065
    .restart local v1    # "axis":I
    .restart local v2    # "dotDecl":Lgnu/expr/Declaration;
    :cond_4a
    new-instance v3, Lgnu/expr/ReferenceExp;

    sget-object v8, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-direct {v3, v8, v2}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .restart local v3    # "exp":Lgnu/expr/Expression;
    goto :goto_2e

    :cond_52
    move v5, v1

    .line 2073
    goto :goto_43

    .line 2075
    .end local v1    # "axis":I
    .end local v2    # "dotDecl":Lgnu/expr/Declaration;
    .end local v3    # "exp":Lgnu/expr/Expression;
    :cond_54
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    move-result v5

    add-int/lit8 v1, v5, -0x64

    .line 2077
    .restart local v1    # "axis":I
    if-ltz v1, :cond_6c

    const/16 v5, 0xd

    if-ge v1, v5, :cond_6c

    .line 2079
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2080
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->parseNodeTest(I)Lgnu/expr/Expression;

    move-result-object v4

    .line 2106
    .local v4, "unqualifiedStep":Lgnu/expr/Expression;
    :goto_67
    invoke-virtual {p0, v4, v1}, Lgnu/xquery/lang/XQParser;->parseStepQualifiers(Lgnu/expr/Expression;I)Lgnu/expr/Expression;

    move-result-object v5

    goto :goto_47

    .line 2082
    .end local v4    # "unqualifiedStep":Lgnu/expr/Expression;
    :cond_6c
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x40

    if-ne v5, v6, :cond_7b

    .line 2084
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2085
    const/4 v1, 0x2

    .line 2086
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->parseNodeTest(I)Lgnu/expr/Expression;

    move-result-object v4

    .restart local v4    # "unqualifiedStep":Lgnu/expr/Expression;
    goto :goto_67

    .line 2088
    .end local v4    # "unqualifiedStep":Lgnu/expr/Expression;
    :cond_7b
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0xec

    if-ne v5, v6, :cond_87

    .line 2090
    const/4 v1, 0x2

    .line 2091
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->parseNodeTest(I)Lgnu/expr/Expression;

    move-result-object v4

    .restart local v4    # "unqualifiedStep":Lgnu/expr/Expression;
    goto :goto_67

    .line 2095
    .end local v4    # "unqualifiedStep":Lgnu/expr/Expression;
    :cond_87
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->parseNodeTest(I)Lgnu/expr/Expression;

    move-result-object v4

    .line 2096
    .restart local v4    # "unqualifiedStep":Lgnu/expr/Expression;
    if-eqz v4, :cond_8f

    .line 2098
    const/4 v1, 0x3

    goto :goto_67

    .line 2102
    :cond_8f
    const/4 v1, -0x1

    .line 2103
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parsePrimaryExpr()Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_67
.end method

.method parseStepQualifiers(Lgnu/expr/Expression;I)Lgnu/expr/Expression;
    .registers 15
    .param p1, "exp"    # Lgnu/expr/Expression;
    .param p2, "axis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2114
    :goto_0
    iget v10, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v11, 0x5b

    if-ne v10, v11, :cond_9c

    .line 2116
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v10

    add-int/lit8 v8, v10, 0x1

    .line 2117
    .local v8, "startLine":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v10

    add-int/lit8 v7, v10, 0x1

    .line 2118
    .local v7, "startColumn":I
    iget v6, p0, Lgnu/xquery/lang/XQParser;->seenPosition:I

    .line 2119
    .local v6, "saveSeenPosition":I
    iget v5, p0, Lgnu/xquery/lang/XQParser;->seenLast:I

    .line 2120
    .local v5, "saveSawLast":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2121
    new-instance v4, Lgnu/expr/LambdaExp;

    const/4 v10, 0x3

    invoke-direct {v4, v10}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 2122
    .local v4, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {p0, v4, v8, v7}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2123
    sget-object v10, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {v4, v10}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 2124
    .local v2, "dot":Lgnu/expr/Declaration;
    if-ltz p2, :cond_79

    .line 2125
    sget-object v10, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v2, v10}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 2128
    :goto_2f
    sget-object v10, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    sget-object v11, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v10, v11}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 2129
    sget-object v10, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    sget-object v11, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v10, v11}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 2130
    iget-object v10, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v10, v4}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 2131
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 2132
    const/16 v10, 0x5d

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v1

    .line 2133
    .local v1, "cond":Lgnu/expr/Expression;
    iget v10, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_57

    .line 2134
    const-string v10, "missing \']\' - unexpected end-of-file"

    invoke-virtual {p0, v10}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 2137
    :cond_57
    if-gez p2, :cond_81

    .line 2139
    const/16 v3, 0x50

    .line 2140
    .local v3, "kind":C
    sget-object v9, Lgnu/xquery/util/ValuesFilter;->exprFilter:Lgnu/xquery/util/ValuesFilter;

    .line 2158
    .local v9, "valuesFilter":Lgnu/mapping/Procedure;
    :goto_5d
    invoke-virtual {p0, v1, v8, v7}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2159
    iget-object v10, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v10, v4}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2160
    iput-object v1, v4, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2161
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2162
    const/4 v10, 0x2

    new-array v0, v10, [Lgnu/expr/Expression;

    const/4 v10, 0x0

    aput-object p1, v0, v10

    const/4 v10, 0x1

    aput-object v4, v0, v10

    .line 2163
    .local v0, "args":[Lgnu/expr/Expression;
    new-instance p1, Lgnu/expr/ApplyExp;

    .end local p1    # "exp":Lgnu/expr/Expression;
    invoke-direct {p1, v9, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 2164
    .restart local p1    # "exp":Lgnu/expr/Expression;
    goto :goto_0

    .line 2127
    .end local v0    # "args":[Lgnu/expr/Expression;
    .end local v1    # "cond":Lgnu/expr/Expression;
    .end local v3    # "kind":C
    .end local v9    # "valuesFilter":Lgnu/mapping/Procedure;
    :cond_79
    invoke-static {}, Lgnu/kawa/reflect/SingletonType;->getInstance()Lgnu/kawa/reflect/SingletonType;

    move-result-object v10

    invoke-virtual {v2, v10}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_2f

    .line 2142
    .restart local v1    # "cond":Lgnu/expr/Expression;
    :cond_81
    if-eqz p2, :cond_92

    const/4 v10, 0x1

    if-eq p2, v10, :cond_92

    const/16 v10, 0x9

    if-eq p2, v10, :cond_92

    const/16 v10, 0xa

    if-eq p2, v10, :cond_92

    const/16 v10, 0xb

    if-ne p2, v10, :cond_97

    .line 2146
    :cond_92
    const/16 v3, 0x52

    .line 2147
    .restart local v3    # "kind":C
    sget-object v9, Lgnu/xquery/util/ValuesFilter;->reverseFilter:Lgnu/xquery/util/ValuesFilter;

    .restart local v9    # "valuesFilter":Lgnu/mapping/Procedure;
    goto :goto_5d

    .line 2151
    .end local v3    # "kind":C
    .end local v9    # "valuesFilter":Lgnu/mapping/Procedure;
    :cond_97
    const/16 v3, 0x46

    .line 2152
    .restart local v3    # "kind":C
    sget-object v9, Lgnu/xquery/util/ValuesFilter;->forwardFilter:Lgnu/xquery/util/ValuesFilter;

    .restart local v9    # "valuesFilter":Lgnu/mapping/Procedure;
    goto :goto_5d

    .line 2171
    .end local v1    # "cond":Lgnu/expr/Expression;
    .end local v2    # "dot":Lgnu/expr/Declaration;
    .end local v3    # "kind":C
    .end local v4    # "lexp":Lgnu/expr/LambdaExp;
    .end local v5    # "saveSawLast":I
    .end local v6    # "saveSeenPosition":I
    .end local v7    # "startColumn":I
    .end local v8    # "startLine":I
    .end local v9    # "valuesFilter":Lgnu/mapping/Procedure;
    :cond_9c
    return-object p1
.end method

.method parseTypeSwitch()Lgnu/expr/Expression;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x65

    const/16 v13, 0x24

    const/4 v12, 0x1

    const/16 v11, 0x74

    .line 2779
    invoke-virtual {p0, v11}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v5

    .line 2780
    .local v5, "save":C
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseParenExpr()Lgnu/expr/Expression;

    move-result-object v6

    .line 2781
    .local v6, "selector":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2782
    const/4 v7, 0x0

    .line 2784
    .local v7, "varName":Ljava/lang/Object;
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 2785
    .local v8, "vec":Ljava/util/Vector;
    invoke-virtual {v8, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2786
    :goto_1b
    const-string v10, "case"

    invoke-virtual {p0, v10}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_97

    .line 2788
    const/16 v10, 0x63

    invoke-virtual {p0, v10}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    .line 2789
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2790
    iget v10, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v10, v13, :cond_89

    .line 2792
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v2

    .line 2793
    .local v2, "decl":Lgnu/expr/Declaration;
    if-nez v2, :cond_3c

    .line 2794
    const-string v9, "missing Variable after \'$\'"

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    .line 2855
    .end local v2    # "decl":Lgnu/expr/Declaration;
    :goto_3b
    return-object v9

    .line 2795
    .restart local v2    # "decl":Lgnu/expr/Declaration;
    :cond_3c
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2796
    const-string v10, "as"

    invoke-virtual {p0, v10}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_83

    .line 2797
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2803
    :goto_4a
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v10

    invoke-virtual {v2, v10}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 2804
    invoke-virtual {p0, v11}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2805
    new-instance v4, Lgnu/expr/LambdaExp;

    invoke-direct {v4, v12}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 2806
    .local v4, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {v4, v2}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 2807
    const-string v10, "return"

    invoke-virtual {p0, v10}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_91

    .line 2808
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2811
    :goto_67
    iget-object v10, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v10, v4}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 2812
    const/16 v10, 0x72

    invoke-virtual {p0, v10}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    .line 2813
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v1

    .line 2814
    .local v1, "caseExpr":Lgnu/expr/Expression;
    iput-object v1, v4, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2815
    invoke-virtual {p0, v11}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2816
    iget-object v10, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v10, v4}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2817
    invoke-virtual {v8, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1b

    .line 2799
    .end local v1    # "caseExpr":Lgnu/expr/Expression;
    .end local v4    # "lexp":Lgnu/expr/LambdaExp;
    :cond_83
    const-string v10, "missing \'as\'"

    invoke-virtual {p0, v9, v10}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_4a

    .line 2802
    .end local v2    # "decl":Lgnu/expr/Declaration;
    :cond_89
    new-instance v2, Lgnu/expr/Declaration;

    const-string v10, "(arg)"

    invoke-direct {v2, v10}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .restart local v2    # "decl":Lgnu/expr/Declaration;
    goto :goto_4a

    .line 2810
    .restart local v4    # "lexp":Lgnu/expr/LambdaExp;
    :cond_91
    const-string v10, "missing \'return\' after \'case\'"

    invoke-virtual {p0, v10}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_67

    .line 2820
    .end local v2    # "decl":Lgnu/expr/Declaration;
    .end local v4    # "lexp":Lgnu/expr/LambdaExp;
    :cond_97
    const-string v10, "default"

    invoke-virtual {p0, v10}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_105

    .line 2822
    new-instance v4, Lgnu/expr/LambdaExp;

    invoke-direct {v4, v12}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 2823
    .restart local v4    # "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2825
    iget v9, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v9, v13, :cond_f7

    .line 2827
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v2

    .line 2828
    .restart local v2    # "decl":Lgnu/expr/Declaration;
    if-nez v2, :cond_b8

    .line 2829
    const-string v9, "missing Variable after \'$\'"

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    goto :goto_3b

    .line 2830
    :cond_b8
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2834
    :goto_bb
    invoke-virtual {v4, v2}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 2836
    const-string v9, "return"

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ff

    .line 2837
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2840
    :goto_c9
    iget-object v9, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v9, v4}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 2841
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v3

    .line 2842
    .local v3, "defaultExpr":Lgnu/expr/Expression;
    iput-object v3, v4, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2843
    iget-object v9, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v9, v4}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2844
    invoke-virtual {v8, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2852
    .end local v2    # "decl":Lgnu/expr/Declaration;
    .end local v3    # "defaultExpr":Lgnu/expr/Expression;
    .end local v4    # "lexp":Lgnu/expr/LambdaExp;
    :goto_dc
    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2853
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v0, v9, [Lgnu/expr/Expression;

    .line 2854
    .local v0, "args":[Lgnu/expr/Expression;
    invoke-virtual {v8, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 2855
    new-instance v9, Lgnu/expr/ApplyExp;

    const-string v10, "gnu.kawa.reflect.TypeSwitch"

    const-string v11, "typeSwitch"

    invoke-static {v10, v11}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto/16 :goto_3b

    .line 2833
    .end local v0    # "args":[Lgnu/expr/Expression;
    .restart local v4    # "lexp":Lgnu/expr/LambdaExp;
    :cond_f7
    new-instance v2, Lgnu/expr/Declaration;

    const-string v9, "(arg)"

    invoke-direct {v2, v9}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .restart local v2    # "decl":Lgnu/expr/Declaration;
    goto :goto_bb

    .line 2839
    :cond_ff
    const-string v9, "missing \'return\' after \'default\'"

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_c9

    .line 2848
    .end local v2    # "decl":Lgnu/expr/Declaration;
    .end local v4    # "lexp":Lgnu/expr/LambdaExp;
    :cond_105
    iget-object v10, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v10}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v10

    if-eqz v10, :cond_115

    :goto_10d
    const-string v10, "no \'default\' clause in \'typeswitch\'"

    const-string v11, "XPST0003"

    invoke-virtual {p0, v9, v10, v11}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_dc

    :cond_115
    const/16 v9, 0x77

    goto :goto_10d
.end method

.method parseURILiteral()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1623
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1624
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x22

    if-eq v1, v2, :cond_10

    .line 1625
    const-string v1, "expected a URILiteral"

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->declError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1632
    :goto_f
    return-object v0

    .line 1626
    :cond_10
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1627
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1632
    goto :goto_f
.end method

.method parseUnaryExpr()Lgnu/expr/Expression;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x19d

    .line 1746
    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x19e

    if-eq v4, v5, :cond_c

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v4, v7, :cond_38

    .line 1748
    :cond_c
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 1749
    .local v3, "op":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1750
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseUnaryExpr()Lgnu/expr/Expression;

    move-result-object v0

    .line 1751
    .local v0, "exp":Lgnu/expr/Expression;
    const-string v6, "gnu.xquery.util.ArithOp"

    if-ne v3, v7, :cond_31

    const-string v4, "plus"

    move-object v5, v4

    :goto_1c
    if-ne v3, v7, :cond_35

    const-string v4, "+"

    :goto_20
    invoke-static {v6, v5, v4}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    .line 1755
    .local v2, "func":Lgnu/expr/Expression;
    new-instance v1, Lgnu/expr/ApplyExp;

    const/4 v4, 0x1

    new-array v4, v4, [Lgnu/expr/Expression;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-direct {v1, v2, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .end local v0    # "exp":Lgnu/expr/Expression;
    .local v1, "exp":Lgnu/expr/Expression;
    move-object v0, v1

    .line 1759
    .end local v1    # "exp":Lgnu/expr/Expression;
    .end local v2    # "func":Lgnu/expr/Expression;
    .end local v3    # "op":I
    .restart local v0    # "exp":Lgnu/expr/Expression;
    :goto_30
    return-object v0

    .line 1751
    .restart local v3    # "op":I
    :cond_31
    const-string v4, "minus"

    move-object v5, v4

    goto :goto_1c

    :cond_35
    const-string v4, "-"

    goto :goto_20

    .line 1758
    .end local v0    # "exp":Lgnu/expr/Expression;
    .end local v3    # "op":I
    :cond_38
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseUnionExpr()Lgnu/expr/Expression;

    move-result-object v0

    .restart local v0    # "exp":Lgnu/expr/Expression;
    goto :goto_30
.end method

.method parseUnionExpr()Lgnu/expr/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1765
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseIntersectExceptExpr()Lgnu/expr/Expression;

    move-result-object v0

    .line 1768
    .local v0, "exp":Lgnu/expr/Expression;
    :goto_4
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperator()I

    move-result v2

    .line 1769
    .local v2, "op":I
    const/16 v3, 0x1a3

    if-eq v2, v3, :cond_d

    .line 1775
    return-object v0

    .line 1771
    :cond_d
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1772
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseIntersectExceptExpr()Lgnu/expr/Expression;

    move-result-object v1

    .line 1773
    .local v1, "exp2":Lgnu/expr/Expression;
    invoke-virtual {p0, v2, v0, v1}, Lgnu/xquery/lang/XQParser;->makeBinary(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1774
    goto :goto_4
.end method

.method public parseVariable()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3178
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x24

    if-ne v1, v2, :cond_1a

    .line 3179
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3182
    :goto_9
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 3185
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x51

    if-ne v1, v2, :cond_20

    .line 3190
    .end local v0    # "str":Ljava/lang/String;
    :goto_19
    return-object v0

    .line 3181
    :cond_1a
    const-string v1, "missing \'$\' before variable name"

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_9

    .line 3187
    .restart local v0    # "str":Ljava/lang/String;
    :cond_20
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x41

    if-ne v1, v2, :cond_31

    .line 3188
    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    goto :goto_19

    .line 3190
    :cond_31
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public parseVariableDeclaration()Lgnu/expr/Declaration;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3196
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariable()Ljava/lang/Object;

    move-result-object v1

    .line 3197
    .local v1, "name":Ljava/lang/Object;
    if-nez v1, :cond_8

    .line 3198
    const/4 v0, 0x0

    .line 3202
    :goto_7
    return-object v0

    .line 3199
    :cond_8
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, v1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 3200
    .local v0, "decl":Lgnu/expr/Declaration;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v2, v3}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Declaration;II)V

    goto :goto_7
.end method

.method parseXMLConstructor(IZ)Lgnu/expr/Expression;
    .registers 21
    .param p1, "next"    # I
    .param p2, "inElementContent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 2459
    const/16 v12, 0x21

    move/from16 v0, p1

    if-ne v0, v12, :cond_ec

    .line 2461
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result p1

    .line 2462
    const/16 v12, 0x2d

    move/from16 v0, p1

    if-ne v0, v12, :cond_75

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_75

    .line 2464
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->skip()V

    .line 2465
    const-string v12, "-->"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgnu/xquery/lang/XQParser;->getDelimited(Ljava/lang/String;)V

    .line 2466
    const/4 v2, 0x0

    .line 2467
    .local v2, "bad":Z
    move-object/from16 v0, p0

    iget v7, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2468
    .local v7, "i":I
    const/4 v10, 0x1

    .line 2469
    .local v10, "sawHyphen":Z
    :goto_28
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_3c

    .line 2471
    move-object/from16 v0, p0

    iget-object v12, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v12, v12, v7

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_47

    const/4 v5, 0x1

    .line 2472
    .local v5, "curHyphen":Z
    :goto_37
    if-eqz v10, :cond_49

    if-eqz v5, :cond_49

    .line 2474
    const/4 v2, 0x1

    .line 2479
    .end local v5    # "curHyphen":Z
    :cond_3c
    if-eqz v2, :cond_4b

    .line 2480
    const-string v12, "consecutive or final hyphen in XML comment"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    .line 2545
    .end local v2    # "bad":Z
    .end local v7    # "i":I
    .end local v10    # "sawHyphen":Z
    .local v6, "exp":Lgnu/expr/Expression;
    :goto_46
    return-object v6

    .line 2471
    .end local v6    # "exp":Lgnu/expr/Expression;
    .restart local v2    # "bad":Z
    .restart local v7    # "i":I
    .restart local v10    # "sawHyphen":Z
    :cond_47
    const/4 v5, 0x0

    goto :goto_37

    .line 2477
    .restart local v5    # "curHyphen":Z
    :cond_49
    move v10, v5

    .line 2478
    goto :goto_28

    .line 2483
    .end local v5    # "curHyphen":Z
    :cond_4b
    const/4 v12, 0x1

    new-array v1, v12, [Lgnu/expr/Expression;

    const/4 v12, 0x0

    new-instance v13, Lgnu/expr/QuoteExp;

    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v17, v0

    invoke-direct/range {v14 .. v17}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v13, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v13, v1, v12

    .line 2485
    .local v1, "args":[Lgnu/expr/Expression;
    new-instance v6, Lgnu/expr/ApplyExp;

    const-string v12, "gnu.kawa.xml.CommentConstructor"

    const-string v13, "commentConstructor"

    invoke-static {v12, v13}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v12

    invoke-direct {v6, v12, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .restart local v6    # "exp":Lgnu/expr/Expression;
    goto :goto_46

    .line 2490
    .end local v1    # "args":[Lgnu/expr/Expression;
    .end local v2    # "bad":Z
    .end local v6    # "exp":Lgnu/expr/Expression;
    .end local v7    # "i":I
    .end local v10    # "sawHyphen":Z
    :cond_75
    const/16 v12, 0x5b

    move/from16 v0, p1

    if-ne v0, v12, :cond_e2

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v12

    const/16 v13, 0x43

    if-ne v12, v13, :cond_e2

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v12

    const/16 v13, 0x44

    if-ne v12, v13, :cond_e2

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v12

    const/16 v13, 0x41

    if-ne v12, v13, :cond_e2

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v12

    const/16 v13, 0x54

    if-ne v12, v13, :cond_e2

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v12

    const/16 v13, 0x41

    if-ne v12, v13, :cond_e2

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v12

    const/16 v13, 0x5b

    if-ne v12, v13, :cond_e2

    .line 2494
    if-nez p2, :cond_b6

    .line 2495
    const/16 v12, 0x65

    const-string v13, "CDATA section must be in element content"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 2496
    :cond_b6
    const-string v12, "]]>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgnu/xquery/lang/XQParser;->getDelimited(Ljava/lang/String;)V

    .line 2497
    const/4 v12, 0x1

    new-array v1, v12, [Lgnu/expr/Expression;

    const/4 v12, 0x0

    new-instance v13, Lgnu/expr/QuoteExp;

    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    move/from16 v17, v0

    invoke-direct/range {v14 .. v17}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v13, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v13, v1, v12

    .line 2499
    .restart local v1    # "args":[Lgnu/expr/Expression;
    new-instance v6, Lgnu/expr/ApplyExp;

    sget-object v12, Lgnu/xquery/lang/XQParser;->makeCDATA:Lgnu/expr/Expression;

    invoke-direct {v6, v12, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 2500
    .restart local v6    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_46

    .line 2502
    .end local v1    # "args":[Lgnu/expr/Expression;
    .end local v6    # "exp":Lgnu/expr/Expression;
    :cond_e2
    const-string v12, "\'<!\' must be followed by \'--\' or \'[CDATA[\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    .restart local v6    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_46

    .line 2504
    .end local v6    # "exp":Lgnu/expr/Expression;
    :cond_ec
    const/16 v12, 0x3f

    move/from16 v0, p1

    if-ne v0, v12, :cond_179

    .line 2506
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result p1

    .line 2507
    if-ltz p1, :cond_109

    move/from16 v0, p1

    int-to-char v12, v0

    invoke-static {v12}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v12

    if-eqz v12, :cond_109

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v12

    const/16 v13, 0x41

    if-eq v12, v13, :cond_110

    .line 2509
    :cond_109
    const-string v12, "missing target after \'<?\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 2510
    :cond_110
    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v11, v12, v13, v14}, Ljava/lang/String;-><init>([CII)V

    .line 2511
    .local v11, "target":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2514
    .local v8, "nspaces":I
    :goto_11f
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v3

    .line 2515
    .local v3, "ch":I
    if-gez v3, :cond_16b

    .line 2524
    :goto_125
    const-string v12, "?>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgnu/xquery/lang/XQParser;->getDelimited(Ljava/lang/String;)V

    .line 2525
    if-nez v8, :cond_13b

    move-object/from16 v0, p0

    iget v12, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-lez v12, :cond_13b

    .line 2526
    const-string v12, "target must be followed by space or \'?>\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 2527
    :cond_13b
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v4, v12, v13, v14}, Ljava/lang/String;-><init>([CII)V

    .line 2528
    .local v4, "content":Ljava/lang/String;
    const/4 v12, 0x2

    new-array v1, v12, [Lgnu/expr/Expression;

    const/4 v12, 0x0

    new-instance v13, Lgnu/expr/QuoteExp;

    invoke-direct {v13, v11}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v13, v1, v12

    const/4 v12, 0x1

    new-instance v13, Lgnu/expr/QuoteExp;

    invoke-direct {v13, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v13, v1, v12

    .line 2529
    .restart local v1    # "args":[Lgnu/expr/Expression;
    new-instance v6, Lgnu/expr/ApplyExp;

    const-string v12, "gnu.kawa.xml.MakeProcInst"

    const-string v13, "makeProcInst"

    invoke-static {v12, v13}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v12

    invoke-direct {v6, v12, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 2532
    .restart local v6    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_46

    .line 2517
    .end local v1    # "args":[Lgnu/expr/Expression;
    .end local v4    # "content":Ljava/lang/String;
    .end local v6    # "exp":Lgnu/expr/Expression;
    :cond_16b
    int-to-char v12, v3

    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-nez v12, :cond_176

    .line 2519
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->unread()V

    goto :goto_125

    .line 2522
    :cond_176
    add-int/lit8 v8, v8, 0x1

    .line 2523
    goto :goto_11f

    .line 2533
    .end local v3    # "ch":I
    .end local v8    # "nspaces":I
    .end local v11    # "target":Ljava/lang/String;
    :cond_179
    if-ltz p1, :cond_184

    move/from16 v0, p1

    int-to-char v12, v0

    invoke-static {v12}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v12

    if-nez v12, :cond_18e

    .line 2534
    :cond_184
    const-string v12, "expected QName after \'<\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    .restart local v6    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_46

    .line 2537
    .end local v6    # "exp":Lgnu/expr/Expression;
    :cond_18e
    invoke-virtual/range {p0 .. p1}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 2538
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2539
    const/16 v12, 0x3c

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v9

    .line 2540
    .local v9, "saveReadState":C
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseElementConstructor()Lgnu/expr/Expression;

    move-result-object v6

    .line 2541
    .restart local v6    # "exp":Lgnu/expr/Expression;
    if-nez p2, :cond_1a8

    .line 2542
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->wrapWithBaseUri(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v6

    .line 2543
    :cond_1a8
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    goto/16 :goto_46
.end method

.method final peekNonSpace(Ljava/lang/String;)I
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v0

    .line 313
    .local v0, "ch":I
    if-gez v0, :cond_9

    .line 314
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 315
    :cond_9
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 316
    return v0
.end method

.method peekOperand()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x3a

    const/16 v7, 0x24

    const/16 v6, 0x7b

    const/16 v5, 0x28

    .line 947
    :goto_9
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0xa

    if-ne v2, v4, :cond_13

    .line 948
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_9

    .line 949
    :cond_13
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x41

    if-eq v2, v4, :cond_1f

    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x51

    if-ne v2, v4, :cond_3b5

    .line 951
    :cond_1f
    iget v2, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz v2, :cond_3c

    const/4 v2, 0x1

    :goto_24
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v1

    .line 952
    .local v1, "next":I
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v2, v2, v3

    packed-switch v2, :pswitch_data_3d0

    .line 1071
    :cond_2f
    :pswitch_2f
    if-ne v1, v5, :cond_1d5

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v2

    if-eq v2, v8, :cond_1d5

    .line 1073
    const/16 v2, 0x46

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 1193
    .end local v1    # "next":I
    :goto_3b
    return v2

    :cond_3c
    move v2, v3

    .line 951
    goto :goto_24

    .line 955
    .restart local v1    # "next":I
    :pswitch_3e
    const-string v2, "attribute"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 957
    if-ne v1, v5, :cond_4d

    .line 958
    const/16 v2, 0xec

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_3b

    .line 959
    :cond_4d
    if-eq v1, v6, :cond_56

    int-to-char v2, v1

    invoke-static {v2}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 961
    :cond_56
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 962
    const/16 v2, 0xfc

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_3b

    .line 968
    :pswitch_5e
    const-string v2, "comment"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 970
    if-ne v1, v5, :cond_6d

    .line 971
    const/16 v2, 0xe8

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_3b

    .line 972
    :cond_6d
    if-ne v1, v6, :cond_2f

    .line 974
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 975
    const/16 v2, 0xfe

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_3b

    .line 980
    :pswitch_77
    if-ne v1, v6, :cond_89

    const-string v2, "document"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 982
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 983
    const/16 v2, 0x100

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_3b

    .line 985
    :cond_89
    if-ne v1, v5, :cond_2f

    const-string v2, "document-node"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 986
    const/16 v2, 0xea

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_3b

    .line 989
    :pswitch_98
    const-string v2, "element"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 991
    if-ne v1, v5, :cond_a7

    .line 992
    const/16 v2, 0xeb

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_3b

    .line 993
    :cond_a7
    if-eq v1, v6, :cond_b0

    int-to-char v2, v1

    invoke-static {v2}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 995
    :cond_b0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 996
    const/16 v2, 0xfb

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_3b

    .line 1000
    :cond_b8
    if-ne v1, v5, :cond_c8

    const-string v2, "empty-sequence"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 1001
    const/16 v2, 0xee

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1002
    :cond_c8
    if-ne v1, v7, :cond_2f

    const-string v2, "every"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1003
    const/16 v2, 0xf6

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1006
    :pswitch_d8
    if-ne v1, v7, :cond_2f

    const-string v2, "for"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1007
    const/16 v2, 0xf3

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1010
    :pswitch_e8
    if-ne v1, v5, :cond_f8

    const-string v2, "if"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 1011
    const/16 v2, 0xf1

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1012
    :cond_f8
    if-ne v1, v5, :cond_2f

    const-string v2, "item"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1013
    const/16 v2, 0xed

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1016
    :pswitch_108
    if-ne v1, v7, :cond_2f

    const-string v2, "let"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1017
    const/16 v2, 0xf4

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1020
    :pswitch_118
    if-ne v1, v5, :cond_2f

    const-string v2, "node"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1021
    const/16 v2, 0xe6

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1024
    :pswitch_128
    if-ne v1, v6, :cond_2f

    const-string v2, "ordered"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1025
    const/16 v2, 0xf9

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1028
    :pswitch_138
    const-string v2, "processing-instruction"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1030
    if-ne v1, v5, :cond_148

    .line 1031
    const/16 v2, 0xe9

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1032
    :cond_148
    if-eq v1, v6, :cond_151

    int-to-char v2, v1

    invoke-static {v2}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1034
    :cond_151
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 1035
    const/16 v2, 0xff

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1041
    :pswitch_15a
    if-ne v1, v7, :cond_16a

    const-string v2, "some"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16a

    .line 1042
    const/16 v2, 0xf5

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1043
    :cond_16a
    if-ne v1, v5, :cond_17a

    const-string v2, "schema-attribute"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17a

    .line 1044
    const/16 v2, 0xef

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1045
    :cond_17a
    if-ne v1, v5, :cond_2f

    const-string v2, "schema-element"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1046
    const/16 v2, 0xf0

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1049
    :pswitch_18a
    const-string v2, "text"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a5

    .line 1051
    if-ne v1, v5, :cond_19a

    .line 1052
    const/16 v2, 0xe7

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1053
    :cond_19a
    if-ne v1, v6, :cond_1a5

    .line 1055
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 1056
    const/16 v2, 0xfd

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1059
    :cond_1a5
    if-ne v1, v5, :cond_2f

    const-string v2, "typeswitch"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1060
    const/16 v2, 0xf2

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1063
    :pswitch_1b5
    if-ne v1, v6, :cond_2f

    const-string v2, "unordered"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1064
    const/16 v2, 0xfa

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1067
    :pswitch_1c5
    if-ne v1, v6, :cond_2f

    const-string v2, "validate"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1068
    const/16 v2, 0xf8

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1075
    :cond_1d5
    if-ne v1, v8, :cond_1e5

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v2

    if-ne v2, v8, :cond_1e5

    .line 1076
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getAxis()I

    move-result v2

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1077
    :cond_1e5
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 1078
    .local v0, "name":Ljava/lang/String;
    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    .line 1079
    packed-switch v1, :pswitch_data_400

    .line 1174
    :cond_1f3
    :pswitch_1f3
    if-ltz v1, :cond_210

    .line 1176
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 1177
    int-to-char v2, v1

    invoke-static {v2}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v2

    if-eqz v2, :cond_210

    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    const-string v3, "define"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_210

    .line 1179
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1180
    const/16 v2, 0x57

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 1183
    :cond_210
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1082
    :pswitch_214
    const-string v2, "declare"

    const-string v3, "ase-uri"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_224

    .line 1083
    const/16 v2, 0x42

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1084
    :cond_224
    const-string v2, "declare"

    const-string v3, "oundary-space"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    .line 1085
    const/16 v2, 0x53

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1088
    :pswitch_234
    const-string v2, "declare"

    const-string v3, "onstruction"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_244

    .line 1089
    const/16 v2, 0x4b

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1090
    :cond_244
    const-string v2, "declare"

    const-string v3, "opy-namespaces"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    .line 1091
    const/16 v2, 0x4c

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1094
    :pswitch_254
    const-string v2, "declare"

    const-string v3, "efault"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a7

    .line 1096
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1097
    const-string v2, "function"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26f

    .line 1098
    const/16 v2, 0x4f

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1099
    :cond_26f
    const-string v2, "element"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27d

    .line 1100
    const/16 v2, 0x45

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1101
    :cond_27d
    const-string v2, "collation"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28b

    .line 1102
    const/16 v2, 0x47

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1103
    :cond_28b
    const-string v2, "order"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_299

    .line 1104
    const/16 v2, 0x48

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1105
    :cond_299
    const-string v2, "unrecognized/unimplemented \'declare default\'"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipToSemicolon()V

    .line 1107
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    move-result v2

    goto/16 :goto_3b

    .line 1110
    :cond_2a7
    :pswitch_2a7
    const-string v2, "default"

    const-string v3, "lement"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    .line 1112
    const-string v2, "replace \'default element\' by \'declare default element namespace\'"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1113
    const/16 v2, 0x45

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1117
    :pswitch_2bc
    const-string v2, "declare"

    const-string v3, "unction"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2cc

    .line 1118
    const/16 v2, 0x50

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1119
    :cond_2cc
    const-string v2, "define"

    const-string v3, "unction"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e1

    .line 1121
    const-string v2, "replace \'define function\' by \'declare function\'"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1122
    const/16 v2, 0x50

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1124
    :cond_2e1
    const-string v2, "default"

    const-string v3, "unction"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    .line 1126
    const-string v2, "replace \'default function\' by \'declare default function namespace\'"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1127
    const/16 v2, 0x4f

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1131
    :pswitch_2f6
    const-string v2, "import"

    const-string v3, "odule"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    .line 1132
    const/16 v2, 0x49

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1135
    :pswitch_306
    const-string v2, "declare"

    const-string v3, "amespace"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_316

    .line 1136
    const/16 v2, 0x4e

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1137
    :cond_316
    const-string v2, "default"

    const-string v3, "amespace"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32b

    .line 1139
    const-string v2, "replace \'default namespace\' by \'declare default element namespace\'"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1140
    const/16 v2, 0x45

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1142
    :cond_32b
    const-string v2, "module"

    const-string v3, "amespace"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    .line 1143
    const/16 v2, 0x4d

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1146
    :pswitch_33b
    const-string v2, "declare"

    const-string v3, "rdering"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34b

    .line 1147
    const/16 v2, 0x55

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1148
    :cond_34b
    const-string v2, "declare"

    const-string v3, "ption"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    .line 1149
    const/16 v2, 0x6f

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1152
    :pswitch_35b
    const-string v2, "import"

    const-string v3, "chema"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    .line 1153
    const/16 v2, 0x54

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1156
    :pswitch_36b
    const-string v2, "declare"

    const-string v3, "ariable"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37b

    .line 1157
    const/16 v2, 0x56

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1158
    :cond_37b
    const-string v2, "define"

    const-string v3, "ariable"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_390

    .line 1160
    const-string v2, "replace \'define variable\' by \'declare variable\'"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1161
    const/16 v2, 0x56

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1163
    :cond_390
    const-string v2, "xquery"

    const-string v3, "ersion"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    .line 1164
    const/16 v2, 0x59

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1167
    :pswitch_3a0
    const-string v2, "declare"

    const-string v3, "mlspace"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    .line 1169
    const-string v2, "replace \'define xmlspace\' by \'declare boundary-space\'"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1170
    const/16 v2, 0x53

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1185
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "next":I
    :cond_3b5
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x43

    if-ne v2, v3, :cond_3c7

    .line 1187
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v1

    .line 1188
    .restart local v1    # "next":I
    if-ne v1, v8, :cond_3cb

    .line 1189
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getAxis()I

    move-result v2

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 1193
    .end local v1    # "next":I
    :cond_3c7
    :goto_3c7
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_3b

    .line 1191
    .restart local v1    # "next":I
    :cond_3cb
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto :goto_3c7

    .line 952
    nop

    :pswitch_data_3d0
    .packed-switch 0x61
        :pswitch_3e
        :pswitch_2f
        :pswitch_5e
        :pswitch_77
        :pswitch_98
        :pswitch_d8
        :pswitch_2f
        :pswitch_2f
        :pswitch_e8
        :pswitch_2f
        :pswitch_2f
        :pswitch_108
        :pswitch_2f
        :pswitch_118
        :pswitch_128
        :pswitch_138
        :pswitch_2f
        :pswitch_2f
        :pswitch_15a
        :pswitch_18a
        :pswitch_1b5
        :pswitch_1c5
    .end packed-switch

    .line 1079
    :pswitch_data_400
    .packed-switch 0x62
        :pswitch_214
        :pswitch_234
        :pswitch_254
        :pswitch_2a7
        :pswitch_2bc
        :pswitch_1f3
        :pswitch_1f3
        :pswitch_1f3
        :pswitch_1f3
        :pswitch_1f3
        :pswitch_1f3
        :pswitch_2f6
        :pswitch_306
        :pswitch_33b
        :pswitch_1f3
        :pswitch_1f3
        :pswitch_1f3
        :pswitch_35b
        :pswitch_1f3
        :pswitch_1f3
        :pswitch_36b
        :pswitch_1f3
        :pswitch_3a0
    .end packed-switch
.end method

.method peekOperator()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x74

    const/16 v9, 0x6f

    const/16 v8, 0x64

    const/16 v7, 0x65

    const/4 v6, 0x1

    .line 789
    :goto_9
    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1a

    .line 791
    iget v4, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-nez v4, :cond_16

    .line 792
    const/16 v4, 0xa

    .line 887
    :goto_15
    return v4

    .line 793
    :cond_16
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_9

    .line 795
    :cond_1a
    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x41

    if-ne v4, v5, :cond_25

    .line 797
    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 799
    .local v3, "len":I
    packed-switch v3, :pswitch_data_17c

    .line 887
    .end local v3    # "len":I
    :cond_25
    :goto_25
    :pswitch_25
    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_15

    .line 802
    .restart local v3    # "len":I
    :pswitch_28
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v5, 0x0

    aget-char v0, v4, v5

    .line 803
    .local v0, "c1":C
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v1, v4, v6

    .line 804
    .local v1, "c2":C
    if-ne v0, v9, :cond_3c

    const/16 v4, 0x72

    if-ne v1, v4, :cond_3c

    .line 805
    const/16 v4, 0x190

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_25

    .line 806
    :cond_3c
    if-ne v0, v10, :cond_45

    if-ne v1, v9, :cond_45

    .line 807
    const/16 v4, 0x19c

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_25

    .line 808
    :cond_45
    const/16 v4, 0x69

    if-ne v0, v4, :cond_52

    const/16 v4, 0x73

    if-ne v1, v4, :cond_52

    .line 809
    const/16 v4, 0x198

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_25

    .line 810
    :cond_52
    if-ne v0, v7, :cond_5d

    const/16 v4, 0x71

    if-ne v1, v4, :cond_5d

    .line 811
    const/16 v4, 0x1aa

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_25

    .line 812
    :cond_5d
    const/16 v4, 0x6e

    if-ne v0, v4, :cond_68

    if-ne v1, v7, :cond_68

    .line 813
    const/16 v4, 0x1ab

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_25

    .line 814
    :cond_68
    const/16 v4, 0x67

    if-ne v0, v4, :cond_7a

    .line 816
    if-ne v1, v7, :cond_73

    const/16 v4, 0x1af

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_25

    .line 817
    :cond_73
    if-ne v1, v10, :cond_25

    const/16 v4, 0x1ae

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_25

    .line 819
    :cond_7a
    const/16 v4, 0x6c

    if-ne v0, v4, :cond_25

    .line 821
    if-ne v1, v7, :cond_85

    const/16 v4, 0x1ad

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_25

    .line 822
    :cond_85
    if-ne v1, v10, :cond_25

    const/16 v4, 0x1ac

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_25

    .line 827
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :pswitch_8c
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v5, 0x0

    aget-char v0, v4, v5

    .line 828
    .restart local v0    # "c1":C
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v1, v4, v6

    .line 829
    .restart local v1    # "c2":C
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v5, 0x2

    aget-char v2, v4, v5

    .line 830
    .local v2, "c3":C
    const/16 v4, 0x61

    if-ne v0, v4, :cond_aa

    .line 832
    const/16 v4, 0x6e

    if-ne v1, v4, :cond_25

    if-ne v2, v8, :cond_25

    .line 833
    const/16 v4, 0x191

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_25

    .line 835
    :cond_aa
    const/16 v4, 0x6d

    if-ne v0, v4, :cond_c4

    .line 836
    const/16 v4, 0x75

    if-ne v1, v4, :cond_ba

    const/16 v4, 0x6c

    if-ne v2, v4, :cond_ba

    .line 837
    const/16 v4, 0x19f

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 838
    :cond_ba
    if-ne v1, v9, :cond_25

    if-ne v2, v8, :cond_25

    .line 839
    const/16 v4, 0x1a2

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_25

    .line 841
    :cond_c4
    if-ne v0, v8, :cond_25

    .line 842
    const/16 v4, 0x69

    if-ne v1, v4, :cond_25

    const/16 v4, 0x76

    if-ne v2, v4, :cond_25

    .line 843
    const/16 v4, 0x1a0

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_25

    .line 847
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "c3":C
    :pswitch_d4
    const-string v4, "idiv"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 848
    const/16 v4, 0x1a1

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_25

    .line 849
    :cond_e2
    const-string v4, "cast"

    const-string v5, "as"

    invoke-virtual {p0, v4, v5, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 850
    const/16 v4, 0x1a9

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_25

    .line 853
    :pswitch_f2
    const-string v4, "where"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_100

    .line 854
    const/16 v4, 0xc4

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_25

    .line 855
    :cond_100
    const-string v4, "isnot"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10e

    .line 856
    const/16 v4, 0x199

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_25

    .line 857
    :cond_10e
    const-string v4, "union"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11c

    .line 858
    const/16 v4, 0x1a3

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_25

    .line 859
    :cond_11c
    const-string v4, "treat"

    const-string v5, "as"

    invoke-virtual {p0, v4, v5, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 860
    const/16 v4, 0x1a7

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_25

    .line 863
    :pswitch_12c
    const-string v4, "except"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 864
    const/16 v4, 0x1a5

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_25

    .line 867
    :pswitch_13a
    const-string v4, "instance"

    const-string v5, "of"

    invoke-virtual {p0, v4, v5, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_14a

    .line 868
    const/16 v4, 0x1a6

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_25

    .line 869
    :cond_14a
    const-string v4, "castable"

    const-string v5, "as"

    invoke-virtual {p0, v4, v5, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 870
    const/16 v4, 0x1a8

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_25

    .line 873
    :pswitch_15a
    const-string v4, "intersect"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 874
    const/16 v4, 0x1a4

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_25

    .line 877
    :pswitch_168
    const-string v4, "instanceof"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 879
    const-string v4, "use \'instanceof of\' (two words) instead of \'instanceof\'"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 880
    const/16 v4, 0x1a6

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_25

    .line 799
    nop

    :pswitch_data_17c
    .packed-switch 0x2
        :pswitch_28
        :pswitch_8c
        :pswitch_d4
        :pswitch_f2
        :pswitch_12c
        :pswitch_25
        :pswitch_13a
        :pswitch_15a
        :pswitch_168
    .end packed-switch
.end method

.method pushNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 1213
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 1214
    const/4 p2, 0x0

    .line 1215
    :cond_7
    new-instance v0, Lgnu/xml/NamespaceBinding;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    invoke-direct {v0, p1, p2, v1}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    .line 1216
    return-void
.end method

.method public readObject()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 3636
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    iget v0, p0, Lgnu/xquery/lang/XQParser;->saveToken:I

    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 479
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->saveValue:Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    .line 480
    invoke-super {p0}, Lgnu/text/Lexer;->reset()V

    .line 481
    return-void
.end method

.method public resolveAgainstBaseUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p1}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 147
    .end local p1    # "uri":Ljava/lang/String;
    :goto_6
    return-object p1

    .line 145
    .restart local p1    # "uri":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getStaticBaseUri()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "base":Ljava/lang/String;
    invoke-static {v0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v1

    .line 147
    .local v1, "basePath":Lgnu/text/Path;
    invoke-virtual {v1, p1}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6
.end method

.method public setInteractive(Z)V
    .registers 3
    .param p1, "v"    # Z

    .prologue
    .line 1231
    iget-boolean v0, p0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-eq v0, p1, :cond_c

    .line 1232
    if-eqz p1, :cond_f

    iget v0, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    .line 1233
    :cond_c
    :goto_c
    iput-boolean p1, p0, Lgnu/xquery/lang/XQParser;->interactive:Z

    .line 1234
    return-void

    .line 1232
    :cond_f
    iget v0, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    goto :goto_c
.end method

.method public setStaticBaseUri(Ljava/lang/String;)V
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    invoke-static {p1}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v1

    invoke-static {v1}, Lgnu/xquery/lang/XQParser;->fixupStaticBaseUri(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v1

    iput-object v1, p0, Lgnu/xquery/lang/XQParser;->baseURI:Lgnu/text/Path;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 95
    :goto_a
    return-void

    .line 89
    :catch_b
    move-exception v0

    .line 91
    .local v0, "ex":Ljava/lang/Throwable;
    instance-of v1, v0, Lgnu/mapping/WrappedException;

    if-eqz v1, :cond_16

    .line 92
    check-cast v0, Lgnu/mapping/WrappedException;

    .end local v0    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lgnu/mapping/WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 93
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :cond_16
    const/16 v1, 0x65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_a
.end method

.method final skipComment()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3a

    .line 266
    iget v6, p0, Lgnu/xquery/lang/XQParser;->commentCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lgnu/xquery/lang/XQParser;->commentCount:I

    .line 267
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v6

    add-int/lit8 v5, v6, 0x1

    .line 268
    .local v5, "startLine":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 269
    .local v4, "startColumn":I
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    if-eqz v6, :cond_23

    .line 271
    iput v5, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 272
    iput v4, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 273
    const/16 v6, 0x65

    iget-object v7, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 275
    :cond_23
    const/4 v2, 0x0

    .line 276
    .local v2, "prev":I
    const/4 v1, 0x0

    .line 277
    .local v1, "commentNesting":I
    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v3

    .line 280
    .local v3, "saveReadState":C
    :goto_29
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 281
    .local v0, "ch":I
    if-ne v0, v8, :cond_38

    .line 283
    const/16 v6, 0x28

    if-ne v2, v6, :cond_36

    .line 285
    add-int/lit8 v1, v1, 0x1

    .line 286
    const/4 v0, 0x0

    .line 304
    :cond_36
    :goto_36
    move v2, v0

    .line 305
    goto :goto_29

    .line 289
    :cond_38
    const/16 v6, 0x29

    if-ne v0, v6, :cond_47

    if-ne v2, v8, :cond_47

    .line 291
    if-nez v1, :cond_44

    .line 293
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 294
    return-void

    .line 296
    :cond_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_36

    .line 298
    :cond_47
    if-gez v0, :cond_36

    .line 300
    iput v5, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 301
    iput v4, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 302
    const-string v6, "non-terminated comment starting here"

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    goto :goto_36
.end method

.method final skipOldComment()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "seenDashes":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 243
    .local v3, "startLine":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v4

    add-int/lit8 v2, v4, -0x2

    .line 244
    .local v2, "startColumn":I
    const-string v4, "use (: :) instead of old-style comment {-- --}"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 247
    :goto_12
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 248
    .local v0, "ch":I
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_1d

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 250
    :cond_1d
    const/16 v4, 0x7d

    if-ne v0, v4, :cond_25

    const/4 v4, 0x2

    if-lt v1, v4, :cond_25

    .line 251
    return-void

    .line 252
    :cond_25
    if-gez v0, :cond_31

    .line 254
    iput v3, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 255
    iput v2, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 256
    const-string v4, "non-terminated comment starting here"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    goto :goto_12

    .line 259
    :cond_31
    const/4 v1, 0x0

    goto :goto_12
.end method

.method final skipSpace()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v0

    return v0
.end method

.method final skipSpace(Z)I
    .registers 7
    .param p1, "verticalToo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x28

    const/16 v2, 0x7b

    const/16 v4, 0x2d

    .line 196
    :cond_6
    :goto_6
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 197
    .local v0, "ch":I
    if-ne v0, v1, :cond_19

    .line 199
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v3

    if-nez v3, :cond_15

    .line 223
    :goto_14
    return v1

    .line 201
    :cond_15
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipComment()V

    goto :goto_6

    .line 203
    :cond_19
    if-ne v0, v2, :cond_38

    .line 205
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 206
    if-eq v0, v4, :cond_26

    .line 208
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    move v1, v2

    .line 209
    goto :goto_14

    .line 211
    :cond_26
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 212
    if-eq v0, v4, :cond_34

    .line 214
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 215
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->unread(I)V

    move v1, v2

    .line 216
    goto :goto_14

    .line 218
    :cond_34
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipOldComment()V

    goto :goto_6

    .line 220
    :cond_38
    if-eqz p1, :cond_45

    if-ltz v0, :cond_43

    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_43
    :goto_43
    move v1, v0

    .line 223
    goto :goto_14

    .line 220
    :cond_45
    const/16 v3, 0x20

    if-eq v0, v3, :cond_6

    const/16 v3, 0x9

    if-eq v0, v3, :cond_6

    goto :goto_43
.end method

.method final skipToSemicolon()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 233
    .local v0, "next":I
    if-ltz v0, :cond_a

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 236
    :cond_a
    return-void
.end method

.method public syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 4405
    const-string v0, "XPST0003"

    invoke-virtual {p0, p1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 4379
    const/16 v1, 0x65

    invoke-virtual {p0, v1, p1, p2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4380
    iget-boolean v1, p0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-eqz v1, :cond_35

    .line 4382
    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 4383
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    .line 4384
    iput v2, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    .line 4385
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v1

    check-cast v1, Lgnu/mapping/InPort;

    iput-char v3, v1, Lgnu/mapping/InPort;->readState:C

    .line 4388
    :cond_1b
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 4389
    .local v0, "ch":I
    if-gez v0, :cond_2b

    .line 4397
    :goto_21
    new-instance v1, Lgnu/text/SyntaxException;

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v1

    .line 4391
    :cond_2b
    const/16 v1, 0xd

    if-eq v0, v1, :cond_31

    if-ne v0, v3, :cond_1b

    .line 4393
    :cond_31
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto :goto_21

    .line 4399
    .end local v0    # "ch":I
    :cond_35
    new-instance v1, Lgnu/expr/ErrorExp;

    invoke-direct {v1, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method tokenString()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/16 v4, 0x22

    .line 4311
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    sparse-switch v3, :sswitch_data_c8

    .line 4333
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x64

    if-lt v3, v4, :cond_8c

    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    add-int/lit8 v3, v3, -0x64

    const/16 v4, 0xd

    if-ge v3, v4, :cond_8c

    .line 4335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    add-int/lit8 v5, v5, -0x64

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::-axis("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4338
    :goto_3d
    return-object v3

    .line 4314
    :sswitch_3e
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 4315
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4316
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_47
    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-ge v1, v3, :cond_5a

    .line 4318
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v0, v3, v1

    .line 4319
    .local v0, "ch":C
    if-ne v0, v4, :cond_54

    .line 4320
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4321
    :cond_54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4316
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 4323
    .end local v0    # "ch":C
    :cond_5a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4324
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3d

    .line 4326
    .end local v1    # "i":I
    .end local v2    # "sbuf":Ljava/lang/StringBuffer;
    :sswitch_62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v6, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v4, v5, v7, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " + \'(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3d

    .line 4329
    :sswitch_7f
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v5, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v3, v4, v7, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3d

    .line 4331
    :sswitch_89
    const-string v3, "<EOF>"

    goto :goto_3d

    .line 4336
    :cond_8c
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x20

    if-lt v3, v4, :cond_c0

    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_c0

    .line 4337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3d

    .line 4338
    :cond_c0
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3d

    .line 4311
    :sswitch_data_c8
    .sparse-switch
        -0x1 -> :sswitch_89
        0x22 -> :sswitch_3e
        0x41 -> :sswitch_7f
        0x46 -> :sswitch_62
        0x51 -> :sswitch_7f
    .end sparse-switch
.end method

.method warnOldVersion(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 4425
    sget-boolean v0, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4426
    :cond_c
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x65

    :goto_16
    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 4427
    :cond_19
    return-void

    .line 4426
    :cond_1a
    const/16 v0, 0x77

    goto :goto_16
.end method

.method wrapWithBaseUri(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 9
    .param p1, "exp"    # Lgnu/expr/Expression;

    .prologue
    .line 2724
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getStaticBaseUri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 2726
    .end local p1    # "exp":Lgnu/expr/Expression;
    :goto_6
    return-object p1

    .restart local p1    # "exp":Lgnu/expr/Expression;
    :cond_7
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v1, Lgnu/kawa/xml/MakeWithBaseUri;->makeWithBaseUri:Lgnu/kawa/xml/MakeWithBaseUri;

    const/4 v2, 0x2

    new-array v2, v2, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    new-instance v4, Lgnu/expr/ApplyExp;

    new-instance v5, Lgnu/expr/ReferenceExp;

    sget-object v6, Lgnu/xquery/lang/XQResolveNames;->staticBaseUriDecl:Lgnu/expr/Declaration;

    invoke-direct {v5, v6}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    sget-object v6, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v4, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {v0, p1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_6
.end method
