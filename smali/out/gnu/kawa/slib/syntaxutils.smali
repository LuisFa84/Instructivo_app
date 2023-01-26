.class public Lgnu/kawa/slib/syntaxutils;
.super Lgnu/expr/ModuleBody;
.source "syntaxutils.scm"


# static fields
.field public static final $Prvt$$Ex:Lkawa/lang/Macro;

.field public static final $Prvt$typecase$Pc:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/syntaxutils;

.field static final Lit0:Lgnu/expr/Keyword;

.field static final Lit1:Lgnu/lists/PairWithPosition;

.field static final Lit10:Lgnu/lists/PairWithPosition;

.field static final Lit11:Lgnu/lists/PairWithPosition;

.field static final Lit12:Lgnu/lists/PairWithPosition;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lkawa/lang/SyntaxRules;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lkawa/lang/SyntaxRules;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/expr/Keyword;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/lists/PairWithPosition;

.field static final Lit4:Lgnu/lists/PairWithPosition;

.field static final Lit5:Lgnu/lists/PairWithPosition;

.field static final Lit6:Lgnu/lists/PairWithPosition;

.field static final Lit7:Lgnu/math/IntNum;

.field static final Lit8:Lgnu/math/IntNum;

.field static final Lit9:Lgnu/lists/PairWithPosition;

