.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "TranslatorToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/translate/TranslatorToken$requestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder",
        "<",
        "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;",
        ">;",
        "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$requestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private languagecode_:Ljava/lang/Object;

.field private sourcelanguage_:Ljava/lang/Object;

.field private targetlanguage_:Ljava/lang/Object;

.field private tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3",
            "<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

.field private totranslate_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 2283
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 2464
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->version_:J

    .line 2496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2614
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2690
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2766
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2842
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2284
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->maybeForceBuilderInitialization()V

    .line 2285
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;

    .prologue
    .line 2266
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 4
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 2289
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 2464
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->version_:J

    .line 2496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2614
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2690
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2766
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2842
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2290
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->maybeForceBuilderInitialization()V

    .line 2291
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;
    .param p2, "x1"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;

    .prologue
    .line 2266
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .prologue
    .line 2272
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3",
            "<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2603
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 2604
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2606
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v1

    .line 2607
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2608
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2611
    :cond_1a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .prologue
    .line 2294
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->access$3000()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2295
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2297
    :cond_9
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 4
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2397
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .prologue
    .line 2266
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 4

    .prologue
    .line 2266
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 3

    .prologue
    .line 2329
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    .line 2330
    .local v0, "result":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2331
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2333
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 7

    .prologue
    .line 2337
    new-instance v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V

    .line 2338
    .local v1, "result":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2339
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 2340
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2341
    or-int/lit8 v2, v2, 0x1

    .line 2343
    :cond_10
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->version_:J

    invoke-static {v1, v4, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->access$3202(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;J)J

    .line 2344
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 2345
    or-int/lit8 v2, v2, 0x2

    .line 2347
    :cond_1c
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_5f

    .line 2348
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->access$3302(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2352
    :goto_25
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2c

    .line 2353
    or-int/lit8 v2, v2, 0x4

    .line 2355
    :cond_2c
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->access$3402(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2356
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_39

    .line 2357
    or-int/lit8 v2, v2, 0x8

    .line 2359
    :cond_39
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->access$3502(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2360
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_46

    .line 2361
    or-int/lit8 v2, v2, 0x10

    .line 2363
    :cond_46
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->access$3602(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2364
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_53

    .line 2365
    or-int/lit8 v2, v2, 0x20

    .line 2367
    :cond_53
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->access$3702(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2368
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->access$3802(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;I)I

    .line 2369
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onBuilt()V

    .line 2370
    return-object v1

    .line 2350
    :cond_5f
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->access$3302(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    goto :goto_25
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3

    .prologue
    .line 2299
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 2300
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->version_:J

    .line 2301
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2302
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_43

    .line 2303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2307
    :goto_14
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2308
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2309
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2310
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2311
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2312
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2313
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2314
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2315
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2316
    return-object p0

    .line 2305
    :cond_43
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    goto :goto_14
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 2383
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .prologue
    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLanguagecode()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 2

    .prologue
    .line 2747
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2748
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getLanguagecode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2749
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2750
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .prologue
    .line 2387
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .prologue
    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .prologue
    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearSourcelanguage()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 2

    .prologue
    .line 2823
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2824
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getSourcelanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2825
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2826
    return-object p0
.end method

.method public clearTargetlanguage()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 2

    .prologue
    .line 2899
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2900
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTargetlanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2901
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2902
    return-object p0
.end method

.method public clearToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 2

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_11

    .line 2570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2571
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2575
    :goto_a
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2576
    return-object p0

    .line 2573
    :cond_11
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    goto :goto_a
.end method

.method public clearTotranslate()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 2

    .prologue
    .line 2671
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2672
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTotranslate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2673
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2674
    return-object p0
.end method

.method public clearVersion()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3

    .prologue
    .line 2490
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2491
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->version_:J

    .line 2492
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2493
    return-object p0
.end method

.method public clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 2

    .prologue
    .line 2374
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 2

    .prologue
    .line 2325
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 2

    .prologue
    .line 2321
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLanguagecode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2701
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2702
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_16

    move-object v0, v1

    .line 2703
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2705
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2706
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2707
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2711
    .end local v0    # "bs":Lcom/google/protobuf/ByteString;
    .end local v1    # "ref":Ljava/lang/Object;
    .end local v2    # "s":Ljava/lang/String;
    :cond_15
    :goto_15
    return-object v2

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_16
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v2, v1

    goto :goto_15
.end method

.method public getLanguagecodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2719
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2720
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2721
    check-cast v1, Ljava/lang/String;

    .line 2722
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2724
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2727
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getSourcelanguage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2777
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2778
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_16

    move-object v0, v1

    .line 2779
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2781
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2782
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2783
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2787
    .end local v0    # "bs":Lcom/google/protobuf/ByteString;
    .end local v1    # "ref":Ljava/lang/Object;
    .end local v2    # "s":Ljava/lang/String;
    :cond_15
    :goto_15
    return-object v2

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_16
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v2, v1

    goto :goto_15
.end method

.method public getSourcelanguageBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2795
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2796
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2797
    check-cast v1, Ljava/lang/String;

    .line 2798
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2800
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2803
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getTargetlanguage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2853
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2854
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_16

    move-object v0, v1

    .line 2855
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2857
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2858
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2859
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2863
    .end local v0    # "bs":Lcom/google/protobuf/ByteString;
    .end local v1    # "ref":Ljava/lang/Object;
    .end local v2    # "s":Ljava/lang/String;
    :cond_15
    :goto_15
    return-object v2

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_16
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v2, v1

    goto :goto_15
.end method

.method public getTargetlanguageBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2871
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2872
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2873
    check-cast v1, Ljava/lang/String;

    .line 2874
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2876
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2879
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 2

    .prologue
    .line 2509
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_10

    .line 2510
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-nez v0, :cond_d

    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    .line 2512
    :goto_c
    return-object v0

    .line 2510
    :cond_d
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    goto :goto_c

    .line 2512
    :cond_10
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    goto :goto_c
.end method

.method public getTokenBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 2

    .prologue
    .line 2582
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2583
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2584
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object v0
.end method

.method public getTokenOrBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;
    .registers 2

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_d

    .line 2591
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;

    .line 2593
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-nez v0, :cond_16

    .line 2594
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    goto :goto_c

    :cond_16
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    goto :goto_c
.end method

.method public getTotranslate()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2625
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2626
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_16

    move-object v0, v1

    .line 2627
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2629
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2630
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2631
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2635
    .end local v0    # "bs":Lcom/google/protobuf/ByteString;
    .end local v1    # "ref":Ljava/lang/Object;
    .end local v2    # "s":Ljava/lang/String;
    :cond_15
    :goto_15
    return-object v2

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_16
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v2, v1

    goto :goto_15
.end method

.method public getTotranslateBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2643
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2644
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2645
    check-cast v1, Ljava/lang/String;

    .line 2646
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2648
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2651
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getVersion()J
    .registers 3

    .prologue
    .line 2475
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->version_:J

    return-wide v0
.end method

.method public hasLanguagecode()Z
    .registers 3

    .prologue
    .line 2695
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSourcelanguage()Z
    .registers 3

    .prologue
    .line 2771
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTargetlanguage()Z
    .registers 3

    .prologue
    .line 2847
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasToken()Z
    .registers 3

    .prologue
    .line 2503
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTotranslate()Z
    .registers 3

    .prologue
    .line 2619
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasVersion()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2469
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .prologue
    .line 2277
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$2700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    const-class v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    .line 2278
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 2277
    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 2442
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 4
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .prologue
    .line 2409
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2438
    :goto_6
    return-object p0

    .line 2410
    :cond_7
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2411
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setVersion(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    .line 2413
    :cond_14
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2414
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeToken(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    .line 2416
    :cond_21
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTotranslate()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2417
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2418
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->access$3400(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2419
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2421
    :cond_36
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasLanguagecode()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2422
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2423
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->access$3500(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2424
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2426
    :cond_4b
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasSourcelanguage()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2427
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2428
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->access$3600(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2429
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2431
    :cond_60
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTargetlanguage()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2432
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2433
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->access$3700(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2434
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2436
    :cond_75
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->access$3900(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    .line 2437
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 7
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2449
    const/4 v2, 0x0

    .line 2451
    .local v2, "parsedMessage":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    :try_start_1
    sget-object v3, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-object v2, v0
    :try_end_b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_1f

    .line 2456
    if-eqz v2, :cond_10

    .line 2457
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    .line 2460
    :cond_10
    return-object p0

    .line 2452
    :catch_11
    move-exception v1

    .line 2453
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-object v2, v0

    .line 2454
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1f

    .line 2456
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1f
    move-exception v3

    if-eqz v2, :cond_25

    .line 2457
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    :cond_25
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2400
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    if-eqz v0, :cond_b

    .line 2401
    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p0

    .line 2404
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    :goto_a
    return-object p0

    .line 2403
    .restart local p0    # "this":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_a
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2266
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .prologue
    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2266
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2266
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2266
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeToken(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 4
    .param p1, "value"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_34

    .line 2550
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2552
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v1

    if-eq v0, v1, :cond_31

    .line 2553
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2554
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->newBuilder(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2558
    :goto_27
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2562
    :goto_2a
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2563
    return-object p0

    .line 2556
    :cond_31
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    goto :goto_27

    .line 2560
    :cond_34
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    goto :goto_2a
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 2924
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .prologue
    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .prologue
    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 4
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2379
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .prologue
    .line 2266
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 4

    .prologue
    .line 2266
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLanguagecode(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2735
    if-nez p1, :cond_8

    .line 2736
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2738
    :cond_8
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2739
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2740
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2741
    return-object p0
.end method

.method public setLanguagecodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2757
    if-nez p1, :cond_8

    .line 2758
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2760
    :cond_8
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2761
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2762
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2763
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 5
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 2392
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 5

    .prologue
    .line 2266
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 5

    .prologue
    .line 2266
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSourcelanguage(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2811
    if-nez p1, :cond_8

    .line 2812
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2814
    :cond_8
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2815
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2816
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2817
    return-object p0
.end method

.method public setSourcelanguageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2833
    if-nez p1, :cond_8

    .line 2834
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2836
    :cond_8
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2837
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2838
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2839
    return-object p0
.end method

.method public setTargetlanguage(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2887
    if-nez p1, :cond_8

    .line 2888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2890
    :cond_8
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2891
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2892
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2893
    return-object p0
.end method

.method public setTargetlanguageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2909
    if-nez p1, :cond_8

    .line 2910
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2912
    :cond_8
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2913
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2914
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2915
    return-object p0
.end method

.method public setToken(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 4
    .param p1, "builderForValue"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .prologue
    .line 2536
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2537
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2538
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2542
    :goto_d
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2543
    return-object p0

    .line 2540
    :cond_14
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    goto :goto_d
.end method

.method public setToken(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_18

    .line 2520
    if-nez p1, :cond_c

    .line 2521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2523
    :cond_c
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2524
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2528
    :goto_11
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2529
    return-object p0

    .line 2526
    :cond_18
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    goto :goto_11
.end method

.method public setTotranslate(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2659
    if-nez p1, :cond_8

    .line 2660
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2662
    :cond_8
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2663
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2664
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2665
    return-object p0
.end method

.method public setTotranslateBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2681
    if-nez p1, :cond_8

    .line 2682
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2684
    :cond_8
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2685
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2686
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2687
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 2919
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .prologue
    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setVersion(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 2481
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2482
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->version_:J

    .line 2483
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2484
    return-object p0
.end method
