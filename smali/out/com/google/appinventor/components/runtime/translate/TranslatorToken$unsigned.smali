.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "TranslatorToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsignedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/translate/TranslatorToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "unsigned"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

.field public static final GENERATION_FIELD_NUMBER:I = 0x3

.field public static final HUUID_FIELD_NUMBER:I = 0x1

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private generation_:J

.field private volatile huuid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private version_:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 785
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    .line 793
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 84
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 251
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->memoizedIsInitialized:B

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->huuid_:Ljava/lang/Object;

    .line 86
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->version_:J

    .line 87
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->generation_:J

    .line 88
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 11
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;-><init>()V

    .line 100
    const/4 v3, 0x0

    .line 102
    .local v3, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 104
    .local v5, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 105
    .local v1, "done":Z
    :cond_9
    :goto_9
    if-nez v1, :cond_5f

    .line 106
    :try_start_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 107
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_6a

    .line 112
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_9

    .line 114
    const/4 v1, 0x1

    goto :goto_9

    .line 109
    :sswitch_1a
    const/4 v1, 0x1

    .line 110
    goto :goto_9

    .line 119
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 120
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->bitField0_:I

    .line 121
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->huuid_:Ljava/lang/Object;
    :try_end_28
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_28} :catch_29
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_28} :catch_47
    .catchall {:try_start_b .. :try_end_28} :catchall_2f

    goto :goto_9

    .line 136
    .end local v0    # "bs":Lcom/google/protobuf/ByteString;
    .end local v4    # "tag":I
    :catch_29
    move-exception v2

    .line 137
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2a
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_2f

    .line 142
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_2f
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 143
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->makeExtensionsImmutable()V

    throw v6

    .line 125
    .restart local v4    # "tag":I
    :sswitch_3a
    :try_start_3a
    iget v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->bitField0_:I

    .line 126
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->version_:J
    :try_end_46
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3a .. :try_end_46} :catch_29
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_46} :catch_47
    .catchall {:try_start_3a .. :try_end_46} :catchall_2f

    goto :goto_9

    .line 138
    .end local v4    # "tag":I
    :catch_47
    move-exception v2

    .line 139
    .local v2, "e":Ljava/io/IOException;
    :try_start_48
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v6, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 140
    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_2f

    .line 130
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "tag":I
    :sswitch_52
    :try_start_52
    iget v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->bitField0_:I

    .line 131
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->generation_:J
    :try_end_5e
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_52 .. :try_end_5e} :catch_29
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5e} :catch_47
    .catchall {:try_start_52 .. :try_end_5e} :catchall_2f

    goto :goto_9

    .line 142
    .end local v4    # "tag":I
    :cond_5f
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 143
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->makeExtensionsImmutable()V

    .line 145
    return-void

    .line 107
    nop

    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_1a
        0xa -> :sswitch_1c
        0x10 -> :sswitch_3a
        0x18 -> :sswitch_52
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 251
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->memoizedIsInitialized:B

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "x1"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;)Lcom/google/protobuf/UnknownFieldSet;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->huuid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->huuid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;J)J
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .param p1, "x1"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->version_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;J)J
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .param p1, "x1"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->generation_:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;I)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .registers 1

    .prologue
    .line 789
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .prologue
    .line 148
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 1

    .prologue
    .line 414
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 2
    .param p0, "prototype"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    .prologue
    .line 417
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 389
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    .line 388
    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 396
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    .line 395
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .registers 2
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 356
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .registers 3
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 362
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .registers 2
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 402
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    .line 401
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .registers 3
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 409
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    .line 408
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 377
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    .line 376
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 384
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    .line 383
    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 366
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 372
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;",
            ">;"
        }
    .end annotation

    .prologue
    .line 803
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 299
    if-ne p1, p0, :cond_5

    .line 324
    :goto_4
    return v2

    .line 302
    :cond_5
    instance-of v4, p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    if-nez v4, :cond_e

    .line 303
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    :cond_e
    move-object v0, p1

    .line 305
    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    .line 307
    .local v0, "other":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    const/4 v1, 0x1

    .line 308
    .local v1, "result":Z
    if-eqz v1, :cond_8a

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasHuuid()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasHuuid()Z

    move-result v5

    if-ne v4, v5, :cond_8a

    move v1, v2

    .line 309
    :goto_1f
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasHuuid()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 310
    if-eqz v1, :cond_8c

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getHuuid()Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getHuuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    move v1, v2

    .line 313
    :cond_36
    :goto_36
    if-eqz v1, :cond_8e

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasVersion()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasVersion()Z

    move-result v5

    if-ne v4, v5, :cond_8e

    move v1, v2

    .line 314
    :goto_43
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 315
    if-eqz v1, :cond_90

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getVersion()J

    move-result-wide v4

    .line 316
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getVersion()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_90

    move v1, v2

    .line 318
    :cond_58
    :goto_58
    if-eqz v1, :cond_92

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasGeneration()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasGeneration()Z

    move-result v5

    if-ne v4, v5, :cond_92

    move v1, v2

    .line 319
    :goto_65
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasGeneration()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 320
    if-eqz v1, :cond_94

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getGeneration()J

    move-result-wide v4

    .line 321
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getGeneration()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_94

    move v1, v2

    .line 323
    :cond_7a
    :goto_7a
    if-eqz v1, :cond_96

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    move v1, v2

    :goto_87
    move v2, v1

    .line 324
    goto/16 :goto_4

    :cond_8a
    move v1, v3

    .line 308
    goto :goto_1f

    :cond_8c
    move v1, v3

    .line 311
    goto :goto_36

    :cond_8e
    move v1, v3

    .line 313
    goto :goto_43

    :cond_90
    move v1, v3

    .line 316
    goto :goto_58

    :cond_92
    move v1, v3

    .line 318
    goto :goto_65

    :cond_94
    move v1, v3

    .line 321
    goto :goto_7a

    :cond_96
    move v1, v3

    .line 323
    goto :goto_87
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .registers 2

    .prologue
    .line 812
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public getGeneration()J
    .registers 3

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->generation_:J

    return-wide v0
