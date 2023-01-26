.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "TranslatorToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/translate/TranslatorToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

.field public static final GENERATION_FIELD_NUMBER:I = 0x3

.field public static final KEYID_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x5

.field public static final UNSIGNED_FIELD_NUMBER:I = 0x4

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private generation_:J

.field private keyid_:J

.field private memoizedIsInitialized:B

.field private signature_:Lcom/google/protobuf/ByteString;

.field private unsigned_:Lcom/google/protobuf/ByteString;

.field private version_:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1608
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1616
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x1

    .line 877
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 1038
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedIsInitialized:B

    .line 878
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->version_:J

    .line 879
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->keyid_:J

    .line 880
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->generation_:J

    .line 881
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 882
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->signature_:Lcom/google/protobuf/ByteString;

    .line 883
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
    .line 894
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;-><init>()V

    .line 895
    const/4 v2, 0x0

    .line 897
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 899
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 900
    .local v0, "done":Z
    :cond_9
    :goto_9
    if-nez v0, :cond_79

    .line 901
    :try_start_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 902
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_84

    .line 907
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 909
    const/4 v0, 0x1

    goto :goto_9

    .line 904
    :sswitch_1a
    const/4 v0, 0x1

    .line 905
    goto :goto_9

    .line 914
    :sswitch_1c
    iget v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    .line 915
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->version_:J
    :try_end_28
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_28} :catch_29
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_28} :catch_47
    .catchall {:try_start_b .. :try_end_28} :catchall_2f

    goto :goto_9

    .line 940
    .end local v3    # "tag":I
    :catch_29
    move-exception v1

    .line 941
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2a
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_2f

    .line 946
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_2f
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 947
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->makeExtensionsImmutable()V

    throw v5

    .line 919
    .restart local v3    # "tag":I
    :sswitch_3a
    :try_start_3a
    iget v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    .line 920
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->keyid_:J
    :try_end_46
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3a .. :try_end_46} :catch_29
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_46} :catch_47
    .catchall {:try_start_3a .. :try_end_46} :catchall_2f

    goto :goto_9

    .line 942
    .end local v3    # "tag":I
    :catch_47
    move-exception v1

    .line 943
    .local v1, "e":Ljava/io/IOException;
    :try_start_48
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v5, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 944
    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_2f

    .line 924
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "tag":I
    :sswitch_52
    :try_start_52
    iget v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    .line 925
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->generation_:J

    goto :goto_9

    .line 929
    :sswitch_5f
    iget v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    .line 930
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    goto :goto_9

    .line 934
    :sswitch_6c
    iget v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    .line 935
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->signature_:Lcom/google/protobuf/ByteString;
    :try_end_78
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_52 .. :try_end_78} :catch_29
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_78} :catch_47
    .catchall {:try_start_52 .. :try_end_78} :catchall_2f

    goto :goto_9

    .line 946
    .end local v3    # "tag":I
    :cond_79
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 947
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->makeExtensionsImmutable()V

    .line 949
    return-void

    .line 902
    nop

    :sswitch_data_84
    .sparse-switch
        0x0 -> :sswitch_1a
        0x8 -> :sswitch_1c
        0x10 -> :sswitch_3a
        0x18 -> :sswitch_52
        0x22 -> :sswitch_5f
        0x2a -> :sswitch_6c
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
    .line 869
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    .line 875
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 1038
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedIsInitialized:B

    .line 876
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "x1"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;

    .prologue
    .line 869
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1600()Z
    .registers 1

    .prologue
    .line 869
    sget-boolean v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;J)J
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .param p1, "x1"    # J

    .prologue
    .line 869
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->version_:J

    return-wide p1
.end method

.method static synthetic access$1902(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;J)J
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .param p1, "x1"    # J

    .prologue
    .line 869
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->keyid_:J

    return-wide p1
.end method

.method static synthetic access$2002(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;J)J
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .param p1, "x1"    # J

    .prologue
    .line 869
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->generation_:J

    return-wide p1
