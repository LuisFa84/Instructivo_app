.class public Lgnu/kawa/functions/UnicodeUtils;
.super Ljava/lang/Object;
.source "UnicodeUtils.java"


# static fields
.field static final Cc:Lgnu/mapping/Symbol;

.field static final Cf:Lgnu/mapping/Symbol;

.field static final Cn:Lgnu/mapping/Symbol;

.field static final Co:Lgnu/mapping/Symbol;

.field static final Cs:Lgnu/mapping/Symbol;

.field static final Ll:Lgnu/mapping/Symbol;

.field static final Lm:Lgnu/mapping/Symbol;

.field static final Lo:Lgnu/mapping/Symbol;

.field static final Lt:Lgnu/mapping/Symbol;

.field static final Lu:Lgnu/mapping/Symbol;

.field static final Mc:Lgnu/mapping/Symbol;

.field static final Me:Lgnu/mapping/Symbol;

.field static final Mn:Lgnu/mapping/Symbol;

.field static final Nd:Lgnu/mapping/Symbol;

.field static final Nl:Lgnu/mapping/Symbol;

.field static final No:Lgnu/mapping/Symbol;

.field static final Pc:Lgnu/mapping/Symbol;

.field static final Pd:Lgnu/mapping/Symbol;

.field static final Pe:Lgnu/mapping/Symbol;

.field static final Pf:Lgnu/mapping/Symbol;

.field static final Pi:Lgnu/mapping/Symbol;

.field static final Po:Lgnu/mapping/Symbol;

.field static final Ps:Lgnu/mapping/Symbol;

.field static final Sc:Lgnu/mapping/Symbol;

.field static final Sk:Lgnu/mapping/Symbol;

.field static final Sm:Lgnu/mapping/Symbol;

.field static final So:Lgnu/mapping/Symbol;

.field static final Zl:Lgnu/mapping/Symbol;

.field static final Zp:Lgnu/mapping/Symbol;

