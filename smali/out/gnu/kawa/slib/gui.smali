.class public Lgnu/kawa/slib/gui;
.super Lgnu/expr/ModuleBody;
.source "gui.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/gui;

.field public static final Button:Lgnu/expr/ModuleMethod;

.field public static final Column:Lgnu/expr/ModuleMethod;

.field public static final Image:Lkawa/lang/Macro;

.field public static final Label:Lgnu/expr/ModuleMethod;

.field static final Lit0:Ljava/lang/Class;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lkawa/lang/SyntaxRules;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lkawa/lang/SyntaxRules;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit30:Lgnu/mapping/SimpleSymbol;

.field static final Lit31:Lgnu/mapping/SimpleSymbol;

.field static final Lit32:Lgnu/mapping/SimpleSymbol;

.field static final Lit33:Lgnu/mapping/SimpleSymbol;

.field static final Lit34:Lgnu/mapping/SimpleSymbol;

.field static final Lit35:Lgnu/mapping/SimpleSymbol;

.field static final Lit36:Lgnu/mapping/SimpleSymbol;

.field static final Lit37:Lgnu/mapping/SimpleSymbol;

.field static final Lit38:Lgnu/mapping/SimpleSymbol;

.field static final Lit39:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit40:Lgnu/mapping/SimpleSymbol;

.field static final Lit41:Lgnu/mapping/SimpleSymbol;

.field static final Lit42:Lgnu/mapping/SimpleSymbol;

.field static final Lit43:Lgnu/mapping/SimpleSymbol;

.field static final Lit44:Lgnu/math/IntNum;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lkawa/lang/SyntaxRules;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final Row:Lgnu/expr/ModuleMethod;

.field public static final Text:Lgnu/expr/ModuleMethod;

.field public static final Window:Lgnu/expr/ModuleMethod;

.field public static final as$Mncolor:Lgnu/expr/ModuleMethod;

.field public static final button:Lgnu/expr/ModuleMethod;

.field public static final image$Mnheight:Lgnu/expr/ModuleMethod;

.field public static final image$Mnread:Lgnu/expr/ModuleMethod;

.field public static final image$Mnwidth:Lgnu/expr/ModuleMethod;

.field static final loc$$Lsgnu$Dtkawa$Dtmodels$DtColumn$Gr:Lgnu/mapping/Location;

.field static final loc$$Lsgnu$Dtkawa$Dtmodels$DtRow$Gr:Lgnu/mapping/Location;

.field static final loc$$St$DtgetHeight:Lgnu/mapping/Location;

.field static final loc$$St$DtgetWidth:Lgnu/mapping/Location;

.field public static final process$Mnkeywords:Lkawa/lang/Macro;

.field public static final run$Mnapplication:Lkawa/lang/Macro;

