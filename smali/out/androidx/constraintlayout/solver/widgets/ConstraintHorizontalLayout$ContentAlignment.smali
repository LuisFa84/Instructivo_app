.class public final enum Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;
.super Ljava/lang/Enum;
.source "ConstraintHorizontalLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

.field public static final enum BEGIN:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

.field public static final enum BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

.field public static final enum END:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

.field public static final enum LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

.field public static final enum MIDDLE:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

.field public static final enum RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

.field public static final enum TOP:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

.field public static final enum VERTICAL_MIDDLE:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    const-string v1, "BEGIN"

    invoke-direct {v0, v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->BEGIN:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->MIDDLE:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    const-string v1, "END"

    invoke-direct {v0, v1, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->END:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    const-string v1, "VERTICAL_MIDDLE"

    invoke-direct {v0, v1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->VERTICAL_MIDDLE:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    const-string v1, "BOTTOM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    const-string v1, "LEFT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    const-string v1, "RIGHT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    .line 26
    const/16 v0, 0x8

    new-array v0, v0, [Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->BEGIN:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->MIDDLE:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->END:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    aput-object v1, v0, v5

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    aput-object v1, v0, v6

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->VERTICAL_MIDDLE:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    aput-object v2, v0, v1

    sput-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->$VALUES:[Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->$VALUES:[Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    return-object v0
.end method