.field static final Zs:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 207
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    .line 208
    .local v0, "empty":Lgnu/mapping/Namespace;
    const-string v1, "Mc"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Mc:Lgnu/mapping/Symbol;

    .line 209
    const-string v1, "Pc"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pc:Lgnu/mapping/Symbol;

    .line 210
    const-string v1, "Cc"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cc:Lgnu/mapping/Symbol;

    .line 211
    const-string v1, "Sc"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Sc:Lgnu/mapping/Symbol;

    .line 212
    const-string v1, "Pd"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pd:Lgnu/mapping/Symbol;

    .line 213
    const-string v1, "Nd"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Nd:Lgnu/mapping/Symbol;

    .line 214
    const-string v1, "Me"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Me:Lgnu/mapping/Symbol;

    .line 215
    const-string v1, "Pe"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pe:Lgnu/mapping/Symbol;

    .line 216
    const-string v1, "Pf"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pf:Lgnu/mapping/Symbol;

    .line 217
    const-string v1, "Cf"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cf:Lgnu/mapping/Symbol;

    .line 218
    const-string v1, "Pi"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pi:Lgnu/mapping/Symbol;

    .line 219
    const-string v1, "Nl"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Nl:Lgnu/mapping/Symbol;

    .line 220
    const-string v1, "Zl"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Zl:Lgnu/mapping/Symbol;

    .line 221
    const-string v1, "Ll"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Ll:Lgnu/mapping/Symbol;

    .line 222
    const-string v1, "Sm"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Sm:Lgnu/mapping/Symbol;

    .line 223
    const-string v1, "Lm"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lm:Lgnu/mapping/Symbol;

    .line 224
    const-string v1, "Sk"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Sk:Lgnu/mapping/Symbol;

    .line 225
    const-string v1, "Mn"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Mn:Lgnu/mapping/Symbol;

    .line 226
    const-string v1, "Lo"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lo:Lgnu/mapping/Symbol;

    .line 227
    const-string v1, "No"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->No:Lgnu/mapping/Symbol;

    .line 228
    const-string v1, "Po"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Po:Lgnu/mapping/Symbol;

    .line 229
    const-string v1, "So"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->So:Lgnu/mapping/Symbol;

    .line 230
    const-string v1, "Zp"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Zp:Lgnu/mapping/Symbol;

    .line 231
    const-string v1, "Co"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Co:Lgnu/mapping/Symbol;

    .line 232
    const-string v1, "Zs"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Zs:Lgnu/mapping/Symbol;

    .line 233
    const-string v1, "Ps"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Ps:Lgnu/mapping/Symbol;

    .line 234
    const-string v1, "Cs"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cs:Lgnu/mapping/Symbol;

    .line 235
    const-string v1, "Lt"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lt:Lgnu/mapping/Symbol;

    .line 236
    const-string v1, "Cn"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cn:Lgnu/mapping/Symbol;

    .line 237
    const-string v1, "Lu"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lu:Lgnu/mapping/Symbol;

    .line 238
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v4, "sbuf":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v7

    .line 31
    .local v7, "wb":Ljava/text/BreakIterator;
    invoke-virtual {v7, p0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v7}, Ljava/text/BreakIterator;->first()I

    move-result v5

    .line 33
    .local v5, "start":I
    invoke-virtual {v7}, Ljava/text/BreakIterator;->next()I

    move-result v0

    .line 34
    .local v0, "end":I
    :goto_14
    const/4 v8, -0x1

    if-eq v0, v8, :cond_4d

    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, "isWord":Z
    move v3, v5

    .local v3, "p":I
    :goto_19
    if-ge v3, v0, :cond_26

    .line 40
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(I)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 42
    const/4 v2, 0x1

    .line 46
    :cond_26
    if-nez v2, :cond_34

    .line 47
    invoke-virtual {v4, p0, v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 35
    :goto_2b
    move v5, v0

    invoke-virtual {v7}, Ljava/text/BreakIterator;->next()I

    move-result v0

    goto :goto_14

    .line 38
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 50
    :cond_34
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 54
    .local v1, "first":C
    invoke-static {v1}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v6

    .line 55
    .local v6, "title":C
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 59
    .end local v1    # "first":C
    .end local v2    # "isWord":Z
    .end local v3    # "p":I
    .end local v6    # "title":C
    :cond_4d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 9
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 64
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 65
    .local v3, "len":I
    if-nez v3, :cond_9

    .line 66
    const-string v1, ""

    .line 103
    :cond_8
    :goto_8
    return-object v1

    .line 68
    :cond_9
    const/4 v4, 0x0

    .line 72
    .local v4, "sbuf":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 73
    .local v6, "start":I
    const/4 v2, 0x0

    .line 75
    .local v2, "i":I
    :goto_c
    if-ne v2, v3, :cond_4f

    const/4 v0, -0x1

    .line 76
    .local v0, "ch":I
    :goto_f
    const/16 v7, 0x3a3

    if-eq v0, v7, :cond_1b

    const/16 v7, 0x3c3

    if-eq v0, v7, :cond_1b

    const/16 v7, 0x3c2

    if-ne v0, v7, :cond_54

    :cond_1b
    const/4 v5, 0x1

    .line 77
    .local v5, "sigma":Z
    :goto_1c
    if-ltz v0, :cond_28

    const/16 v7, 0x130

    if-eq v0, v7, :cond_28

    const/16 v7, 0x131

    if-eq v0, v7, :cond_28

    if-eqz v5, :cond_60

    .line 79
    :cond_28
    if-nez v4, :cond_31

    if-ltz v0, :cond_31

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "sbuf":Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .restart local v4    # "sbuf":Ljava/lang/StringBuilder;
    :cond_31
    if-le v2, v6, :cond_48

    .line 89
    invoke-interface {p0, v6, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "converted":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 93
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .end local v1    # "converted":Ljava/lang/String;
    :cond_48
    if-gez v0, :cond_56

    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 75
    .end local v0    # "ch":I
    .end local v5    # "sigma":Z
    :cond_4f
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_f

    .line 76
    .restart local v0    # "ch":I
    :cond_54
    const/4 v5, 0x0

    goto :goto_1c

    .line 97
    .restart local v5    # "sigma":Z
    :cond_56
    if-eqz v5, :cond_5a

    .line 98
    const/16 v0, 0x3c3

    .line 99
    :cond_5a
    int-to-char v7, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v6, v2, 0x1

    .line 73
    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method public static generalCategory(I)Lgnu/mapping/Symbol;
    .registers 2
    .param p0, "ch"    # I

    .prologue
    .line 108
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_62

    .line 170
    :pswitch_7
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Cn:Lgnu/mapping/Symbol;

    :goto_9
    return-object v0

    .line 111
    :pswitch_a
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Mc:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 113
    :pswitch_d
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Pc:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 115
    :pswitch_10
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Cc:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 117
    :pswitch_13
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Sc:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 119
    :pswitch_16
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Pd:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 121
    :pswitch_19
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Nd:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 123
    :pswitch_1c
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Me:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 125
    :pswitch_1f
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Pe:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 127
    :pswitch_22
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Pf:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 129
    :pswitch_25
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Cf:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 131
    :pswitch_28
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Pi:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 133
    :pswitch_2b
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Nl:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 135
    :pswitch_2e
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Zl:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 137
    :pswitch_31
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Ll:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 139
    :pswitch_34
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Sm:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 141
    :pswitch_37
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Lm:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 143
    :pswitch_3a
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Sk:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 145
    :pswitch_3d
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Mn:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 147
    :pswitch_40
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Lo:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 149
    :pswitch_43
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->No:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 151
    :pswitch_46
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Po:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 153
    :pswitch_49
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->So:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 155
    :pswitch_4c
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Zp:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 157
    :pswitch_4f
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Co:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 159
    :pswitch_52
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Zs:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 161
    :pswitch_55
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Ps:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 163
    :pswitch_58
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Cs:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 165
    :pswitch_5b
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Lt:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 167
    :pswitch_5e
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Lu:Lgnu/mapping/Symbol;

    goto :goto_9

    .line 108
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_31
        :pswitch_5b
        :pswitch_37
        :pswitch_40
        :pswitch_3d
        :pswitch_1c
        :pswitch_a
        :pswitch_19
        :pswitch_2b
        :pswitch_43
        :pswitch_52
        :pswitch_2e
        :pswitch_4c
        :pswitch_10
        :pswitch_25
        :pswitch_7
        :pswitch_4f
        :pswitch_58
        :pswitch_16
        :pswitch_55
        :pswitch_1f
        :pswitch_d
        :pswitch_46
        :pswitch_34
        :pswitch_13
        :pswitch_3a
        :pswitch_49
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method

.method public static isWhitespace(I)Z
    .registers 6
    .param p0, "ch"    # I

    .prologue
    const/16 v4, 0x3000

    const/16 v3, 0x85

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 11
    const/16 v2, 0x20

    if-eq p0, v2, :cond_12

    const/16 v2, 0x9

    if-lt p0, v2, :cond_14

    const/16 v2, 0xd

    if-gt p0, v2, :cond_14

    :cond_12
    move v0, v1

    .line 19
    :cond_13
    :goto_13
    return v0

    .line 13
    :cond_14
    if-lt p0, v3, :cond_13

    .line 15
    if-eq p0, v3, :cond_24

    const/16 v2, 0xa0

    if-eq p0, v2, :cond_24

    const/16 v2, 0x1680

    if-eq p0, v2, :cond_24

    const/16 v2, 0x180e

    if-ne p0, v2, :cond_26

    :cond_24
    move v0, v1

    .line 16
    goto :goto_13

    .line 17
    :cond_26
    const/16 v2, 0x2000

    if-lt p0, v2, :cond_13

    if-gt p0, v4, :cond_13

    .line 19
    const/16 v2, 0x200a

    if-le p0, v2, :cond_42

    const/16 v2, 0x2028

    if-eq p0, v2, :cond_42

    const/16 v2, 0x2029

    if-eq p0, v2, :cond_42

    const/16 v2, 0x202f

    if-eq p0, v2, :cond_42

    const/16 v2, 0x205f

    if-eq p0, v2, :cond_42

    if-ne p0, v4, :cond_13

    :cond_42
    move v0, v1

    goto :goto_13
.end method