.field public static final set$Mncontent:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 24

    const/4 v3, 0x1

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    sput-object v3, Lgnu/kawa/slib/gui;->Lit44:Lgnu/math/IntNum;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "value"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit43:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "name"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit42:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "invoke"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit41:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "getName"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit40:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "quote"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit39:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "attr"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit38:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "<gnu.kawa.xml.KAttr>"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit37:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "instance?"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit36:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "+"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "loop"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "<object>"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit33:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "primitive-array-get"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit32:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "quasiquote"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "$lookup$"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "arg"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "num-args"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "i"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "<int>"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "::"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lkawa/lang/SyntaxRules;

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v5, "run-application"

    invoke-direct {v3, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit23:Lgnu/mapping/SimpleSymbol;

    aput-object v3, v11, v4

    const/4 v3, 0x1

    new-array v12, v3, [Lkawa/lang/SyntaxRule;

    const/4 v13, 0x0

    new-instance v3, Lkawa/lang/SyntaxRule;

    new-instance v4, Lkawa/lang/SyntaxPattern;

    const-string v5, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v5, "\u0001"

    const-string v6, "\u0011\u0018\u0004\u0008\u0003"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/gui;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "gnu.kawa.models.Window"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v17, "open"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-static {v0, v9}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    invoke-static {v8, v9}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    const-string v9, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0xb7007

    move/from16 v0, v16

    invoke-static {v15, v8, v9, v0}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v7, v14

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v3, v12, v13

    const/4 v3, 0x1

    invoke-direct {v10, v11, v12, v3}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v10, Lgnu/kawa/slib/gui;->Lit24:Lkawa/lang/SyntaxRules;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "Window"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "set-content"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "Column"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "Row"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "Text"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "Label"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "image-height"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "image-width"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "image-read"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lkawa/lang/SyntaxRules;

    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v5, "text-field"

    invoke-direct {v3, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    aput-object v3, v10, v4

    const/4 v3, 0x1

    new-array v11, v3, [Lkawa/lang/SyntaxRule;

    const/4 v12, 0x0

    new-instance v3, Lkawa/lang/SyntaxRule;

    new-instance v4, Lkawa/lang/SyntaxPattern;

    const-string v5, "\u000c\u0018\u0003"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v5, "\u0000"

    const-string v6, "\u0011\u0018\u0004\u0011\u0018\u000c\u0002"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v14, "make"

    invoke-direct {v8, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    aput-object v8, v7, v13

    const/4 v13, 0x1

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v14, "<gnu.kawa.models.DrawImage>"

    invoke-direct {v8, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    aput-object v8, v7, v13

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v3, v11, v12

    const/4 v3, 0x1

    invoke-direct {v9, v10, v11, v3}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v9, Lgnu/kawa/slib/gui;->Lit13:Lkawa/lang/SyntaxRules;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "Image"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "Button"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "button"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "as-color"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lkawa/lang/SyntaxRules;

    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v5, "process-keywords"

    invoke-direct {v3, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v3, v10, v4

    const/4 v3, 0x1

    new-array v11, v3, [Lkawa/lang/SyntaxRule;

    const/4 v12, 0x0

    new-instance v3, Lkawa/lang/SyntaxRule;

    new-instance v4, Lkawa/lang/SyntaxPattern;

    const-string v5, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u000c\u001f\u0008"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v5, "\u0001\u0001\u0001\u0001"

    const-string v6, "\u0011\u0018\u0004\u0091\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0011\u0018$\t\u000b\u0018,\u0008\u0011\u0018\u0004\u0011\u00184\u0011\u0018<\u0008\u0011\u0018D\u0011\u0018L\u0008\u0011\u0018\u0004a\u0008\u0011\u0018T\u0008\u0011\u0018\\\t\u000b\u0018d\u0008\u0011\u0018l\u00a9\u0011\u0018ty\t\u0013\t\u0003\u0011\u0018|\u0008\u0011\u0018\u0084\t\u000b\u0018\u008c\u0018\u0094\u0099\u0011\u0018\u009ci\u0011\u0018\u00a4\u0011\u0018\u00ac\u0008\t\u0013\t\u0003\u0018\u00b4\u0018\u00bc\u0008\u0011\u0018\u00c41\t\u001b\t\u0003\u0018\u00cc\u0018\u00d4"

    const/16 v7, 0x1b

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v14, "let"

    invoke-direct {v8, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    aput-object v8, v7, v13

    const/4 v8, 0x1

    sget-object v13, Lgnu/kawa/slib/gui;->Lit28:Lgnu/mapping/SimpleSymbol;

    aput-object v13, v7, v8

    const/4 v8, 0x2

    sget-object v13, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    aput-object v13, v7, v8

    const/4 v8, 0x3

    sget-object v13, Lgnu/kawa/slib/gui;->Lit26:Lgnu/mapping/SimpleSymbol;

    aput-object v13, v7, v8

    const/4 v13, 0x4

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v14, "field"

    invoke-direct {v8, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    aput-object v8, v7, v13

    const/4 v13, 0x5

    sget-object v14, Lgnu/kawa/slib/gui;->Lit39:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v15, "length"

    invoke-direct {v8, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v17, 0x402a

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v8, v15, v0, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v16, 0x402a

    move/from16 v0, v16

    invoke-static {v14, v8, v15, v0}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v16, 0x4029

    move/from16 v0, v16

    invoke-static {v8, v14, v15, v0}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v7, v13

    const/4 v8, 0x6

    sget-object v13, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    aput-object v13, v7, v8

    const/4 v8, 0x7

    sget-object v13, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit26:Lgnu/mapping/SimpleSymbol;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v16

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v19, 0x501d

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v18, 0x5017

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v17, 0x5014

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v16, 0x5011

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v16, 0x5010

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    aput-object v13, v7, v8

    const/16 v13, 0x8

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v14, "if"

    invoke-direct {v8, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    aput-object v8, v7, v13

    const/16 v13, 0x9

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v14, "<"

    invoke-direct {v8, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit28:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v18, 0x6011

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v17, 0x600f

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v16, 0x600c

    move/from16 v0, v16

    invoke-static {v8, v14, v15, v0}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v7, v13

    const/16 v8, 0xa

    sget-object v13, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    aput-object v13, v7, v8

    const/16 v8, 0xb

    sget-object v13, Lgnu/kawa/slib/gui;->Lit32:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/kawa/slib/gui;->Lit33:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v17, 0x7026

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v16, 0x7011

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    aput-object v13, v7, v8

    const/16 v8, 0xc

    sget-object v13, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v16, 0x7035

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    aput-object v13, v7, v8

    const/16 v13, 0xd

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v14, "cond"

    invoke-direct {v8, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    aput-object v8, v7, v13

    const/16 v13, 0xe

    sget-object v14, Lgnu/kawa/slib/gui;->Lit36:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v16, "<gnu.expr.Keyword>"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0x801d

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v8, v0, v1, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v17, 0x8019

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v8, v0, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0x800e

    move/from16 v0, v16

    invoke-static {v14, v8, v15, v0}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v7, v13

    const/16 v13, 0xf

    sget-object v14, Lgnu/kawa/slib/gui;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v15, "gnu.expr.Keyword"

    invoke-direct {v8, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit31:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit40:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static/range {v16 .. v17}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static/range {v15 .. v16}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v15

    invoke-static {v8, v15}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0xa00a

    move/from16 v0, v16

    invoke-static {v14, v8, v15, v0}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    sget-object v14, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v17, 0xa023

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0xa009

    move/from16 v0, v16

    invoke-static {v8, v14, v15, v0}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v7, v13

    const/16 v8, 0x10

    sget-object v13, Lgnu/kawa/slib/gui;->Lit32:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/kawa/slib/gui;->Lit33:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v17, 0xb01f

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0xb00a

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    aput-object v13, v7, v8

    const/16 v8, 0x11

    sget-object v13, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit44:Lgnu/math/IntNum;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0xb033

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v17, 0xb031

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0xb02e

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0xb02e

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    aput-object v13, v7, v8

    const/16 v8, 0x12

    sget-object v13, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v16

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0xc012

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0xc010

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v17, 0xc00d

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v17, 0xc00d

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0xc007

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0xc007

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    aput-object v13, v7, v8

    const/16 v8, 0x13

    sget-object v13, Lgnu/kawa/slib/gui;->Lit36:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit37:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0xd016

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v17, 0xd012

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0xd007

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    aput-object v13, v7, v8

    const/16 v13, 0x14

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v14, "let*"

    invoke-direct {v8, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    aput-object v8, v7, v13

    const/16 v13, 0x15

    sget-object v8, Lgnu/kawa/slib/gui;->Lit38:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit37:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0xe02c

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0xe017

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v17, 0xe014

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0xe00e

    move/from16 v0, v16

    invoke-static {v8, v14, v15, v0}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    sget-object v15, Lgnu/kawa/slib/gui;->Lit42:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v17, "<java.lang.String>"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit41:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/kawa/slib/gui;->Lit38:Lgnu/mapping/SimpleSymbol;

    sget-object v19, Lgnu/kawa/slib/gui;->Lit39:Lgnu/mapping/SimpleSymbol;

    sget-object v20, Lgnu/kawa/slib/gui;->Lit40:Lgnu/mapping/SimpleSymbol;

    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v22, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v23, 0xf031

    invoke-static/range {v20 .. v23}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v20

    const-string v21, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v22, 0xf031

    invoke-static/range {v19 .. v22}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v19

    sget-object v20, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v21, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v22, 0xf030

    invoke-static/range {v19 .. v22}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v19

    const-string v20, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v21, 0xf02b

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    const-string v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v20, 0xf023

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v20, 0xf023

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0xf010

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v8, v0, v1, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0xf00d

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v8, v1, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v17, 0xf007

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v8, v0, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    sget-object v16, Lgnu/kawa/slib/gui;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit41:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/kawa/slib/gui;->Lit38:Lgnu/mapping/SimpleSymbol;

    sget-object v19, Lgnu/kawa/slib/gui;->Lit39:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v20, "getObjectValue"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sget-object v20, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v21, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v22, 0x1001c

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v8, v0, v1, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v20, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v21, 0x1001c

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v8, v1, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v20, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v21, 0x1001b

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v8, v0, v1, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v20, 0x10016

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v8, v1, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0x1000e

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v8, v1, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0x1000e

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v8, v0, v1, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0x10007

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v8, v1, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0x10007

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v8, v0, v1, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v17, 0xf007

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v8, v0, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0xe00d

    move/from16 v0, v16

    invoke-static {v14, v8, v15, v0}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v7, v13

    const/16 v8, 0x16

    sget-object v13, Lgnu/kawa/slib/gui;->Lit42:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/kawa/slib/gui;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v17, 0x11022

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0x1101d

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    aput-object v13, v7, v8

    const/16 v8, 0x17

    sget-object v13, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit44:Lgnu/math/IntNum;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0x12012

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0x12010

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v17, 0x1200d

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v17, 0x1200d

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0x12007

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0x12007

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    aput-object v13, v7, v8

    const/16 v13, 0x18

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v14, "else"

    invoke-direct {v8, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    aput-object v8, v7, v13

    const/16 v8, 0x19

    sget-object v13, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0x1401f

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    aput-object v13, v7, v8

    const/16 v8, 0x1a

    sget-object v13, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit44:Lgnu/math/IntNum;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0x15012

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0x15010

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v17, 0x1500d

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v17, 0x1500d

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0x15007

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v16, 0x15007

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    aput-object v13, v7, v8

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v3, v11, v12

    const/4 v3, 0x4

    invoke-direct {v9, v10, v11, v3}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v9, Lgnu/kawa/slib/gui;->Lit8:Lkawa/lang/SyntaxRules;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "<gnu.kawa.models.Column>"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "<gnu.kawa.models.Row>"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "*.getHeight"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "*.getWidth"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "cell-spacing"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "text"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit1:Lgnu/mapping/SimpleSymbol;

    const-class v3, Ljava/awt/Color;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit0:Ljava/lang/Class;

    new-instance v3, Lgnu/kawa/slib/gui;

    invoke-direct {v3}, Lgnu/kawa/slib/gui;-><init>()V

    sput-object v3, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    sget-object v3, Lgnu/kawa/slib/gui;->Lit3:Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v3

    sput-object v3, Lgnu/kawa/slib/gui;->loc$$St$DtgetWidth:Lgnu/mapping/Location;

    sget-object v3, Lgnu/kawa/slib/gui;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v3

    sput-object v3, Lgnu/kawa/slib/gui;->loc$$St$DtgetHeight:Lgnu/mapping/Location;

    sget-object v3, Lgnu/kawa/slib/gui;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v3

    sput-object v3, Lgnu/kawa/slib/gui;->loc$$Lsgnu$Dtkawa$Dtmodels$DtRow$Gr:Lgnu/mapping/Location;

    sget-object v3, Lgnu/kawa/slib/gui;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v3

    sput-object v3, Lgnu/kawa/slib/gui;->loc$$Lsgnu$Dtkawa$Dtmodels$DtColumn$Gr:Lgnu/mapping/Location;

    sget-object v3, Lgnu/kawa/slib/gui;->Lit7:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lgnu/kawa/slib/gui;->Lit8:Lkawa/lang/SyntaxRules;

    sget-object v5, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    invoke-static {v3, v4, v5}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v3

    sput-object v3, Lgnu/kawa/slib/gui;->process$Mnkeywords:Lkawa/lang/Macro;

    new-instance v3, Lgnu/expr/ModuleMethod;

    sget-object v4, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    const/4 v5, 0x1

    sget-object v6, Lgnu/kawa/slib/gui;->Lit9:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/gui;->as$Mncolor:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x2

    sget-object v6, Lgnu/kawa/slib/gui;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/16 v7, -0x1000

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/gui;->button:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x3

    sget-object v6, Lgnu/kawa/slib/gui;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/16 v7, -0x1000

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/gui;->Button:Lgnu/expr/ModuleMethod;

    sget-object v3, Lgnu/kawa/slib/gui;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit13:Lkawa/lang/SyntaxRules;

    sget-object v6, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    invoke-static {v3, v5, v6}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v3

    sput-object v3, Lgnu/kawa/slib/gui;->Image:Lkawa/lang/Macro;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x4

    sget-object v6, Lgnu/kawa/slib/gui;->Lit14:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/gui;->image$Mnread:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x5

    sget-object v6, Lgnu/kawa/slib/gui;->Lit15:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/gui;->image$Mnwidth:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x6

    sget-object v6, Lgnu/kawa/slib/gui;->Lit16:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/gui;->image$Mnheight:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x7

    sget-object v6, Lgnu/kawa/slib/gui;->Lit17:Lgnu/mapping/SimpleSymbol;

    const/16 v7, -0x1000

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/gui;->Label:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v5, 0x8

    sget-object v6, Lgnu/kawa/slib/gui;->Lit18:Lgnu/mapping/SimpleSymbol;

    const/16 v7, -0x1000

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/gui;->Text:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v5, 0x9

    sget-object v6, Lgnu/kawa/slib/gui;->Lit19:Lgnu/mapping/SimpleSymbol;

    const/16 v7, -0x1000

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/gui;->Row:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v5, 0xa

    sget-object v6, Lgnu/kawa/slib/gui;->Lit20:Lgnu/mapping/SimpleSymbol;

    const/16 v7, -0x1000

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/gui;->Column:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v5, 0xb

    sget-object v6, Lgnu/kawa/slib/gui;->Lit21:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0x2002

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/gui;->set$Mncontent:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v5, 0xc

    sget-object v6, Lgnu/kawa/slib/gui;->Lit22:Lgnu/mapping/SimpleSymbol;

    const/16 v7, -0x1000

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/gui;->Window:Lgnu/expr/ModuleMethod;

    sget-object v3, Lgnu/kawa/slib/gui;->Lit23:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lgnu/kawa/slib/gui;->Lit24:Lkawa/lang/SyntaxRules;

    sget-object v5, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    invoke-static {v3, v4, v5}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v3

    sput-object v3, Lgnu/kawa/slib/gui;->run$Mnapplication:Lkawa/lang/Macro;

    sget-object v3, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    invoke-virtual {v3}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs Button([Ljava/lang/Object;)Lgnu/kawa/models/Button;
    .registers 13
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 60
    new-instance v3, Lgnu/kawa/models/Button;

    invoke-direct {v3}, Lgnu/kawa/models/Button;-><init>()V

    .line 62
    .local v3, "button":Lgnu/kawa/models/Button;
    array-length v6, p0

    .local v6, "num$Mnargs":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    if-ge v4, v6, :cond_4f

    aget-object v1, p0, v4

    .local v1, "arg":Ljava/lang/Object;
    instance-of v8, v1, Lgnu/expr/Keyword;

    if-eqz v8, :cond_1f

    :try_start_f
    check-cast v1, Lgnu/expr/Keyword;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_11} :catch_3b

    .end local v1    # "arg":Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    aget-object v9, p0, v9

    invoke-static {v3, v8, v9}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v4, v4, 0x2

    goto :goto_7

    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_1f
    instance-of v8, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_35

    .line 62
    :try_start_23
    move-object v0, v1

    check-cast v0, Lgnu/kawa/xml/KAttr;

    move-object v2, v0
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_27} :catch_45

    .local v2, "attr":Lgnu/kawa/xml/KAttr;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "value":Ljava/lang/Object;
    invoke-static {v3, v5, v7}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 62
    .end local v2    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_35
    invoke-static {v3, v1}, Lgnu/kawa/slib/gui;->buttonNonKeyword(Lgnu/kawa/models/Button;Ljava/lang/Object;)Ljava/lang/Boolean;

    .line 21
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 10
    :catch_3b
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "gnu.expr.Keyword.getName()"

    const/4 v11, 0x1

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 14
    :catch_45
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "attr"

    const/4 v11, -0x2

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 63
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_4f
    return-object v3
.end method

.method public static varargs Column([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    .line 150
    sget-object v8, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    sget-object v9, Lgnu/kawa/slib/gui;->loc$$Lsgnu$Dtkawa$Dtmodels$DtColumn$Gr:Lgnu/mapping/Location;

    :try_start_5
    invoke-virtual {v9}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_8
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_5 .. :try_end_8} :catch_4f

    move-result-object v9

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 152
    .local v4, "instance":Ljava/lang/Object;
    array-length v6, p0

    .local v6, "num$Mnargs":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v6, :cond_89

    aget-object v1, p0, v3

    .local v1, "arg":Ljava/lang/Object;
    instance-of v8, v1, Lgnu/expr/Keyword;

    if-eqz v8, :cond_2b

    :try_start_17
    move-object v0, v4

    check-cast v0, Lgnu/kawa/models/Box;

    move-object v8, v0
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_1b} :catch_5a

    :try_start_1b
    check-cast v1, Lgnu/expr/Keyword;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_1d} :catch_63

    .end local v1    # "arg":Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    aget-object v10, p0, v10

    invoke-static {v8, v9, v10}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v3, v3, 0x2

    goto :goto_f

    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_2b
    instance-of v8, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_45

    .line 152
    :try_start_2f
    move-object v0, v1

    check-cast v0, Lgnu/kawa/xml/KAttr;

    move-object v2, v0
    :try_end_33
    .catch Ljava/lang/ClassCastException; {:try_start_2f .. :try_end_33} :catch_6d

    .local v2, "attr":Lgnu/kawa/xml/KAttr;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "value":Ljava/lang/Object;
    :try_start_3b
    move-object v0, v4

    check-cast v0, Lgnu/kawa/models/Box;

    move-object v8, v0
    :try_end_3f
    .catch Ljava/lang/ClassCastException; {:try_start_3b .. :try_end_3f} :catch_77

    invoke-static {v8, v5, v7}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 152
    .end local v2    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_45
    :try_start_45
    move-object v0, v4

    check-cast v0, Lgnu/kawa/models/Box;

    move-object v8, v0
    :try_end_49
    .catch Ljava/lang/ClassCastException; {:try_start_45 .. :try_end_49} :catch_80

    invoke-static {v8, v1}, Lgnu/kawa/slib/gui;->boxNonKeyword(Lgnu/kawa/models/Box;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 153
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v6    # "num$Mnargs":I
    :catch_4f
    move-exception v8

    const-string v9, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v10, 0x97

    const/16 v11, 0x19

    invoke-virtual {v8, v9, v10, v11}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v8

    .line 152
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v3    # "i":I
    .restart local v4    # "instance":Ljava/lang/Object;
    .restart local v6    # "num$Mnargs":I
    :catch_5a
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "box-keyword"

    invoke-direct {v9, v8, v10, v11, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 10
    :catch_63
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "gnu.expr.Keyword.getName()"

    const/4 v11, 0x1

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 14
    :catch_6d
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "attr"

    const/4 v11, -0x2

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 152
    .restart local v2    # "attr":Lgnu/kawa/xml/KAttr;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/Object;
    :catch_77
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "box-keyword"

    invoke-direct {v9, v8, v10, v11, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .end local v2    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :catch_80
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "box-non-keyword"

    invoke-direct {v9, v8, v10, v11, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 153
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_89
    return-object v4
.end method

.method public static varargs Label([Ljava/lang/Object;)Lgnu/kawa/models/Label;
    .registers 13
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 100
    new-instance v4, Lgnu/kawa/models/Label;

    invoke-direct {v4}, Lgnu/kawa/models/Label;-><init>()V

    .line 102
    .local v4, "instance":Lgnu/kawa/models/Label;
    array-length v6, p0

    .local v6, "num$Mnargs":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v6, :cond_4f

    aget-object v1, p0, v3

    .local v1, "arg":Ljava/lang/Object;
    instance-of v8, v1, Lgnu/expr/Keyword;

    if-eqz v8, :cond_1f

    :try_start_f
    check-cast v1, Lgnu/expr/Keyword;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_11} :catch_3b

    .end local v1    # "arg":Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    aget-object v9, p0, v9

    invoke-static {v4, v8, v9}, Lgnu/kawa/slib/gui;->labelKeyword(Lgnu/kawa/models/Label;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v3, v3, 0x2

    goto :goto_7

    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_1f
    instance-of v8, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_35

    .line 102
    :try_start_23
    move-object v0, v1

    check-cast v0, Lgnu/kawa/xml/KAttr;

    move-object v2, v0
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_27} :catch_45

    .local v2, "attr":Lgnu/kawa/xml/KAttr;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "value":Ljava/lang/Object;
    invoke-static {v4, v5, v7}, Lgnu/kawa/slib/gui;->labelKeyword(Lgnu/kawa/models/Label;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 102
    .end local v2    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_35
    invoke-static {v4, v1}, Lgnu/kawa/slib/gui;->labelNonKeyword(Lgnu/kawa/models/Label;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 10
    :catch_3b
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "gnu.expr.Keyword.getName()"

    const/4 v11, 0x1

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 14
    :catch_45
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "attr"

    const/4 v11, -0x2

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 103
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_4f
    return-object v4
.end method

.method public static varargs Row([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    .line 145
    sget-object v8, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    sget-object v9, Lgnu/kawa/slib/gui;->loc$$Lsgnu$Dtkawa$Dtmodels$DtRow$Gr:Lgnu/mapping/Location;

    :try_start_5
    invoke-virtual {v9}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_8
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_5 .. :try_end_8} :catch_4f

    move-result-object v9

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 147
    .local v4, "instance":Ljava/lang/Object;
    array-length v6, p0

    .local v6, "num$Mnargs":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v6, :cond_89

    aget-object v1, p0, v3

    .local v1, "arg":Ljava/lang/Object;
    instance-of v8, v1, Lgnu/expr/Keyword;

    if-eqz v8, :cond_2b

    :try_start_17
    move-object v0, v4

    check-cast v0, Lgnu/kawa/models/Box;

    move-object v8, v0
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_1b} :catch_5a

    :try_start_1b
    check-cast v1, Lgnu/expr/Keyword;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_1d} :catch_63

    .end local v1    # "arg":Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    aget-object v10, p0, v10

    invoke-static {v8, v9, v10}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v3, v3, 0x2

    goto :goto_f

    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_2b
    instance-of v8, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_45

    .line 147
    :try_start_2f
    move-object v0, v1

    check-cast v0, Lgnu/kawa/xml/KAttr;

    move-object v2, v0
    :try_end_33
    .catch Ljava/lang/ClassCastException; {:try_start_2f .. :try_end_33} :catch_6d

    .local v2, "attr":Lgnu/kawa/xml/KAttr;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "value":Ljava/lang/Object;
    :try_start_3b
    move-object v0, v4

    check-cast v0, Lgnu/kawa/models/Box;

    move-object v8, v0
    :try_end_3f
    .catch Ljava/lang/ClassCastException; {:try_start_3b .. :try_end_3f} :catch_77

    invoke-static {v8, v5, v7}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 147
    .end local v2    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_45
    :try_start_45
    move-object v0, v4

    check-cast v0, Lgnu/kawa/models/Box;

    move-object v8, v0
    :try_end_49
    .catch Ljava/lang/ClassCastException; {:try_start_45 .. :try_end_49} :catch_80

    invoke-static {v8, v1}, Lgnu/kawa/slib/gui;->boxNonKeyword(Lgnu/kawa/models/Box;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 148
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v6    # "num$Mnargs":I
    :catch_4f
    move-exception v8

    const-string v9, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v10, 0x92

    const/16 v11, 0x19

    invoke-virtual {v8, v9, v10, v11}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v8

    .line 147
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v3    # "i":I
    .restart local v4    # "instance":Ljava/lang/Object;
    .restart local v6    # "num$Mnargs":I
    :catch_5a
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "box-keyword"

    invoke-direct {v9, v8, v10, v11, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 10
    :catch_63
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "gnu.expr.Keyword.getName()"

    const/4 v11, 0x1

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 14
    :catch_6d
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "attr"

    const/4 v11, -0x2

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 147
    .restart local v2    # "attr":Lgnu/kawa/xml/KAttr;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/Object;
    :catch_77
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "box-keyword"

    invoke-direct {v9, v8, v10, v11, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .end local v2    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :catch_80
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "box-non-keyword"

    invoke-direct {v9, v8, v10, v11, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 148
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_89
    return-object v4
.end method

.method public static varargs Text([Ljava/lang/Object;)Lgnu/kawa/models/Text;
    .registers 13
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 123
    new-instance v4, Lgnu/kawa/models/Text;

    invoke-direct {v4}, Lgnu/kawa/models/Text;-><init>()V

    .line 125
    .local v4, "instance":Lgnu/kawa/models/Text;
    array-length v6, p0

    .local v6, "num$Mnargs":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v6, :cond_4f

    aget-object v1, p0, v3

    .local v1, "arg":Ljava/lang/Object;
    instance-of v8, v1, Lgnu/expr/Keyword;

    if-eqz v8, :cond_1f

    :try_start_f
    check-cast v1, Lgnu/expr/Keyword;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_11} :catch_3b

    .end local v1    # "arg":Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    aget-object v9, p0, v9

    invoke-static {v4, v8, v9}, Lgnu/kawa/slib/gui;->textKeyword(Lgnu/kawa/models/Text;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v3, v3, 0x2

    goto :goto_7

    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_1f
    instance-of v8, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_35

    .line 125
    :try_start_23
    move-object v0, v1

    check-cast v0, Lgnu/kawa/xml/KAttr;

    move-object v2, v0
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_27} :catch_45

    .local v2, "attr":Lgnu/kawa/xml/KAttr;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "value":Ljava/lang/Object;
    invoke-static {v4, v5, v7}, Lgnu/kawa/slib/gui;->textKeyword(Lgnu/kawa/models/Text;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 125
    .end local v2    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_35
    invoke-static {v4, v1}, Lgnu/kawa/slib/gui;->textNonKeyword(Lgnu/kawa/models/Text;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 10
    :catch_3b
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "gnu.expr.Keyword.getName()"

    const/4 v11, 0x1

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 14
    :catch_45
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "attr"

    const/4 v11, -0x2

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 126
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_4f
    return-object v4
.end method

.method public static varargs Window([Ljava/lang/Object;)Lgnu/kawa/models/Window;
    .registers 13
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 174
    invoke-static {}, Lgnu/kawa/models/Display;->getInstance()Lgnu/kawa/models/Display;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/kawa/models/Display;->makeWindow()Lgnu/kawa/models/Window;

    move-result-object v4

    .line 177
    .local v4, "instance":Lgnu/kawa/models/Window;
    array-length v6, p0

    .local v6, "num$Mnargs":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v6, :cond_52

    aget-object v1, p0, v3

    .local v1, "arg":Ljava/lang/Object;
    instance-of v8, v1, Lgnu/expr/Keyword;

    if-eqz v8, :cond_22

    :try_start_12
    check-cast v1, Lgnu/expr/Keyword;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_14} :catch_3e

    .end local v1    # "arg":Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    aget-object v9, p0, v9

    invoke-static {v4, v8, v9}, Lgnu/kawa/slib/gui;->windowKeyword(Lgnu/kawa/models/Window;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v3, v3, 0x2

    goto :goto_a

    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_22
    instance-of v8, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_38

    .line 177
    :try_start_26
    move-object v0, v1

    check-cast v0, Lgnu/kawa/xml/KAttr;

    move-object v2, v0
    :try_end_2a
    .catch Ljava/lang/ClassCastException; {:try_start_26 .. :try_end_2a} :catch_48

    .local v2, "attr":Lgnu/kawa/xml/KAttr;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "value":Ljava/lang/Object;
    invoke-static {v4, v5, v7}, Lgnu/kawa/slib/gui;->windowKeyword(Lgnu/kawa/models/Window;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 177
    .end local v2    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_38
    invoke-static {v4, v1}, Lgnu/kawa/slib/gui;->windowNonKeyword(Lgnu/kawa/models/Window;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 10
    :catch_3e
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "gnu.expr.Keyword.getName()"

    const/4 v11, 0x1

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 14
    :catch_48
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "attr"

    const/4 v11, -0x2

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 178
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_52
    return-object v4
.end method

.method public static asColor(Ljava/lang/Object;)Ljava/awt/Color;
    .registers 5
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 23
    instance-of v0, p0, Ljava/awt/Color;

    if-eqz v0, :cond_7

    .line 25
    check-cast p0, Ljava/awt/Color;

    .line 31
    .end local p0    # "value":Ljava/lang/Object;
    :goto_6
    return-object p0

    .line 25
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    .line 27
    new-instance v0, Ljava/awt/Color;

    :try_start_d
    check-cast p0, Ljava/lang/Integer;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_37

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/awt/Color;-><init>(I)V

    move-object p0, v0

    goto :goto_6

    .restart local p0    # "value":Ljava/lang/Object;
    :cond_18
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_27

    .line 29
    new-instance v0, Ljava/awt/Color;

    invoke-static {p0}, Lgnu/math/IntNum;->intValue(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/awt/Color;-><init>(I)V

    move-object p0, v0

    goto :goto_6

    .line 31
    :cond_27
    sget-object v0, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    sget-object v1, Lgnu/kawa/slib/gui;->Lit0:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Color;

    move-object p0, v0

    goto :goto_6

    .line 27
    :catch_37
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "java.lang.Integer.intValue()"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method static asModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 137
    invoke-static {}, Lgnu/kawa/models/Display;->getInstance()Lgnu/kawa/models/Display;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/kawa/models/Display;->coerceToModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;

    move-result-object v0

    return-object v0
.end method

.method static boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "instance"    # Lgnu/kawa/models/Box;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 128
    sget-object v0, Lgnu/kawa/slib/gui;->Lit2:Lgnu/mapping/SimpleSymbol;

    if-ne p1, v0, :cond_b

    invoke-virtual {p0, p2}, Lgnu/kawa/models/Box;->setCellSpacing(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 135
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unknown box attribute ~s"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method static boxNonKeyword(Lgnu/kawa/models/Box;Ljava/lang/Object;)V
    .registers 3
    .param p0, "box"    # Lgnu/kawa/models/Box;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 140
    invoke-static {p1}, Lgnu/kawa/slib/gui;->asModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/models/Box;->add(Lgnu/kawa/models/Viewable;)V

    return-void
.end method

.method public static varargs button([Ljava/lang/Object;)Lgnu/kawa/models/Button;
    .registers 13
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 55
    new-instance v3, Lgnu/kawa/models/Button;

    invoke-direct {v3}, Lgnu/kawa/models/Button;-><init>()V

    .line 57
    .local v3, "button":Lgnu/kawa/models/Button;
    array-length v6, p0

    .local v6, "num$Mnargs":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    if-ge v4, v6, :cond_4f

    aget-object v1, p0, v4

    .local v1, "arg":Ljava/lang/Object;
    instance-of v8, v1, Lgnu/expr/Keyword;

    if-eqz v8, :cond_1f

    :try_start_f
    check-cast v1, Lgnu/expr/Keyword;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_11} :catch_3b

    .end local v1    # "arg":Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    aget-object v9, p0, v9

    invoke-static {v3, v8, v9}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v4, v4, 0x2

    goto :goto_7

    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_1f
    instance-of v8, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_35

    .line 57
    :try_start_23
    move-object v0, v1

    check-cast v0, Lgnu/kawa/xml/KAttr;

    move-object v2, v0
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_27} :catch_45

    .local v2, "attr":Lgnu/kawa/xml/KAttr;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "value":Ljava/lang/Object;
    invoke-static {v3, v5, v7}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 57
    .end local v2    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_35
    invoke-static {v3, v1}, Lgnu/kawa/slib/gui;->buttonNonKeyword(Lgnu/kawa/models/Button;Ljava/lang/Object;)Ljava/lang/Boolean;

    .line 21
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 10
    :catch_3b
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "gnu.expr.Keyword.getName()"

    const/4 v11, 0x1

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 14
    :catch_45
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "attr"

    const/4 v11, -0x2

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 58
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_4f
    return-object v3
.end method

.method static buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "button"    # Lgnu/kawa/models/Button;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    const-string v2, "foreground"

    if-ne p1, v2, :cond_11

    invoke-static {p2}, Lgnu/kawa/slib/gui;->asColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/models/Button;->setForeground(Ljava/awt/Color;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 49
    :goto_10
    return-object v0

    .line 33
    :cond_11
    const-string v2, "background"

    if-ne p1, v2, :cond_1f

    invoke-static {p2}, Lgnu/kawa/slib/gui;->asColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/models/Button;->setBackground(Ljava/awt/Color;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_10

    :cond_1f
    const-string v2, "action"

    if-ne p1, v2, :cond_29

    invoke-virtual {p0, p2}, Lgnu/kawa/models/Button;->setAction(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_10

    :cond_29
    const-string v2, "text"

    if-ne p1, v2, :cond_3b

    if-nez p2, :cond_36

    const/4 v0, 0x0

    :goto_30
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Button;->setText(Ljava/lang/String;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_10

    :cond_36
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_3b
    const-string v2, "disabled"

    if-ne p1, v2, :cond_4b

    :try_start_3f
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_41
    .catch Ljava/lang/ClassCastException; {:try_start_3f .. :try_end_41} :catch_5e

    if-eq p2, v2, :cond_49

    :goto_43
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Button;->setDisabled(Z)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_10

    :cond_49
    move v0, v1

    goto :goto_43

    .line 49
    :cond_4b
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "unknown button attribute ~s"

    aput-object v3, v2, v1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_10

    .line 48
    :catch_5e
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "gnu.kawa.models.Button.setDisabled(boolean)"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method static buttonNonKeyword(Lgnu/kawa/models/Button;Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "button"    # Lgnu/kawa/models/Button;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 51
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static imageHeight(Ljava/awt/image/BufferedImage;)I
    .registers 5
    .param p0, "image"    # Ljava/awt/image/BufferedImage;

    .prologue
    .line 76
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v1, Lgnu/kawa/slib/gui;->loc$$St$DtgetHeight:Lgnu/mapping/Location;

    :try_start_4
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_7
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_4 .. :try_end_7} :catch_13

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :catch_13
    move-exception v0

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v2, 0x4d

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0
.end method

.method public static imageRead(Lgnu/text/Path;)Ljava/awt/image/BufferedImage;
    .registers 2
    .param p0, "uri"    # Lgnu/text/Path;

    .prologue
    .line 70
    invoke-virtual {p0}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static imageWidth(Ljava/awt/image/BufferedImage;)I
    .registers 5
    .param p0, "image"    # Ljava/awt/image/BufferedImage;

    .prologue
    .line 73
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v1, Lgnu/kawa/slib/gui;->loc$$St$DtgetWidth:Lgnu/mapping/Location;

    :try_start_4
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_7
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_4 .. :try_end_7} :catch_13

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :catch_13
    move-exception v0

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v2, 0x4a

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0
.end method

.method static labelKeyword(Lgnu/kawa/models/Label;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "instance"    # Lgnu/kawa/models/Label;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 79
    sget-object v0, Lgnu/kawa/slib/gui;->Lit1:Lgnu/mapping/SimpleSymbol;

    if-ne p1, v0, :cond_13

    if-nez p2, :cond_e

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Label;->setText(Ljava/lang/String;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 90
    :goto_d
    return-object v0

    .line 79
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 90
    :cond_13
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unknown label attribute ~s"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d
.end method

.method static labelNonKeyword(Lgnu/kawa/models/Label;Ljava/lang/Object;)V
    .registers 3
    .param p0, "instance"    # Lgnu/kawa/models/Label;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 92
    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Label;->setText(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static setContent(Lgnu/kawa/models/Window;Ljava/lang/Object;)V
    .registers 2
    .param p0, "window"    # Lgnu/kawa/models/Window;
    .param p1, "pane"    # Ljava/lang/Object;

    .prologue
    .line 155
    invoke-interface {p0, p1}, Lgnu/kawa/models/Window;->setContent(Ljava/lang/Object;)V

    return-void
.end method

.method static textKeyword(Lgnu/kawa/models/Text;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "instance"    # Lgnu/kawa/models/Text;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 105
    sget-object v0, Lgnu/kawa/slib/gui;->Lit1:Lgnu/mapping/SimpleSymbol;

    if-ne p1, v0, :cond_13

    if-nez p2, :cond_e

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Text;->setText(Ljava/lang/String;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 116
    :goto_d
    return-object v0

    .line 105
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 116
    :cond_13
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unknown text attribute ~s"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d
.end method

.method static textNonKeyword(Lgnu/kawa/models/Text;Ljava/lang/Object;)V
    .registers 3
    .param p0, "instance"    # Lgnu/kawa/models/Text;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 118
    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Text;->setText(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method static windowKeyword(Lgnu/kawa/models/Window;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "instance"    # Lgnu/kawa/models/Window;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 158
    const-string v0, "title"

    if-ne p1, v0, :cond_13

    if-nez p2, :cond_e

    const/4 v0, 0x0

    :goto_8
    invoke-interface {p0, v0}, Lgnu/kawa/models/Window;->setTitle(Ljava/lang/String;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 167
    :goto_d
    return-object v0

    .line 158
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_13
    const-string v0, "content"

    if-ne p1, v0, :cond_1d

    invoke-interface {p0, p2}, Lgnu/kawa/models/Window;->setContent(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_d

    :cond_1d
    const-string v0, "menubar"

    if-ne p1, v0, :cond_27

    invoke-interface {p0, p2}, Lgnu/kawa/models/Window;->setMenuBar(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_d

    .line 167
    :cond_27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unknown window attribute ~s"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d
.end method

.method static windowNonKeyword(Lgnu/kawa/models/Window;Ljava/lang/Object;)V
    .registers 2
    .param p0, "instance"    # Lgnu/kawa/models/Window;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 169
    invoke-interface {p0, p1}, Lgnu/kawa/models/Window;->setContent(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_4a

    .line 76
    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    .line 23
    :pswitch_b
    invoke-static {p2}, Lgnu/kawa/slib/gui;->asColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object v0

    goto :goto_a

    .line 70
    :pswitch_10
    :try_start_10
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_13} :catch_2f

    move-result-object v0

    invoke-static {v0}, Lgnu/kawa/slib/gui;->imageRead(Lgnu/text/Path;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    goto :goto_a

    .line 73
    :pswitch_19
    :try_start_19
    check-cast p2, Ljava/awt/image/BufferedImage;
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_1b} :catch_38

    invoke-static {p2}, Lgnu/kawa/slib/gui;->imageWidth(Ljava/awt/image/BufferedImage;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_a

    .line 76
    :pswitch_24
    :try_start_24
    check-cast p2, Ljava/awt/image/BufferedImage;
    :try_end_26
    .catch Ljava/lang/ClassCastException; {:try_start_24 .. :try_end_26} :catch_41

    invoke-static {p2}, Lgnu/kawa/slib/gui;->imageHeight(Ljava/awt/image/BufferedImage;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_a

    .line 70
    :catch_2f
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "image-read"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 73
    :catch_38
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "image-width"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 76
    :catch_41
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "image-height"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_b
        :pswitch_6
        :pswitch_6
        :pswitch_10
        :pswitch_19
        :pswitch_24
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_e

    .line 155
    :try_start_6
    check-cast p2, Lgnu/kawa/models/Window;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_8} :catch_13

    invoke-static {p2, p3}, Lgnu/kawa/slib/gui;->setContent(Lgnu/kawa/models/Window;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_d
    return-object v0

    :cond_e
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    :catch_13
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "set-content"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_2e

    .line 174
    :pswitch_5
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_9
    return-object v0

    .line 55
    :pswitch_a
    invoke-static {p2}, Lgnu/kawa/slib/gui;->button([Ljava/lang/Object;)Lgnu/kawa/models/Button;

    move-result-object v0

    goto :goto_9

    .line 60
    :pswitch_f
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Button([Ljava/lang/Object;)Lgnu/kawa/models/Button;

    move-result-object v0

    goto :goto_9

    .line 100
    :pswitch_14
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Label([Ljava/lang/Object;)Lgnu/kawa/models/Label;

    move-result-object v0

    goto :goto_9

    .line 123
    :pswitch_19
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Text([Ljava/lang/Object;)Lgnu/kawa/models/Text;

    move-result-object v0

    goto :goto_9

    .line 145
    :pswitch_1e
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Row([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    .line 150
    :pswitch_23
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Column([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    .line 174
    :pswitch_28
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Window([Ljava/lang/Object;)Lgnu/kawa/models/Window;

    move-result-object v0

    goto :goto_9

    .line 4294967295
    nop

    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_a
        :pswitch_f
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_14
        :pswitch_19
        :pswitch_1e
        :pswitch_23
        :pswitch_5
        :pswitch_28
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    .prologue
    const v0, -0xbffff

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_3e

    .line 23
    :pswitch_a
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 76
    :cond_e
    :goto_e
    return v0

    :pswitch_f
    instance-of v2, p2, Ljava/awt/image/BufferedImage;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 73
    :pswitch_1b
    instance-of v2, p2, Ljava/awt/image/BufferedImage;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 70
    :pswitch_27
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 23
    :pswitch_35
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 4294967295
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_35
        :pswitch_a
        :pswitch_a
        :pswitch_27
        :pswitch_1b
        :pswitch_f
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_19

    .line 155
    instance-of v0, p2, Lgnu/kawa/models/Window;

    if-nez v0, :cond_e

    const v0, -0xbffff

    :goto_d
    return v0

    :cond_e
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x2

    iput v0, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    goto :goto_d

    :cond_19
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_d
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_3e

    .line 55
    :pswitch_7
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 174
    :goto_b
    return v0

    :pswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 150
    :pswitch_13
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 145
    :pswitch_1a
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 123
    :pswitch_21
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 100
    :pswitch_28
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 60
    :pswitch_2f
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 55
    :pswitch_36
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 4294967295
    nop

    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_36
        :pswitch_2f
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_28
        :pswitch_21
        :pswitch_1a
        :pswitch_13
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 1
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 23
    .local v0, "$result":Lgnu/lists/Consumer;
    return-void
.end method