.end method

.method static synthetic access$2102(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->signature_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;I)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .param p1, "x1"    # I

    .prologue
    .line 869
    iput p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    return p1
.end method

.method static synthetic access$2400(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/protobuf/UnknownFieldSet;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 1

    .prologue
    .line 1612
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .prologue
    .line 952
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 1

    .prologue
    .line 1235
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 2
    .param p0, "prototype"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .prologue
    .line 1238
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1209
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1210
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1209
    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1216
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1217
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1216
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 2
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1177
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 3
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1183
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 2
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1222
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1223
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1222
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 3
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1229
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1230
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1229
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1197
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1198
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1197
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1204
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1205
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1204
    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1187
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1193
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1626
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1101
    if-ne p1, p0, :cond_5

    .line 1136
    :goto_4
    return v2

    .line 1104
    :cond_5
    instance-of v4, p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-nez v4, :cond_e

    .line 1105
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    :cond_e
    move-object v0, p1

    .line 1107
    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1109
    .local v0, "other":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    const/4 v1, 0x1

    .line 1110
    .local v1, "result":Z
    if-eqz v1, :cond_d0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasVersion()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasVersion()Z

    move-result v5

    if-ne v4, v5, :cond_d0

    move v1, v2

    .line 1111
    :goto_1f
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1112
    if-eqz v1, :cond_d3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getVersion()J

    move-result-wide v4

    .line 1113
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getVersion()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_d3

    move v1, v2

    .line 1115
    :cond_34
    :goto_34
    if-eqz v1, :cond_d6

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasKeyid()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasKeyid()Z

    move-result v5

    if-ne v4, v5, :cond_d6

    move v1, v2

    .line 1116
    :goto_41
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasKeyid()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 1117
    if-eqz v1, :cond_d9

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getKeyid()J

    move-result-wide v4

    .line 1118
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getKeyid()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_d9

    move v1, v2

    .line 1120
    :cond_56
    :goto_56
    if-eqz v1, :cond_dc

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasGeneration()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasGeneration()Z

    move-result v5

    if-ne v4, v5, :cond_dc

    move v1, v2

    .line 1121
    :goto_63
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasGeneration()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 1122
    if-eqz v1, :cond_de

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getGeneration()J

    move-result-wide v4

    .line 1123
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getGeneration()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_de

    move v1, v2

    .line 1125
    :cond_78
    :goto_78
    if-eqz v1, :cond_e0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasUnsigned()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasUnsigned()Z

    move-result v5

    if-ne v4, v5, :cond_e0

    move v1, v2

    .line 1126
    :goto_85
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasUnsigned()Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 1127
    if-eqz v1, :cond_e2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getUnsigned()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1128
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getUnsigned()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e2

    move v1, v2

    .line 1130
    :cond_9c
    :goto_9c
    if-eqz v1, :cond_e4

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasSignature()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasSignature()Z

    move-result v5

    if-ne v4, v5, :cond_e4

    move v1, v2

    .line 1131
    :goto_a9
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasSignature()Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 1132
    if-eqz v1, :cond_e6

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1133
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e6

    move v1, v2

    .line 1135
    :cond_c0
    :goto_c0
    if-eqz v1, :cond_e8

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e8

    move v1, v2

    :goto_cd
    move v2, v1

    .line 1136
    goto/16 :goto_4

    :cond_d0
    move v1, v3

    .line 1110
    goto/16 :goto_1f

    :cond_d3
    move v1, v3

    .line 1113
    goto/16 :goto_34

    :cond_d6
    move v1, v3

    .line 1115
    goto/16 :goto_41

    :cond_d9
    move v1, v3

    .line 1118
    goto/16 :goto_56

    :cond_dc
    move v1, v3

    .line 1120
    goto :goto_63

    :cond_de
    move v1, v3

    .line 1123
    goto :goto_78

    :cond_e0
    move v1, v3

    .line 1125
    goto :goto_85

    :cond_e2
    move v1, v3

    .line 1128
    goto :goto_9c

    :cond_e4
    move v1, v3

    .line 1130
    goto :goto_a9

    :cond_e6
    move v1, v3

    .line 1133
    goto :goto_c0

    :cond_e8
    move v1, v3

    .line 1135
    goto :goto_cd
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 2

    .prologue
    .line 1635
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public getGeneration()J
    .registers 3

    .prologue
    .line 1005
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->generation_:J

    return-wide v0
.end method

.method public getKeyid()J
    .registers 3

    .prologue
    .line 990
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->keyid_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1631
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1069
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedSize:I

    .line 1070
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 1095
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_9
    return v1

    .line 1072
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_a
    const/4 v0, 0x0

    .line 1073
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 1074
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->version_:J

    .line 1075
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1077
    :cond_18
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_25

    .line 1078
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->keyid_:J

    .line 1079
    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1081
    :cond_25
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_33

    .line 1082
    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->generation_:J

    .line 1083
    invoke-static {v2, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1085
    :cond_33
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 1086
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 1087
    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1089
    :cond_42
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_52

    .line 1090
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->signature_:Lcom/google/protobuf/ByteString;

    .line 1091
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1093
    :cond_52
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1094
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedSize:I

    move v1, v0

    .line 1095
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_9
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUnsigned()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()J
    .registers 3

    .prologue
    .line 975
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->version_:J

    return-wide v0
.end method

.method public hasGeneration()Z
    .registers 3

    .prologue
    .line 999
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

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

.method public hasKeyid()Z
    .registers 3

    .prologue
    .line 984
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

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

.method public hasSignature()Z
    .registers 3

    .prologue
    .line 1029
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

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

.method public hasUnsigned()Z
    .registers 3

    .prologue
    .line 1014
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

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

.method public hasVersion()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 969
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 1141
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedHashCode:I

    if-eqz v1, :cond_7

    .line 1142
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedHashCode:I

    .line 1171
    :goto_6
    return v0

    .line 1144
    :cond_7
    const/16 v0, 0x29

    .line 1145
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 1146
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1147
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x1

    .line 1148
    mul-int/lit8 v1, v0, 0x35

    .line 1149
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getVersion()J

    move-result-wide v2

    .line 1148
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int v0, v1, v2

    .line 1151
    :cond_29
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasKeyid()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1152
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x2

    .line 1153
    mul-int/lit8 v1, v0, 0x35

    .line 1154
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getKeyid()J

    move-result-wide v2

    .line 1153
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int v0, v1, v2

    .line 1156
    :cond_3f
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasGeneration()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1157
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x3

    .line 1158
    mul-int/lit8 v1, v0, 0x35

    .line 1159
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getGeneration()J

    move-result-wide v2

    .line 1158
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int v0, v1, v2

    .line 1161
    :cond_55
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasUnsigned()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 1162
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x4

    .line 1163
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getUnsigned()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1165
    :cond_6b
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasSignature()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1166
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x5

    .line 1167
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1169
    :cond_81
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1170
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedHashCode:I

    goto/16 :goto_6
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .prologue
    .line 957
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$1300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    const-class v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 958
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 957
    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1040
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedIsInitialized:B

    .line 1041
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_6

    .line 1045
    :goto_5
    return v1

    .line 1042
    :cond_6
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_5

    .line 1044
    :cond_a
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedIsInitialized:B

    goto :goto_5
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 2

    .prologue
    .line 1233
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->newBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 4
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 1248
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V

    .line 1249
    .local v0, "builder":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 869
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1241
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-ne p0, v0, :cond_b

    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;-><init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;-><init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V

    .line 1242
    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    goto :goto_a
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1050
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_e

    .line 1051
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->version_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1053
    :cond_e
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_19

    .line 1054
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->keyid_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1056
    :cond_19
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_25

    .line 1057
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->generation_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1059
    :cond_25
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_32

    .line 1060
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1062
    :cond_32
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_40

    .line 1063
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->signature_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1065
    :cond_40
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1066
    return-void
.end method