.end method

.method public getHuuid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 179
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->huuid_:Ljava/lang/Object;

    .line 180
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 181
    check-cast v1, Ljava/lang/String;

    .line 189
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 183
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 185
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 187
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->huuid_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 189
    goto :goto_8
.end method

.method public getHuuidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 201
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->huuid_:Ljava/lang/Object;

    .line 202
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 203
    check-cast v1, Ljava/lang/String;

    .line 204
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 206
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->huuid_:Ljava/lang/Object;

    .line 209
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;",
            ">;"
        }
    .end annotation

    .prologue
    .line 808
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 276
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->memoizedSize:I

    .line 277
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 293
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_8
    return v1

    .line 279
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_9
    const/4 v0, 0x0

    .line 280
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 281
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->huuid_:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 283
    :cond_17
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 284
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->version_:J

    .line 285
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 287
    :cond_24
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_33

    .line 288
    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->generation_:J

    .line 289
    invoke-static {v2, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 291
    :cond_33
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 292
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->memoizedSize:I

    move v1, v0

    .line 293
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_8
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()J
    .registers 3

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->version_:J

    return-wide v0
.end method

.method public hasGeneration()Z
    .registers 3

    .prologue
    .line 242
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->bitField0_:I

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

.method public hasHuuid()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 169
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasVersion()Z
    .registers 3

    .prologue
    .line 223
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->bitField0_:I

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

.method public hashCode()I
    .registers 5

    .prologue
    .line 329
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->memoizedHashCode:I

    if-eqz v1, :cond_7

    .line 330
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->memoizedHashCode:I

    .line 350
    :goto_6
    return v0

    .line 332
    :cond_7
    const/16 v0, 0x29

    .line 333
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 334
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasHuuid()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 335
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x1

    .line 336
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getHuuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 338
    :cond_29
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 339
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x2

    .line 340
    mul-int/lit8 v1, v0, 0x35

    .line 341
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getVersion()J

    move-result-wide v2

    .line 340
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int v0, v1, v2

    .line 343
    :cond_3f
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasGeneration()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 344
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x3

    .line 345
    mul-int/lit8 v1, v0, 0x35

    .line 346
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getGeneration()J

    move-result-wide v2

    .line 345
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int v0, v1, v2

    .line 348
    :cond_55
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 349
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->memoizedHashCode:I

    goto :goto_6
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .prologue
    .line 153
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    const-class v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 153
    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 253
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->memoizedIsInitialized:B

    .line 254
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_6

    .line 258
    :goto_5
    return v1

    .line 255
    :cond_6
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_5

    .line 257
    :cond_a
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->memoizedIsInitialized:B

    goto :goto_5
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 2

    .prologue
    .line 412
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->newBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 4
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 427
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V

    .line 428
    .local v0, "builder":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 420
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    if-ne p0, v0, :cond_b

    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;-><init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;-><init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V

    .line 421
    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    goto :goto_a
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 263
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_d

    .line 264
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->huuid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 266
    :cond_d
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_18

    .line 267
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->version_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 269
    :cond_18
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    .line 270
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->generation_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 272
    :cond_25
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 273
    return-void
.end method