.field public static final expand:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "lambda"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "as"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "else"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "let"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "cond"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "begin"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "or"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "quote"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "eql"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "expand"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "!"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit15:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v7, v1

    const/4 v0, 0x1

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u000c\u000f\r\u0017\u0010\u0008\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0003"

    const-string v3, "\u0011\u0018\u0004\t\u000b)\u0011\u0018\u000c\u0008\u0003\u0008\u0015\u0013"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "invoke"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x1

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit19:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x3

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lgnu/kawa/slib/syntaxutils;->Lit16:Lkawa/lang/SyntaxRules;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "typecase%"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v7, v1

    const/4 v0, 0x1

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit18:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x2

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit20:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x6

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007<\u000c\u0002\r\u000f\u0008\u0008\u0008\r\u0017\u0010\u0008\u0008"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0003\u0003"

    const-string v3, "\u0011\u0018\u0004\u0008\r\u000b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\\,\u000c\u0002\u000c\u000f\u0008\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit18:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0003\u0003"

    const-string v3, "\u0011\u0018\u0004yY\u0011\u0018\u000c\t\u0003\u0008\u0011\u0018\u0014\u0008\u000b\u0008\u0015\u0013\u0008\u0011\u0018\u001c\u0008\u0011\u0018$\t\u0003\u0008\u001d\u001b"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit22:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v10, 0x1

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "eqv?"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x2

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit19:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x3

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit24:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x4

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\\,\u000c\u0002\u000c\u000f\u0008\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit20:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0003\u0003"

    const-string v3, "\u0011\u0018\u0004\t\u0003)\t\u000b\u0008\u0015\u0013\u0008\u001d\u001b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007l<\u000c\u0002\r\u000f\u0008\u0008\u0008\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit20:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0003\u0003\u0003"

    const-string v3, "\u0011\u0018\u0004\u0091\u0008\u0011\u0018\u000c\u0008\u0011\u0018\u0014\u0011\u0008\u0003\u0008\u0011\u0018\u001c\u0008\u0015\u0013\u0008\u0011\u0018$\t\u0003I\r\t\u000b\u0008\u0011\u0018\u000c\u0008\u0003\u0008\u0011\u0018,\u0008\u0011\u0018$\t\u0003\u0008\u001d\u001b"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit23:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v10, 0x1

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "f"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x2

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit26:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x3

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x4

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x5

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007<\u000c\u000f\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0003\u0003"

    const-string v3, "\u0011\u0018\u0004\u00f19\u0011\u0018\u000c\t\u0003\u0008\u000b\u0008\u0011\u0018\u0014Q\u0008\t\u0003\u0011\u0018\u001c\t\u000b\u0008\u0003\u0008\u0011\u0018$\u0008\u0015\u0013\u0008\u0011\u0018,\u0008\u0011\u00184\t\u0003\u0008\u001d\u001b"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit22:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v10, 0x1

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "instance?"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x2

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit23:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v10, 0x3

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "::"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x4

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x5

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit24:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x6

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001"

    const-string v3, "\u0011\u0018\u0004\u0011\u0018\u000c\t\u0003\u0008\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0011\u0018$\u0011\u0018,\u0008\u0003"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "error"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x1

    const-string v10, "typecase% failed"

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit15:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v10, 0x3

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "getClass"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x4

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit25:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v10, 0x5

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "<object>"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x4

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lgnu/kawa/slib/syntaxutils;->Lit14:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, ":"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v3, 0x9b010

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit12:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v3, 0x99010

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit11:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->Lit19:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v3, 0x8700c

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit10:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->Lit23:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v3, 0x75004

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit9:Lgnu/lists/PairWithPosition;

    const/4 v0, 0x1

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit8:Lgnu/math/IntNum;

    const/4 v0, 0x0

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit7:Lgnu/math/IntNum;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "if"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v3, 0x66007

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit6:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v3, 0x6401b

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit5:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v3, 0x5c007

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit4:Lgnu/lists/PairWithPosition;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "set"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v3, 0x5a007

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit3:Lgnu/lists/PairWithPosition;

    const-string v0, "lang"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit2:Lgnu/expr/Keyword;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v3, 0x4401d

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit1:Lgnu/lists/PairWithPosition;

    const-string v0, "env"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit0:Lgnu/expr/Keyword;

    new-instance v0, Lgnu/kawa/slib/syntaxutils;

    invoke-direct {v0}, Lgnu/kawa/slib/syntaxutils;-><init>()V

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->$instance:Lgnu/kawa/slib/syntaxutils;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit14:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/syntaxutils;->$instance:Lgnu/kawa/slib/syntaxutils;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->$Prvt$typecase$Pc:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->Lit15:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit16:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/syntaxutils;->$instance:Lgnu/kawa/slib/syntaxutils;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->$Prvt$$Ex:Lkawa/lang/Macro;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->$instance:Lgnu/kawa/slib/syntaxutils;

    const/4 v2, 0x1

    sget-object v3, Lgnu/kawa/slib/syntaxutils;->Lit17:Lgnu/mapping/SimpleSymbol;

    const/16 v4, -0xfff

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->expand:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->$instance:Lgnu/kawa/slib/syntaxutils;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static expand$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p0, "sexp"    # Ljava/lang/Object;
    .param p1, "argsArray"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit0:Lgnu/expr/Keyword;

    invoke-static {p1, v4, v1}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    if-ne v0, v1, :cond_11

    invoke-static {}, Lkawa/lib/misc;->interactionEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    .line 68
    .local v0, "env":Ljava/lang/Object;
    :cond_11
    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lgnu/kawa/slib/syntaxutils;->Lit1:Lgnu/lists/PairWithPosition;

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p0, v2, v4

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v3, v2, v5

    invoke-static {v2}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/syntaxutils;->Lit0:Lgnu/expr/Keyword;

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lgnu/kawa/slib/syntaxutils;->rewriteForm$V(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static rewriteForm$V(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;
    .registers 13
    .param p0, "exp"    # Ljava/lang/Object;
    .param p1, "argsArray"    # [Ljava/lang/Object;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 71
    sget-object v7, Lgnu/kawa/slib/syntaxutils;->Lit2:Lgnu/expr/Keyword;

    invoke-static {p1, v8, v7}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v7, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    if-ne v2, v7, :cond_10

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v2

    .local v2, "lang":Ljava/lang/Object;
    :cond_10
    sget-object v7, Lgnu/kawa/slib/syntaxutils;->Lit0:Lgnu/expr/Keyword;

    invoke-static {p1, v8, v7}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v7, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    if-ne v1, v7, :cond_1e

    invoke-static {}, Lkawa/lib/misc;->interactionEnvironment()Lgnu/mapping/Environment;

    move-result-object v1

    .line 74
    .local v1, "env":Ljava/lang/Object;
    :cond_1e
    :try_start_1e
    check-cast v1, Lgnu/mapping/Environment;
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_20} :catch_49

    .end local v1    # "env":Ljava/lang/Object;
    :try_start_20
    move-object v0, v2

    check-cast v0, Lgnu/expr/Language;

    move-object v7, v0
    :try_end_24
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_24} :catch_52

    invoke-static {v1, v7}, Lgnu/expr/NameLookup;->getInstance(Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/NameLookup;

    move-result-object v4

    .line 76
    .local v4, "namelookup":Lgnu/expr/NameLookup;
    new-instance v3, Lgnu/text/SourceMessages;

    invoke-direct {v3}, Lgnu/text/SourceMessages;-><init>()V

    .line 75
    .local v3, "messages":Lgnu/text/SourceMessages;
    new-instance v6, Lkawa/lang/Translator;

    :try_start_2f
    check-cast v2, Lgnu/expr/Language;
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_2f .. :try_end_31} :catch_5c

    .end local v2    # "lang":Ljava/lang/Object;
    invoke-direct {v6, v2, v3, v4}, Lkawa/lang/Translator;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    .local v6, "translator":Lkawa/lang/Translator;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lkawa/lang/Translator;->pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;

    invoke-static {v6}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v5

    .line 80
    .local v5, "saved$Mncomp":Lgnu/expr/Compilation;
    :try_start_3c
    invoke-virtual {v6, p0}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_44

    move-result-object v7

    .line 82
    invoke-static {v5}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    return-object v7

    .line 80
    :catchall_44
    move-exception v7

    .line 82
    invoke-static {v5}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 80
    throw v7

    .line 75
    .end local v3    # "messages":Lgnu/text/SourceMessages;
    .end local v4    # "namelookup":Lgnu/expr/NameLookup;
    .end local v5    # "saved$Mncomp":Lgnu/expr/Compilation;
    .end local v6    # "translator":Lkawa/lang/Translator;
    .restart local v1    # "env":Ljava/lang/Object;
    .restart local v2    # "lang":Ljava/lang/Object;
    :catch_49
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    const-string v9, "gnu.expr.NameLookup.getInstance(gnu.mapping.Environment,gnu.expr.Language)"

    invoke-direct {v8, v7, v9, v10, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .end local v1    # "env":Ljava/lang/Object;
    :catch_52
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    const-string v9, "gnu.expr.NameLookup.getInstance(gnu.mapping.Environment,gnu.expr.Language)"

    const/4 v10, 0x2

    invoke-direct {v8, v7, v9, v10, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 77
    .restart local v3    # "messages":Lgnu/text/SourceMessages;
    .restart local v4    # "namelookup":Lgnu/expr/NameLookup;
    :catch_5c
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    const-string v9, "kawa.lang.Translator.<init>(gnu.expr.Language,gnu.text.SourceMessages,gnu.expr.NameLookup)"

    invoke-direct {v8, v7, v9, v10, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method static unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;
    .registers 12
    .param p0, "exp"    # Lgnu/expr/Expression;

    .prologue
    const/4 v7, -0x2

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 85
    new-instance v0, Lgnu/kawa/slib/syntaxutils$frame;

    invoke-direct {v0}, Lgnu/kawa/slib/syntaxutils$frame;-><init>()V

    .line 86
    instance-of v4, p0, Lgnu/expr/LetExp;

    if-eqz v4, :cond_14

    :try_start_d
    check-cast p0, Lgnu/expr/LetExp;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_12e

    .local p0, "exp":Lgnu/expr/LetExp;
    invoke-static {p0}, Lgnu/kawa/slib/syntaxutils;->unrewriteLet(Lgnu/expr/LetExp;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "exp":Lgnu/expr/LetExp;
    :cond_13
    :goto_13
    return-object p0

    .local p0, "exp":Lgnu/expr/Expression;
    :cond_14
    instance-of v4, p0, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_1f

    :try_start_18
    check-cast p0, Lgnu/expr/QuoteExp;
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1a} :catch_137

    .local p0, "exp":Lgnu/expr/QuoteExp;
    invoke-static {p0}, Lgnu/kawa/slib/syntaxutils;->unrewriteQuote(Lgnu/expr/QuoteExp;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_13

    .local p0, "exp":Lgnu/expr/Expression;
    :cond_1f
    instance-of v4, p0, Lgnu/expr/SetExp;

    if-eqz v4, :cond_54

    :try_start_23
    check-cast p0, Lgnu/expr/SetExp;
    :try_end_25
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_25} :catch_140

    .local p0, "exp":Lgnu/expr/SetExp;
    new-array v4, v8, [Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit3:Lgnu/lists/PairWithPosition;

    aput-object v5, v4, v9

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lgnu/expr/SetExp;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v9

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lgnu/expr/SetExp;->getNewValue()Lgnu/expr/Expression;

    move-result-object v7

    invoke-static {v7}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v7, v6, v10

    invoke-static {v6}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v5}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v4}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_13

    .local p0, "exp":Lgnu/expr/Expression;
    :cond_54
    instance-of v4, p0, Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_a5

    :try_start_58
    check-cast p0, Lgnu/expr/LambdaExp;
    :try_end_5a
    .catch Ljava/lang/ClassCastException; {:try_start_58 .. :try_end_5a} :catch_149

    .local p0, "exp":Lgnu/expr/LambdaExp;
    new-array v4, v8, [Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit4:Lgnu/lists/PairWithPosition;

    aput-object v5, v4, v9

    new-array v5, v8, [Ljava/lang/Object;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v6, v0, Lgnu/kawa/slib/syntaxutils$frame;->pack:Lgnu/lists/LList;

    .line 92
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 93
    .local v0, "closureEnv":Lgnu/kawa/slib/syntaxutils$frame;
    .local v1, "decl":Lgnu/expr/Declaration;
    :goto_6a
    if-eqz v1, :cond_7d

    .line 96
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    .line 92
    .local v3, "v":Ljava/lang/Object;
    iget-object v6, v0, Lgnu/kawa/slib/syntaxutils$frame;->pack:Lgnu/lists/LList;

    invoke-static {v3, v6}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    iput-object v6, v0, Lgnu/kawa/slib/syntaxutils$frame;->pack:Lgnu/lists/LList;

    .line 94
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_6a

    .end local v3    # "v":Ljava/lang/Object;
    :cond_7d
    iget-object v6, v0, Lgnu/kawa/slib/syntaxutils$frame;->pack:Lgnu/lists/LList;

    invoke-static {v6}, Lkawa/lib/lists;->reverse$Ex(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v6

    aput-object v6, v5, v9

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-static {v7}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v7, v6, v10

    invoke-static {v6}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v5}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v4}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_13

    .line 86
    .end local v0    # "closureEnv":Lgnu/kawa/slib/syntaxutils$frame;
    .end local v1    # "decl":Lgnu/expr/Declaration;
    .local p0, "exp":Lgnu/expr/Expression;
    :cond_a5
    instance-of v4, p0, Lgnu/expr/ReferenceExp;

    if-eqz v4, :cond_b1

    :try_start_a9
    check-cast p0, Lgnu/expr/ReferenceExp;
    :try_end_ab
    .catch Ljava/lang/ClassCastException; {:try_start_a9 .. :try_end_ab} :catch_152

    .local p0, "exp":Lgnu/expr/ReferenceExp;
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_13

    .local p0, "exp":Lgnu/expr/Expression;
    :cond_b1
    instance-of v4, p0, Lgnu/expr/ApplyExp;

    if-eqz v4, :cond_bd

    :try_start_b5
    check-cast p0, Lgnu/expr/ApplyExp;
    :try_end_b7
    .catch Ljava/lang/ClassCastException; {:try_start_b5 .. :try_end_b7} :catch_15b

    .local p0, "exp":Lgnu/expr/ApplyExp;
    invoke-static {p0}, Lgnu/kawa/slib/syntaxutils;->unrewriteApply(Lgnu/expr/ApplyExp;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_13

    .local p0, "exp":Lgnu/expr/Expression;
    :cond_bd
    instance-of v4, p0, Lgnu/expr/BeginExp;

    if-eqz v4, :cond_d9

    :try_start_c1
    check-cast p0, Lgnu/expr/BeginExp;
    :try_end_c3
    .catch Ljava/lang/ClassCastException; {:try_start_c1 .. :try_end_c3} :catch_164

    .local p0, "exp":Lgnu/expr/BeginExp;
    new-array v4, v8, [Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit5:Lgnu/lists/PairWithPosition;

    aput-object v5, v4, v9

    invoke-virtual {p0}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object v5

    invoke-static {v5}, Lgnu/kawa/slib/syntaxutils;->unrewrite$St([Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v4}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_13

    .local p0, "exp":Lgnu/expr/Expression;
    :cond_d9
    instance-of v4, p0, Lgnu/expr/IfExp;

    if-eqz v4, :cond_13

    :try_start_dd
    check-cast p0, Lgnu/expr/IfExp;
    :try_end_df
    .catch Ljava/lang/ClassCastException; {:try_start_dd .. :try_end_df} :catch_16d

    .local p0, "exp":Lgnu/expr/IfExp;
    new-array v5, v8, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/syntaxutils;->Lit6:Lgnu/lists/PairWithPosition;

    aput-object v4, v5, v9

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lgnu/expr/IfExp;->getTest()Lgnu/expr/Expression;

    move-result-object v4

    invoke-static {v4}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v6, v9

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lgnu/expr/IfExp;->getThenClause()Lgnu/expr/Expression;

    move-result-object v4

    invoke-static {v4}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v7, v9

    new-array v8, v8, [Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Lgnu/expr/IfExp;->getElseClause()Lgnu/expr/Expression;

    move-result-object v2

    .line 105
    .local v2, "eclause":Lgnu/expr/Expression;
    if-nez v2, :cond_125

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_107
    aput-object v4, v8, v9

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v4, v8, v10

    invoke-static {v8}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v7, v10

    invoke-static {v7}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v6, v10

    invoke-static {v6}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v5, v10

    invoke-static {v5}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_13

    :cond_125
    invoke-static {v2}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    goto :goto_107

    .line 86
    .end local v2    # "eclause":Lgnu/expr/Expression;
    .local p0, "exp":Lgnu/expr/Expression;
    :catch_12e
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "exp"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_137
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "exp"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_140
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "exp"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_149
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "exp"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_152
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "exp"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_15b
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "exp"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_164
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "exp"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_16d
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "exp"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method static unrewrite$St([Lgnu/expr/Expression;)Ljava/lang/Object;
    .registers 8
    .param p0, "exps"    # [Lgnu/expr/Expression;

    .prologue
    .line 109
    new-instance v0, Lgnu/kawa/slib/syntaxutils$frame0;

    invoke-direct {v0}, Lgnu/kawa/slib/syntaxutils$frame0;-><init>()V

    .line 110
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v4, v0, Lgnu/kawa/slib/syntaxutils$frame0;->pack:Lgnu/lists/LList;

    .line 111
    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit7:Lgnu/math/IntNum;

    .local v0, "closureEnv":Lgnu/kawa/slib/syntaxutils$frame0;
    .local v2, "len":Ljava/lang/Integer;
    :goto_10
    sget-object v4, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 113
    invoke-virtual {v4, v5, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v4, v6, :cond_39

    move-object v4, v5

    .line 114
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aget-object v4, p0, v4

    invoke-static {v4}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v3

    .line 110
    .local v3, "v":Ljava/lang/Object;
    iget-object v4, v0, Lgnu/kawa/slib/syntaxutils$frame0;->pack:Lgnu/lists/LList;

    invoke-static {v3, v4}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    iput-object v4, v0, Lgnu/kawa/slib/syntaxutils$frame0;->pack:Lgnu/lists/LList;

    .line 112
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/slib/syntaxutils;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "i":Ljava/lang/Object;
    move-object v5, v1

    goto :goto_10

    .end local v1    # "i":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_39
    iget-object v4, v0, Lgnu/kawa/slib/syntaxutils$frame0;->pack:Lgnu/lists/LList;

    invoke-static {v4}, Lkawa/lib/lists;->reverse$Ex(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v4

    return-object v4
.end method

.method static unrewriteApply(Lgnu/expr/ApplyExp;)Ljava/lang/Object;
    .registers 17
    .param p0, "exp"    # Lgnu/expr/ApplyExp;

    .prologue
    const/4 v15, 0x2

    const/4 v14, 0x1

    const/4 v1, 0x0

    .line 137
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v10

    .line 139
    .local v10, "fun":Lgnu/expr/Expression;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    invoke-static {v3}, Lgnu/kawa/slib/syntaxutils;->unrewrite$St([Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v9

    .line 138
    .local v9, "args":Ljava/lang/Object;
    instance-of v3, v10, Lgnu/expr/ReferenceExp;

    if-eqz v3, :cond_4c

    :try_start_13
    move-object v0, v10

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v11, v0
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_17} :catch_90

    .local v11, "fun":Lgnu/expr/ReferenceExp;
    invoke-virtual {v11}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    .end local v10    # "fun":Lgnu/expr/Expression;
    move-result-object v2

    .end local v11    # "fun":Lgnu/expr/ReferenceExp;
    .local v2, "fbinding":Lgnu/expr/Declaration;
    :goto_1b
    const-string v3, "kawa.standard.Scheme"

    const-string v4, "applyToArgs"

    invoke-static {v3, v4}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v8

    .local v8, "apply$Mnto$Mnargs":Lgnu/expr/Declaration;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getFunctionValue()Ljava/lang/Object;

    move-result-object v12

    .line 146
    .local v12, "fval":Ljava/lang/Object;
    if-nez v2, :cond_4e

    move v3, v14

    :goto_2a
    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v13, v3, 0x1

    .local v13, "x":Z
    if-eqz v13, :cond_6a

    .line 147
    if-nez v8, :cond_50

    move v3, v14

    :goto_33
    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v13, v3, 0x1

    .line 146
    if-eqz v13, :cond_52

    const-string v3, "field"

    const-string v4, "field"

    const-string v5, "getField"

    const-string v6, "isField"

    sget-object v7, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    invoke-static/range {v1 .. v7}, Lgnu/kawa/reflect/SlotGet;->getSlotValue(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v8, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-ne v3, v4, :cond_54

    .line 158
    .end local v9    # "args":Ljava/lang/Object;
    .end local v13    # "x":Z
    :cond_4b
    :goto_4b
    return-object v9

    .line 138
    .end local v2    # "fbinding":Lgnu/expr/Declaration;
    .end local v8    # "apply$Mnto$Mnargs":Lgnu/expr/Declaration;
    .end local v12    # "fval":Ljava/lang/Object;
    .restart local v9    # "args":Ljava/lang/Object;
    .restart local v10    # "fun":Lgnu/expr/Expression;
    :cond_4c
    const/4 v2, 0x0

    goto :goto_1b

    .end local v10    # "fun":Lgnu/expr/Expression;
    .restart local v2    # "fbinding":Lgnu/expr/Declaration;
    .restart local v8    # "apply$Mnto$Mnargs":Lgnu/expr/Declaration;
    .restart local v12    # "fval":Ljava/lang/Object;
    :cond_4e
    move v3, v1

    .line 146
    goto :goto_2a

    .restart local v13    # "x":Z
    :cond_50
    move v3, v1

    .line 147
    goto :goto_33

    .line 146
    :cond_52
    if-nez v13, :cond_4b

    .line 151
    :cond_54
    instance-of v3, v12, Lgnu/kawa/functions/Convert;

    if-eqz v3, :cond_6d

    new-array v3, v15, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/syntaxutils;->Lit11:Lgnu/lists/PairWithPosition;

    aput-object v4, v3, v1

    aput-object v9, v3, v14

    invoke-static {v3}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 146
    .local v13, "x":Ljava/lang/Object;
    :goto_64
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v13, v3, :cond_81

    move-object v9, v13

    goto :goto_4b

    .local v13, "x":Z
    :cond_6a
    if-eqz v13, :cond_54

    goto :goto_4b

    .line 151
    :cond_6d
    instance-of v3, v12, Lgnu/kawa/functions/GetNamedPart;

    if-eqz v3, :cond_7e

    new-array v3, v15, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/syntaxutils;->Lit12:Lgnu/lists/PairWithPosition;

    aput-object v4, v3, v1

    aput-object v9, v3, v14

    invoke-static {v3}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_64

    :cond_7e
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_64

    .line 158
    .local v13, "x":Ljava/lang/Object;
    :cond_81
    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v10}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object v9, v3, v14

    invoke-static {v3}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_4b

    .line 140
    .end local v2    # "fbinding":Lgnu/expr/Declaration;
    .end local v8    # "apply$Mnto$Mnargs":Lgnu/expr/Declaration;
    .end local v12    # "fval":Ljava/lang/Object;
    .end local v13    # "x":Ljava/lang/Object;
    .restart local v10    # "fun":Lgnu/expr/Expression;
    :catch_90
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "fun"

    const/4 v5, -0x2

    invoke-direct {v3, v1, v4, v5, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method static unrewriteLet(Lgnu/expr/LetExp;)Ljava/lang/Object;
    .registers 14
    .param p0, "exp"    # Lgnu/expr/LetExp;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 116
    new-instance v0, Lgnu/kawa/slib/syntaxutils$frame1;

    invoke-direct {v0}, Lgnu/kawa/slib/syntaxutils$frame1;-><init>()V

    .line 117
    new-array v6, v12, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/syntaxutils;->Lit9:Lgnu/lists/PairWithPosition;

    aput-object v4, v6, v10

    new-array v7, v12, [Ljava/lang/Object;

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v4, v0, Lgnu/kawa/slib/syntaxutils$frame1;->pack:Lgnu/lists/LList;

    .line 118
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit7:Lgnu/math/IntNum;

    .local v0, "closureEnv":Lgnu/kawa/slib/syntaxutils$frame1;
    .local v1, "decl":Lgnu/expr/Declaration;
    :goto_1a
    if-eqz v1, :cond_49

    .line 122
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    move-object v4, v5

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aget-object v4, v9, v4

    invoke-static {v4}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8, v4}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    .line 117
    .local v3, "v":Lgnu/lists/Pair;
    iget-object v4, v0, Lgnu/kawa/slib/syntaxutils$frame1;->pack:Lgnu/lists/LList;

    invoke-static {v3, v4}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    iput-object v4, v0, Lgnu/kawa/slib/syntaxutils$frame1;->pack:Lgnu/lists/LList;

    .line 119
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 120
    .end local v1    # "decl":Lgnu/expr/Declaration;
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/syntaxutils;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v4, v5, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .restart local v1    # "decl":Lgnu/expr/Declaration;
    .local v2, "i":Ljava/lang/Object;
    move-object v5, v2

    goto :goto_1a

    .end local v2    # "i":Ljava/lang/Object;
    .end local v3    # "v":Lgnu/lists/Pair;
    :cond_49
    iget-object v4, v0, Lgnu/kawa/slib/syntaxutils$frame1;->pack:Lgnu/lists/LList;

    invoke-static {v4}, Lkawa/lib/lists;->reverse$Ex(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v4

    aput-object v4, v7, v10

    new-array v4, v12, [Ljava/lang/Object;

    iget-object v5, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-static {v5}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v5, v4, v11

    invoke-static {v4}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v7, v11

    invoke-static {v7}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v6, v11

    invoke-static {v6}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method static unrewriteQuote(Lgnu/expr/QuoteExp;)Ljava/lang/Object;
    .registers 8
    .param p0, "exp"    # Lgnu/expr/QuoteExp;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x2

    .line 126
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 129
    .local v1, "val":Ljava/lang/Object;
    invoke-static {v1}, Lgnu/math/Numeric;->asNumericOrNull(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v4

    if-eqz v4, :cond_13

    :try_start_e
    invoke-static {v1}, Lgnu/kawa/lispexpr/LangObjType;->coerceNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_11} :catch_83

    move-result-object v1

    .end local v1    # "val":Ljava/lang/Object;
    :cond_12
    :goto_12
    return-object v1

    .restart local v1    # "val":Ljava/lang/Object;
    :cond_13
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_27

    :try_start_17
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_19} :catch_8c

    if-eq v1, v4, :cond_22

    move v1, v2

    .local v1, "val":Z
    :goto_1c
    if-eqz v1, :cond_24

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_20
    move-object v1, v2

    goto :goto_12

    .local v1, "val":Ljava/lang/Object;
    :cond_22
    move v1, v3

    goto :goto_1c

    .local v1, "val":Z
    :cond_24
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_20

    .local v1, "val":Ljava/lang/Object;
    :cond_27
    instance-of v4, v1, Lgnu/text/Char;

    if-eqz v4, :cond_2e

    :try_start_2b
    check-cast v1, Lgnu/text/Char;
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_2d} :catch_95

    .local v1, "val":Lgnu/text/Char;
    goto :goto_12

    .local v1, "val":Ljava/lang/Object;
    :cond_2e
    instance-of v4, v1, Lgnu/expr/Keyword;

    if-eqz v4, :cond_35

    :try_start_32
    check-cast v1, Lgnu/expr/Keyword;
    :try_end_34
    .catch Ljava/lang/ClassCastException; {:try_start_32 .. :try_end_34} :catch_9e

    .local v1, "val":Lgnu/expr/Keyword;
    goto :goto_12

    .local v1, "val":Ljava/lang/Object;
    :cond_35
    instance-of v4, v1, Ljava/lang/CharSequence;

    if-eqz v4, :cond_3c

    :try_start_39
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_3b
    .catch Ljava/lang/ClassCastException; {:try_start_39 .. :try_end_3b} :catch_a7

    .local v1, "val":Ljava/lang/CharSequence;
    goto :goto_12

    .local v1, "val":Ljava/lang/Object;
    :cond_3c
    sget-object v4, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    if-eq v1, v4, :cond_12

    sget-object v4, Lgnu/lists/EofClass;->eofValue:Lgnu/lists/EofClass;

    if-eq v1, v4, :cond_12

    instance-of v4, v1, Lgnu/bytecode/Type;

    if-eqz v4, :cond_5f

    :try_start_48
    check-cast v1, Lgnu/bytecode/Type;
    :try_end_4a
    .catch Ljava/lang/ClassCastException; {:try_start_48 .. :try_end_4a} :catch_b0

    .line 133
    .local v1, "val":Lgnu/bytecode/Type;
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    .line 128
    .end local v1    # "val":Lgnu/bytecode/Type;
    :goto_4e
    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "<~a>"

    aput-object v5, v4, v3

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v1

    goto :goto_12

    .line 129
    .local v1, "val":Ljava/lang/Object;
    :cond_5f
    instance-of v4, v1, Ljava/lang/Class;

    if-eqz v4, :cond_6a

    :try_start_63
    check-cast v1, Ljava/lang/Class;
    :try_end_65
    .catch Ljava/lang/ClassCastException; {:try_start_63 .. :try_end_65} :catch_b9

    .line 134
    .local v1, "val":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    .line 129
    .local v1, "val":Ljava/lang/Object;
    :cond_6a
    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit10:Lgnu/lists/PairWithPosition;

    aput-object v5, v4, v3

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v3

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v3, v5, v2

    invoke-static {v5}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_12

    :catch_83
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "val"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_8c
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "val"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_95
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "val"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_9e
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "val"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_a7
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "val"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_b0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "val"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_b9
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "val"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 67
    const/4 v0, 0x0

    aget-object v2, p2, v0

    array-length v0, p2

    add-int/lit8 v1, v0, -0x1

    new-array v0, v1, [Ljava/lang/Object;

    :goto_d
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_16

    invoke-static {v2, v0}, Lgnu/kawa/slib/syntaxutils;->expand$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    aput-object v3, v0, v1

    goto :goto_d

    :cond_1d
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_15
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 67
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x5

    iput v0, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_d
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 6
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 67
    .local v0, "$result":Lgnu/lists/Consumer;
    return-void
.end method
