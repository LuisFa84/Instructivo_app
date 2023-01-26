.class Lgnu/kawa/functions/LispChoiceFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field choices:[Ljava/text/Format;

.field lastIsDefault:Z

.field param:I

.field skipIfFalse:Z

.field testBoolean:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1036
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .registers 11
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/high16 v4, -0x60000000

    .line 1048
    iget-boolean v3, p0, Lgnu/kawa/functions/LispChoiceFormat;->testBoolean:Z

    if-eqz v3, :cond_1a

    .line 1050
    iget-object v3, p0, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    aget-object v4, p1, p2

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v4, v5, :cond_18

    :goto_f
    aget-object v0, v3, v2

    .line 1051
    .local v0, "fmt":Ljava/text/Format;
    add-int/lit8 p2, p2, 0x1

    .line 1073
    :goto_13
    invoke-static {v0, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v2

    .end local v0    # "fmt":Ljava/text/Format;
    :goto_17
    return v2

    .line 1050
    :cond_18
    const/4 v2, 0x1

    goto :goto_f

    .line 1053
    :cond_1a
    iget-boolean v3, p0, Lgnu/kawa/functions/LispChoiceFormat;->skipIfFalse:Z

    if-nez v3, :cond_41

    .line 1055
    iget v2, p0, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    invoke-static {v2, v4, p1, p2}, Lgnu/kawa/functions/LispChoiceFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v1

    .line 1057
    .local v1, "index":I
    iget v2, p0, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    if-ne v2, v4, :cond_2a

    add-int/lit8 p2, p2, 0x1

    .line 1058
    :cond_2a
    if-ltz v1, :cond_31

    iget-object v2, p0, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    array-length v2, v2

    if-lt v1, v2, :cond_3a

    .line 1060
    :cond_31
    iget-boolean v2, p0, Lgnu/kawa/functions/LispChoiceFormat;->lastIsDefault:Z

    if-eqz v2, :cond_3f

    .line 1061
    iget-object v2, p0, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 1065
    :cond_3a
    iget-object v2, p0, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    aget-object v0, v2, v1

    .line 1066
    .restart local v0    # "fmt":Ljava/text/Format;
    goto :goto_13

    .end local v0    # "fmt":Ljava/text/Format;
    :cond_3f
    move v2, p2

    .line 1063
    goto :goto_17

    .line 1069
    .end local v1    # "index":I
    :cond_41
    aget-object v3, p1, p2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_4a

    .line 1070
    add-int/lit8 v2, p2, 0x1

    goto :goto_17

    .line 1071
    :cond_4a
    iget-object v3, p0, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    aget-object v0, v3, v2

    .restart local v0    # "fmt":Ljava/text/Format;
    goto :goto_13
.end method
